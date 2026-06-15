class Loader {
	var onComplete: (() -> Void)?
	func load() {
		// simulate async completion
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
			guard let self = self else { return }
			print("Finished: \(self)" )
			self.onComplete()
		}
	} 

	deinit{ print("Loader deinit") }
}

do {
	let loader = Loader()
	loader.onComplete =  { print("done callback" ) }
	loader.load()
}

// loader can be deallocated if nothing else references it
