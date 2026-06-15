enum InputError: Error { case negative }

func validate(_ n: Int) throws ->  String {
	if n < 0 { throw InputError.negative }
	return "ok: \(n)"
}

do {
	let result = try validate(-1)
	print(result)
} catch {
	print("error")
}

let maybe = try? validate(1)
print(maybe ?? "nil")