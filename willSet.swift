class Player {
	var score: Int = 0 {
		willSet { print("About to set to \(newValue)" ) }
		didSet { print("Changed from \(oldValue) to \(score)" ) }
	}
}

let p = Player()
p.score = 100