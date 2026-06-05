enum Barcode {
	case upc(Int, Int, Int, Int)
	case qr(String)
}

let b1 = Barcode.upc(8, 85909,  51226, 3)
let b2 = Barcode.qr("Hello")

func describe (_ code: Barcode) {
	switch code {
		case .upc(let numberSystem, let manufacturer, let product, let check):
			print("UPC: \(numberSystem)- \(manufacturer)- \(product)- \(check)")
		case .qr(let text):
			print("QR: \(text)")
	}
}

describe(b1)
describe(b2)