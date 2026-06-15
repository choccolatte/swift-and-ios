import Dispatch

func slowWork() async throws {
	for i in 1...5 {
		try await Task.sleep(nanoseconds: 300_000_000) // 0.3s
		try Task.checkCancellation()
		print("Step ", i)
	}
}

let sem = DispatchSemaphore(value: 0)
let t = Task {
	do { try await slowWork() } catch { print("Cancelled") }
	sem.signal()
}

DispatchQueue.global().asyncAfter(deadline: .now() + 0.7) {
	t.cancel()
}

sem.wait()