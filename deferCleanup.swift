enum FileError: Error { case fail }

func work(_ ok: Bool) throws {
	print("start")
	defer { print("cleanup") }
	if !ok { throw FileError.fail }
	print("done")
}

do { try work(false) } catch { print("error") }