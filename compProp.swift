extension String {
	var isBlank: Bool { trimmingCharacters(in: .whitespacesAndNewlines).isEmpty }
	func repeated(_ n: Int) -> String { String(repeating: self, count: n) }
}

print(" ".isBlank) // true
print("Hi".repeated(3)) // HiHiHi