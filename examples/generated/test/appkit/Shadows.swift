import AppKit

public enum Shadows {
  public static let elevation1 = NSShadow(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5), offset: NSSize(width: 0, height: -1), blur: 2)
  public static let elevation2 = NSShadow(color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5), offset: NSSize(width: 0, height: -2), blur: 4)
  public static let elevation3 = NSShadow(color: Colors.grey900, offset: NSSize(width: 0, height: -3), blur: 9)
}

extension NSShadow {
  convenience init(color: NSColor, offset: NSSize, blur: CGFloat) {
    self.init()

    shadowColor = color
    shadowOffset = offset
    shadowBlurRadius = blur
  }
}
