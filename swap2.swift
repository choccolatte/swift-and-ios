func swapTwo<T>(_ a: inout T, _ b: inout T) {
	let tmp = a
	a = b
	b = tmp
}

var x = 1, y = 2
swapTwo(&x, &y)
print(x)
print(y)