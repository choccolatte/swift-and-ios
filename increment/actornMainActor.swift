import Dispatch

actor SafeCounter {
	private var value = 0
	func increment() { value += 1 }
	func get() -> Int { value }
}

let counter = SafeCounter()
print("Start")
let sem = DispatchSemaphore(value: 0)
Task {
	await withTaskGroup(of: Void.self) { group in
		for _ in 0..<1000 {
			group.addTask { await counter.increment() }
		}
	}

	print("Final: \(await counter.get())")
	sem.signal()
}

sem.wait()
print("Done")