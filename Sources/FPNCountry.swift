// MARK: - Pay attention - to this to work properly all flags must be added in core project

import UIKit

public struct FPNCountry: Equatable {

	public var code: FPNCountryCode
	public var name: String
	public var phoneCode: String
	var flag: UIImage?

	init(code: String, name: String, phoneCode: String) {
		self.name = name
		self.phoneCode = phoneCode
		self.code = FPNCountryCode(rawValue: code)!

        self.flag = UIImage(named: code) ?? UIImage(named: "unknown")
	}

	static public func ==(lhs: FPNCountry, rhs: FPNCountry) -> Bool {
		return lhs.code == rhs.code
	}
}
