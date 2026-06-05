func greet (name: String?) {
	guard let name = name else {
		return
	}

	print("Hello, \(name)")
}