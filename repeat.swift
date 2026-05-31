var attempts = 0
repeat{
	attempts += 1
	print("Attempt no. #\(attempts)")
}
while attempts <= 10

// runs at least once
var n = 0
repeat {
	print("This runs once.")
} while n > 0