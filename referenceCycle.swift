class Person {
	let name: String
	var apartment: Apartment?
	init(name: String) { self.name = name }
	deinit { print("Person deinit" ) }
}

class Apartment {
	let unit: String
	weak var tenant: Person? // weak breaks the cycle
	init(unit: String) { "Apartment deinit" }
	deinit { print("Apartment deinit" ) }
}

do {
	var john: Person? = Person(name: "John")
	var unit: Apartment? = Apartment(unit: "4A")
	john!.apartment = unit
	unit!.tenant = john
	john = nil // person deinit
	unit = nil // apartment deinit 
}