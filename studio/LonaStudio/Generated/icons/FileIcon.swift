import AppKit
import Foundation

private class IconTextFileVector: NSBox {
  public var foldFill = #colorLiteral(red: 0.933333333333, green: 0.933333333333, blue: 0.933333333333, alpha: 1)
  public var foldStroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
  public var line1Stroke = #colorLiteral(red: 0.592156862745, green: 0.592156862745, blue: 0.592156862745, alpha: 1)
  public var line2Stroke = #colorLiteral(red: 0.592156862745, green: 0.592156862745, blue: 0.592156862745, alpha: 1)
  public var line3Stroke = #colorLiteral(red: 0.592156862745, green: 0.592156862745, blue: 0.592156862745, alpha: 1)
  public var line4Stroke = #colorLiteral(red: 0.592156862745, green: 0.592156862745, blue: 0.592156862745, alpha: 1)
  public var outlineFill = #colorLiteral(red: 0.847058823529, green: 0.847058823529, blue: 0.847058823529, alpha: 1)
  public var outlineStroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)

  override var isFlipped: Bool {
    return true
  }

  override func draw(_ dirtyRect: CGRect) {
    super.draw(dirtyRect)

    let viewBox = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 24, height: 24))
    let croppedRect = viewBox.size.crop(within: bounds.size)
    let scale = croppedRect.width / viewBox.width
    func transform(point: CGPoint) -> CGPoint {
      return CGPoint(x: point.x * scale + croppedRect.minX, y: point.y * scale + croppedRect.minY)
    }
    let outline = NSBezierPath()
    outline.move(to: transform(point: CGPoint(x: 5.5, y: 2.5)))
    outline.line(to: transform(point: CGPoint(x: 12.6715729, y: 2.5)))
    outline.curve(
      to: transform(point: CGPoint(x: 14.0857864, y: 3.08578644)),
      controlPoint1: transform(point: CGPoint(x: 13.2020059, y: 2.5)),
      controlPoint2: transform(point: CGPoint(x: 13.7107137, y: 2.71071368)))
    outline.line(to: transform(point: CGPoint(x: 17.9142136, y: 6.91421356)))
    outline.curve(
      to: transform(point: CGPoint(x: 18.5, y: 8.32842712)),
      controlPoint1: transform(point: CGPoint(x: 18.2892863, y: 7.28928632)),
      controlPoint2: transform(point: CGPoint(x: 18.5, y: 7.79799415)))
    outline.line(to: transform(point: CGPoint(x: 18.5, y: 20.5)))
    outline.curve(
      to: transform(point: CGPoint(x: 17.5, y: 21.5)),
      controlPoint1: transform(point: CGPoint(x: 18.5, y: 21.0522847)),
      controlPoint2: transform(point: CGPoint(x: 18.0522847, y: 21.5)))
    outline.line(to: transform(point: CGPoint(x: 5.5, y: 21.5)))
    outline.curve(
      to: transform(point: CGPoint(x: 4.5, y: 20.5)),
      controlPoint1: transform(point: CGPoint(x: 4.94771525, y: 21.5)),
      controlPoint2: transform(point: CGPoint(x: 4.5, y: 21.0522847)))
    outline.line(to: transform(point: CGPoint(x: 4.5, y: 3.5)))
    outline.curve(
      to: transform(point: CGPoint(x: 5.5, y: 2.5)),
      controlPoint1: transform(point: CGPoint(x: 4.5, y: 2.94771525)),
      controlPoint2: transform(point: CGPoint(x: 4.94771525, y: 2.5)))
    outline.close()
    outlineFill.setFill()
    outlineStroke.setStroke()
    outline.fill()
    outline.lineWidth = 1 * scale
    outline.lineCapStyle = .buttLineCapStyle
    outline.stroke()
    let highlight = NSBezierPath()
    highlight.move(to: transform(point: CGPoint(x: 5.5, y: 20.5)))
    highlight.line(to: transform(point: CGPoint(x: 17.5, y: 20.5)))
    #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2).setStroke()
    highlight.lineWidth = 1 * scale
    highlight.lineCapStyle = .squareLineCapStyle
    highlight.stroke()
    let fold = NSBezierPath()
    fold.move(to: transform(point: CGPoint(x: 17.0857864, y: 8.5)))
    fold.line(to: transform(point: CGPoint(x: 13.5, y: 8.5)))
    fold.curve(
      to: transform(point: CGPoint(x: 12.5, y: 7.5)),
      controlPoint1: transform(point: CGPoint(x: 12.9477153, y: 8.5)),
      controlPoint2: transform(point: CGPoint(x: 12.5, y: 8.05228475)))
    fold.line(to: transform(point: CGPoint(x: 12.5, y: 3.91421356)))
    fold.curve(
      to: transform(point: CGPoint(x: 13.5, y: 2.91421356)),
      controlPoint1: transform(point: CGPoint(x: 12.5, y: 3.36192881)),
      controlPoint2: transform(point: CGPoint(x: 12.9477153, y: 2.91421356)))
    fold.curve(
      to: transform(point: CGPoint(x: 14.2071068, y: 3.20710678)),
      controlPoint1: transform(point: CGPoint(x: 13.7652165, y: 2.91421356)),
      controlPoint2: transform(point: CGPoint(x: 14.0195704, y: 3.0195704)))
    fold.line(to: transform(point: CGPoint(x: 17.7928932, y: 6.79289322)))
    fold.curve(
      to: transform(point: CGPoint(x: 17.7928932, y: 8.20710678)),
      controlPoint1: transform(point: CGPoint(x: 18.1834175, y: 7.18341751)),
      controlPoint2: transform(point: CGPoint(x: 18.1834175, y: 7.81658249)))
    fold.curve(
      to: transform(point: CGPoint(x: 17.0857864, y: 8.5)),
      controlPoint1: transform(point: CGPoint(x: 17.6053568, y: 8.39464316)),
      controlPoint2: transform(point: CGPoint(x: 17.3510029, y: 8.5)))
    fold.close()
    foldFill.setFill()
    foldStroke.setStroke()
    fold.fill()
    fold.lineWidth = 1 * scale
    fold.lineCapStyle = .buttLineCapStyle
    fold.stroke()
    let line1 = NSBezierPath()
    line1.move(to: transform(point: CGPoint(x: 7.5, y: 11.5)))
    line1.line(to: transform(point: CGPoint(x: 15.5, y: 11.5)))
    line1Stroke.setStroke()
    line1.lineWidth = 1 * scale
    line1.lineCapStyle = .squareLineCapStyle
    line1.stroke()
    let line2 = NSBezierPath()
    line2.move(to: transform(point: CGPoint(x: 7.5, y: 13.5)))
    line2.line(to: transform(point: CGPoint(x: 15.5, y: 13.5)))
    line2Stroke.setStroke()
    line2.lineWidth = 1 * scale
    line2.lineCapStyle = .squareLineCapStyle
    line2.stroke()
    let line3 = NSBezierPath()
    line3.move(to: transform(point: CGPoint(x: 7.5, y: 15.5)))
    line3.line(to: transform(point: CGPoint(x: 15.5, y: 15.5)))
    line3Stroke.setStroke()
    line3.lineWidth = 1 * scale
    line3.lineCapStyle = .squareLineCapStyle
    line3.stroke()
    let line4 = NSBezierPath()
    line4.move(to: transform(point: CGPoint(x: 7.5, y: 17.5)))
    line4.line(to: transform(point: CGPoint(x: 15.5, y: 17.5)))
    line4Stroke.setStroke()
    line4.lineWidth = 1 * scale
    line4.lineCapStyle = .squareLineCapStyle
    line4.stroke()
  }
}


