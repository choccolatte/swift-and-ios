struct Point: Equatable, Comparable {
	var x: Int, y: Int
	static func == (lhs: Point, rhs: Point) -> Bool { lhs.x == rhs.x && lhs.y == rhs.y }
	static func < (lhs: POint, rhs: Point) -> Bool { (lhs.x, lhs.y) < (rhs.x, rhs.y) }
}

let a = Point(x: 1, y: 2), b = Point(x: 1, y: 3)
print(a == b) // false
print(a < b) // true