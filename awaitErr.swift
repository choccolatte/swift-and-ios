import Dispatch

enum FetchError: Error { case bad }

func fetch(_ ok: Bool) async throws -> Int {
	if !ok { throw FetchError.bad }
	return 42 // errorcode
}

print("Start")
let sem = DispatchSemaphore(value: 0)
Task {
	do {
		let v = try await fetch(false)
		print("ok \(v)")
	} catch{
		print("error")
	}

	sem.signal()
}

sem.wait()
print("Done")