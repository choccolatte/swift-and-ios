import SwiftUI
import Combine

class CounterModel: ObservableObject {
	@Published var count = 0
	func increment() { count += 1 }
}