let scores = [50, 44, 56, 76, 87, 98]
let passed = scores.filter{ $0 >= 75 }
let curved = passed.map{ $0 + 5 }
let average = curved.reduce(0, +) / curved.count

print(passed)
print(curved)
print("Average: \(average)")