// MARK: - FileIcon

public class FileIcon: NSBox {

  // MARK: Lifecycle

  public init(selected: Bool) {
    self.selected = selected

    super.init(frame: .zero)

    setUpViews()
    setUpConstraints()

    update()
  }

  public convenience init() {
    self.init(selected: false)
  }

  public required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: Public

  public var selected: Bool { didSet { update() } }

  // MARK: Private

  private var vectorGraphicView = IconTextFileVector()

  private func setUpViews() {
    boxType = .custom
    borderType = .noBorder
    contentViewMargins = .zero
    vectorGraphicView.boxType = .custom
    vectorGraphicView.borderType = .noBorder
    vectorGraphicView.contentViewMargins = .zero

    addSubview(vectorGraphicView)
  }

  private func setUpConstraints() {
    translatesAutoresizingMaskIntoConstraints = false
    vectorGraphicView.translatesAutoresizingMaskIntoConstraints = false

    let vectorGraphicViewHeightAnchorParentConstraint = vectorGraphicView
      .heightAnchor
      .constraint(lessThanOrEqualTo: heightAnchor)
    let vectorGraphicViewLeadingAnchorConstraint = vectorGraphicView.leadingAnchor.constraint(equalTo: leadingAnchor)
    let vectorGraphicViewCenterYAnchorConstraint = vectorGraphicView.centerYAnchor.constraint(equalTo: centerYAnchor)
    let vectorGraphicViewHeightAnchorConstraint = vectorGraphicView.heightAnchor.constraint(equalToConstant: 24)
    let vectorGraphicViewWidthAnchorConstraint = vectorGraphicView.widthAnchor.constraint(equalToConstant: 24)

    vectorGraphicViewHeightAnchorParentConstraint.priority = NSLayoutConstraint.Priority.defaultLow

    NSLayoutConstraint.activate([
      vectorGraphicViewHeightAnchorParentConstraint,
      vectorGraphicViewLeadingAnchorConstraint,
      vectorGraphicViewCenterYAnchorConstraint,
      vectorGraphicViewHeightAnchorConstraint,
      vectorGraphicViewWidthAnchorConstraint
    ])
  }

