struct Point { var x: Int; var y: Int }
class Counter { var value = 0 }

var p1 = Point(x: 1, y: 2), p2 = p1 // copy
p2.x = 9 // p1.x remains 1

let c1 = Counter(), c2 = c1 // same instance
c2.value = 7 // c1.value is 7