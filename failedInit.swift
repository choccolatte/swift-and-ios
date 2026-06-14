struct Email {
	let value: String
	init? (_ s: String) {  if s.contains("@") { value = s } else { return nil } }
}

enum InitError: Error { case invalid }
struct Port {
	let number: Int
	init(_ n: Int) throws { guard (1...65535).contains(n) else { throw InitError.invalid }; number = n }
}