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