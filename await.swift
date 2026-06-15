import Dispatch

func fetch(_ id: Int) async -> Int { id * 100 }

print("Start")
let sem = DispatchSemaphore(value: 0)
Task {
	async let a = fetch(1)
	async let b = fetch(5)
	let total = await( a + b )
	print("Total \(total)" )
	sem.signal()
}

sem.wait()
print("Done")