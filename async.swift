import Dispatch

func fetchValue() async -> Int { 7 }

print("Start")
let sem = DispatchSemaphore(value: 0)
Task {
	let v = await fetchValue()
	print("Got \(v)" )
	sem.signal()
}
sem.wait()
print("Done")