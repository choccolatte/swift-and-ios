class Person {
	let name: String
	let age: Int
	init(name: String, age: Int) {
		self.name = name, self.age = age
	}

	convenience init(name: String) { self.init(name: name, age: 0) }
}

let p1 = Person(name: "Kush", age: 30)
let p2 = Person(name: "Eliza")