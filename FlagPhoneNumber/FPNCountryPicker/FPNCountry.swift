import Foundation

public struct FPNCountry {
	public var code: String?
	public var name: String?
	public var phoneCode: String?
	public var flag: UIImage?
	
	init(code: String?, name: String?, phoneCode: String?) {
		self.code = code
		self.name = name
		self.phoneCode = phoneCode
		
		if let code = code, let flag = UIImage(named: code, in: Bundle.FlagIcons, compatibleWith: nil) {
			self.flag = flag
		} else {
			self.flag = UIImage(named: "unknown", in: Bundle.FlagIcons, compatibleWith: nil)
		}
	}
}
