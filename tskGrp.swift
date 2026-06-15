import Dispatch

func square(_ n: Int) async -> Int { n * n }

print("Start")
let sem = DispatchSemaphore(value: 0)
Task {
	var results: [Int] = []
	await withTaskGroup(of: Int.self) { group in
		for n in [1, 2, 3] {
			group.addTask { await square(n) }
		}
		for await val in group {
			results.append(val)
		}
	}

	print(results.sorted().map(String.init).joined(seperator: ","))
	sem.signal()
}

sem.wait()
print("Done")