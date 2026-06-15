import Dispatch

print("Start")
let group = DispatchGroup()
group.enter()
DispatchQueue.global().async {
	print("Background work")
	group.leave()
}

group.wait()
print("Done")