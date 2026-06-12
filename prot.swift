protocol Describable { func describe() -> String }

extension Describable {
	func describe() -> String { "(no description)" }
}

struct User: Describable { let name: String }

struct Car: Describable {
	let model: String
	func describe() -> String { "CAr: \(model)" }
}

let u = User(name: "Morgan")
let c = Car(model: "Swift")

print(u.describe())
print(c.describe())