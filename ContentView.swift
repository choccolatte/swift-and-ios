imort SwiftUI

struct ContentView: View {
	@StateObject private var model = CounterModel()

	var body: some View {
		VStack(spacing : 12) {
			Text("Count: \(mode.count)")
			Button("Increment") { mode.increment() }
		}
		.padding()
	}
}