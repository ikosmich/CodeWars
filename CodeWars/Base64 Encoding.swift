extension String {
	public var toBase64: String {
		return String(Data(self.utf8).base64EncodedString())
	}
	public var fromBase64: String {
		var paddingString: String {
			if self.count % 4 != 0 {
				return String(repeating: "=", count: 4 - (self.count % 4))
			} else {
				return ""
			}
		}
		if let base64data = Data(base64Encoded: self+paddingString) {
			return String(data: base64data, encoding: .utf8)!
			} else {
				return ""
			}
		}
}