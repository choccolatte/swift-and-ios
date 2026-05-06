let greet = "hello"
var name = "swift"
print("\(greet), \(name)")

// a func

func addi(_ a: Int, _ b: Int){
	return a * b
}

print(addi(5, 20)) // 100

let score = 90
if score >=90{
	print("A")
} else if score >= 80{
	print("B")
} else {
	print("C or lower")
}