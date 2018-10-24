import AppKit
import Foundation

private class IconColorsFileVector: NSBox {
  public var box1Fill = #colorLiteral(red: 0.933333333333, green: 0.933333333333, blue: 0.933333333333, alpha: 1)
  public var box1Stroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
  public var box2Fill = #colorLiteral(red: 0.933333333333, green: 0.933333333333, blue: 0.933333333333, alpha: 1)
  public var box2Stroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
  public var box3Fill = #colorLiteral(red: 0.933333333333, green: 0.933333333333, blue: 0.933333333333, alpha: 1)
  public var box3Stroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
  public var box4Fill = #colorLiteral(red: 0.933333333333, green: 0.933333333333, blue: 0.933333333333, alpha: 1)
  public var box4Stroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
  public var foldFill = #colorLiteral(red: 0.933333333333, green: 0.933333333333, blue: 0.933333333333, alpha: 1)
  public var foldStroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
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
    let box1 = NSBezierPath()
    box1.move(to: transform(point: CGPoint(x: 8.5, y: 10.5)))
    box1.line(to: transform(point: CGPoint(x: 9.5, y: 10.5)))
    box1.curve(
      to: transform(point: CGPoint(x: 10.5, y: 11.5)),
      controlPoint1: transform(point: CGPoint(x: 10.0522847498, y: 10.5)),
      controlPoint2: transform(point: CGPoint(x: 10.5, y: 10.9477152502)))
    box1.line(to: transform(point: CGPoint(x: 10.5, y: 12.5)))
    box1.curve(
      to: transform(point: CGPoint(x: 9.5, y: 13.5)),
      controlPoint1: transform(point: CGPoint(x: 10.5, y: 13.0522847498)),
      controlPoint2: transform(point: CGPoint(x: 10.0522847498, y: 13.5)))
    box1.line(to: transform(point: CGPoint(x: 8.5, y: 13.5)))
    box1.curve(
      to: transform(point: CGPoint(x: 7.5, y: 12.5)),
      controlPoint1: transform(point: CGPoint(x: 7.94771525017, y: 13.5)),
      controlPoint2: transform(point: CGPoint(x: 7.5, y: 13.0522847498)))
    box1.line(to: transform(point: CGPoint(x: 7.5, y: 11.5)))
    box1.curve(
      to: transform(point: CGPoint(x: 8.5, y: 10.5)),
      controlPoint1: transform(point: CGPoint(x: 7.5, y: 10.9477152502)),
      controlPoint2: transform(point: CGPoint(x: 7.94771525017, y: 10.5)))
    box1.close()
    box1Fill.setFill()
    box1Stroke.setStroke()
    box1.fill()
    box1.lineWidth = 1 * scale
    box1.lineCapStyle = .buttLineCapStyle
    box1.stroke()
    let box2 = NSBezierPath()
    box2.move(to: transform(point: CGPoint(x: 13.5, y: 10.5)))
    box2.line(to: transform(point: CGPoint(x: 14.5, y: 10.5)))
    box2.curve(
      to: transform(point: CGPoint(x: 15.5, y: 11.5)),
      controlPoint1: transform(point: CGPoint(x: 15.0522847498, y: 10.5)),
      controlPoint2: transform(point: CGPoint(x: 15.5, y: 10.9477152502)))
    box2.line(to: transform(point: CGPoint(x: 15.5, y: 12.5)))
    box2.curve(
      to: transform(point: CGPoint(x: 14.5, y: 13.5)),
      controlPoint1: transform(point: CGPoint(x: 15.5, y: 13.0522847498)),
      controlPoint2: transform(point: CGPoint(x: 15.0522847498, y: 13.5)))
    box2.line(to: transform(point: CGPoint(x: 13.5, y: 13.5)))
    box2.curve(
      to: transform(point: CGPoint(x: 12.5, y: 12.5)),
      controlPoint1: transform(point: CGPoint(x: 12.9477152502, y: 13.5)),
      controlPoint2: transform(point: CGPoint(x: 12.5, y: 13.0522847498)))
    box2.line(to: transform(point: CGPoint(x: 12.5, y: 11.5)))
    box2.curve(
      to: transform(point: CGPoint(x: 13.5, y: 10.5)),
      controlPoint1: transform(point: CGPoint(x: 12.5, y: 10.9477152502)),
      controlPoint2: transform(point: CGPoint(x: 12.9477152502, y: 10.5)))
    box2.close()
    box2Fill.setFill()
    box2Stroke.setStroke()
    box2.fill()
    box2.lineWidth = 1 * scale
    box2.lineCapStyle = .buttLineCapStyle
    box2.stroke()
    let box3 = NSBezierPath()
    box3.move(to: transform(point: CGPoint(x: 8.5, y: 15.5)))
    box3.line(to: transform(point: CGPoint(x: 9.5, y: 15.5)))
    box3.curve(
      to: transform(point: CGPoint(x: 10.5, y: 16.5)),
      controlPoint1: transform(point: CGPoint(x: 10.0522847498, y: 15.5)),
      controlPoint2: transform(point: CGPoint(x: 10.5, y: 15.9477152502)))
    box3.line(to: transform(point: CGPoint(x: 10.5, y: 17.5)))
    box3.curve(
      to: transform(point: CGPoint(x: 9.5, y: 18.5)),
      controlPoint1: transform(point: CGPoint(x: 10.5, y: 18.0522847498)),
      controlPoint2: transform(point: CGPoint(x: 10.0522847498, y: 18.5)))
    box3.line(to: transform(point: CGPoint(x: 8.5, y: 18.5)))
    box3.curve(
      to: transform(point: CGPoint(x: 7.5, y: 17.5)),
      controlPoint1: transform(point: CGPoint(x: 7.94771525017, y: 18.5)),
      controlPoint2: transform(point: CGPoint(x: 7.5, y: 18.0522847498)))
    box3.line(to: transform(point: CGPoint(x: 7.5, y: 16.5)))
    box3.curve(
      to: transform(point: CGPoint(x: 8.5, y: 15.5)),
      controlPoint1: transform(point: CGPoint(x: 7.5, y: 15.9477152502)),
      controlPoint2: transform(point: CGPoint(x: 7.94771525017, y: 15.5)))
    box3.close()
    box3Fill.setFill()
    box3Stroke.setStroke()
    box3.fill()
    box3.lineWidth = 1 * scale
    box3.lineCapStyle = .buttLineCapStyle
    box3.stroke()
    let box4 = NSBezierPath()
    box4.move(to: transform(point: CGPoint(x: 13.5, y: 15.5)))
    box4.line(to: transform(point: CGPoint(x: 14.5, y: 15.5)))
    box4.curve(
      to: transform(point: CGPoint(x: 15.5, y: 16.5)),
      controlPoint1: transform(point: CGPoint(x: 15.0522847498, y: 15.5)),
      controlPoint2: transform(point: CGPoint(x: 15.5, y: 15.9477152502)))
    box4.line(to: transform(point: CGPoint(x: 15.5, y: 17.5)))
    box4.curve(
      to: transform(point: CGPoint(x: 14.5, y: 18.5)),
      controlPoint1: transform(point: CGPoint(x: 15.5, y: 18.0522847498)),
      controlPoint2: transform(point: CGPoint(x: 15.0522847498, y: 18.5)))
    box4.line(to: transform(point: CGPoint(x: 13.5, y: 18.5)))
    box4.curve(
      to: transform(point: CGPoint(x: 12.5, y: 17.5)),
      controlPoint1: transform(point: CGPoint(x: 12.9477152502, y: 18.5)),
      controlPoint2: transform(point: CGPoint(x: 12.5, y: 18.0522847498)))
    box4.line(to: transform(point: CGPoint(x: 12.5, y: 16.5)))
    box4.curve(
      to: transform(point: CGPoint(x: 13.5, y: 15.5)),
      controlPoint1: transform(point: CGPoint(x: 12.5, y: 15.9477152502)),
      controlPoint2: transform(point: CGPoint(x: 12.9477152502, y: 15.5)))
    box4.close()
    box4Fill.setFill()
    box4Stroke.setStroke()
    box4.fill()
    box4.lineWidth = 1 * scale
    box4.lineCapStyle = .buttLineCapStyle
    box4.stroke()
  }
}


