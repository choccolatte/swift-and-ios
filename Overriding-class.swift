class Base {
	class func greet() { print("Base") }
	static func ping() { print("Base ping") }
}

class Sub: Base {
	override classs func greet() { print("Sub") }
	// static func cannot be overridden
}

Base.greet()
Sub.greet()
Base.ping()