  private func update() {
    vectorGraphicView.foldFill = #colorLiteral(red: 0.933333333333, green: 0.933333333333, blue: 0.933333333333, alpha: 1)
    vectorGraphicView.foldStroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
    vectorGraphicView.line1Stroke = #colorLiteral(red: 0.592156862745, green: 0.592156862745, blue: 0.592156862745, alpha: 1)
    vectorGraphicView.line2Stroke = #colorLiteral(red: 0.592156862745, green: 0.592156862745, blue: 0.592156862745, alpha: 1)
    vectorGraphicView.line3Stroke = #colorLiteral(red: 0.592156862745, green: 0.592156862745, blue: 0.592156862745, alpha: 1)
    vectorGraphicView.line4Stroke = #colorLiteral(red: 0.592156862745, green: 0.592156862745, blue: 0.592156862745, alpha: 1)
    vectorGraphicView.outlineFill = #colorLiteral(red: 0.847058823529, green: 0.847058823529, blue: 0.847058823529, alpha: 1)
    vectorGraphicView.outlineStroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
    if selected {
      vectorGraphicView.outlineStroke = Colors.selectedIconStroke
      vectorGraphicView.line1Stroke = Colors.selectedIconStroke
      vectorGraphicView.line2Stroke = Colors.selectedIconStroke
      vectorGraphicView.line3Stroke = Colors.selectedIconStroke
      vectorGraphicView.line4Stroke = Colors.selectedIconStroke
      vectorGraphicView.outlineFill = Colors.selectedIcon
      vectorGraphicView.foldFill = Colors.selectedIcon
      vectorGraphicView.foldStroke = Colors.selectedIconStroke
    }
    vectorGraphicView.needsDisplay = true
  }
}