// MARK: - ColorsFileIcon

public class ColorsFileIcon: NSBox {

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

  private var vectorGraphicView = IconColorsFileVector()

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
    vectorGraphicView.box1Fill = #colorLiteral(red: 0.933333333333, green: 0.933333333333, blue: 0.933333333333, alpha: 1)
    vectorGraphicView.box1Stroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
    vectorGraphicView.box2Fill = #colorLiteral(red: 0.933333333333, green: 0.933333333333, blue: 0.933333333333, alpha: 1)
    vectorGraphicView.box2Stroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
    vectorGraphicView.box3Fill = #colorLiteral(red: 0.933333333333, green: 0.933333333333, blue: 0.933333333333, alpha: 1)
    vectorGraphicView.box3Stroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
    vectorGraphicView.box4Fill = #colorLiteral(red: 0.933333333333, green: 0.933333333333, blue: 0.933333333333, alpha: 1)
    vectorGraphicView.box4Stroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
    vectorGraphicView.foldFill = #colorLiteral(red: 0.933333333333, green: 0.933333333333, blue: 0.933333333333, alpha: 1)
    vectorGraphicView.foldStroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
    vectorGraphicView.outlineFill = #colorLiteral(red: 0.847058823529, green: 0.847058823529, blue: 0.847058823529, alpha: 1)
    vectorGraphicView.outlineStroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
    if selected {
      vectorGraphicView.outlineStroke = Colors.selectedIconStroke
      vectorGraphicView.outlineFill = Colors.selectedIcon
      vectorGraphicView.foldStroke = Colors.selectedIconStroke
      vectorGraphicView.foldFill = Colors.selectedIcon
      vectorGraphicView.box1Stroke = Colors.selectedIconStroke
      vectorGraphicView.box2Stroke = Colors.selectedIconStroke
      vectorGraphicView.box3Stroke = Colors.selectedIconStroke
      vectorGraphicView.box4Stroke = Colors.selectedIconStroke
      vectorGraphicView.box1Fill = Colors.selectedIcon
      vectorGraphicView.box2Fill = Colors.selectedIcon
      vectorGraphicView.box3Fill = Colors.selectedIcon
      vectorGraphicView.box4Fill = Colors.selectedIcon
    }
    vectorGraphicView.needsDisplay = true
  }
}
