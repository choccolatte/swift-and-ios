var attempts = 0
var success = false

while !success && attempts < 5{
	attempts += 1
	print("Checking attempt: #\(attempts)")

	if attempts == 3{
		success = true
		print("Success")
	}
}