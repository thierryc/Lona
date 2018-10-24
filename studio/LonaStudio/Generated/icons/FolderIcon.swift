import AppKit
import Foundation

private class IconFolderVector: NSBox {
  public var contentsFill = #colorLiteral(red: 0.803921568627, green: 0.803921568627, blue: 0.803921568627, alpha: 1)
  public var dividerStroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
  public var highlightStroke = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2)
  public var outlineFill = #colorLiteral(red: 0.933333333333, green: 0.933333333333, blue: 0.933333333333, alpha: 1)
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
    outline.move(to: transform(point: CGPoint(x: 1.5, y: 19.5)))
    outline.line(to: transform(point: CGPoint(x: 1.5, y: 5.5)))
    outline.curve(
      to: transform(point: CGPoint(x: 2.5, y: 4.5)),
      controlPoint1: transform(point: CGPoint(x: 1.5, y: 4.94771525)),
      controlPoint2: transform(point: CGPoint(x: 1.94771525, y: 4.5)))
    outline.line(to: transform(point: CGPoint(x: 7.08578644, y: 4.5)))
    outline.curve(
      to: transform(point: CGPoint(x: 7.79289322, y: 4.79289322)),
      controlPoint1: transform(point: CGPoint(x: 7.35100293, y: 4.5)),
      controlPoint2: transform(point: CGPoint(x: 7.60535684, y: 4.60535684)))
    outline.line(to: transform(point: CGPoint(x: 9.20710678, y: 6.20710678)))
    outline.curve(
      to: transform(point: CGPoint(x: 9.91421356, y: 6.5)),
      controlPoint1: transform(point: CGPoint(x: 9.39464316, y: 6.39464316)),
      controlPoint2: transform(point: CGPoint(x: 9.64899707, y: 6.5)))
    outline.line(to: transform(point: CGPoint(x: 20.5, y: 6.5)))
    outline.curve(
      to: transform(point: CGPoint(x: 21.5, y: 7.5)),
      controlPoint1: transform(point: CGPoint(x: 21.0522847, y: 6.5)),
      controlPoint2: transform(point: CGPoint(x: 21.5, y: 6.94771525)))
    outline.line(to: transform(point: CGPoint(x: 21.5, y: 19.5)))
    outline.curve(
      to: transform(point: CGPoint(x: 20.5, y: 20.5)),
      controlPoint1: transform(point: CGPoint(x: 21.5, y: 20.0522847)),
      controlPoint2: transform(point: CGPoint(x: 21.0522847, y: 20.5)))
    outline.line(to: transform(point: CGPoint(x: 2.5, y: 20.5)))
    outline.curve(
      to: transform(point: CGPoint(x: 1.5, y: 19.5)),
      controlPoint1: transform(point: CGPoint(x: 1.94771525, y: 20.5)),
      controlPoint2: transform(point: CGPoint(x: 1.5, y: 20.0522847)))
    outline.close()
    outlineFill.setFill()
    outlineStroke.setStroke()
    outline.fill()
    outline.lineWidth = 1 * scale
    outline.lineCapStyle = .buttLineCapStyle
    outline.stroke()
    let contents = NSBezierPath()
    contents.move(to: transform(point: CGPoint(x: 2, y: 9)))
    contents.line(to: transform(point: CGPoint(x: 21, y: 9)))
    contents.curve(
      to: transform(point: CGPoint(x: 21, y: 9)),
      controlPoint1: transform(point: CGPoint(x: 21, y: 9)),
      controlPoint2: transform(point: CGPoint(x: 21, y: 9)))
    contents.line(to: transform(point: CGPoint(x: 21, y: 20)))
    contents.curve(
      to: transform(point: CGPoint(x: 21, y: 20)),
      controlPoint1: transform(point: CGPoint(x: 21, y: 20)),
      controlPoint2: transform(point: CGPoint(x: 21, y: 20)))
    contents.line(to: transform(point: CGPoint(x: 2, y: 20)))
    contents.curve(
      to: transform(point: CGPoint(x: 2, y: 20)),
      controlPoint1: transform(point: CGPoint(x: 2, y: 20)),
      controlPoint2: transform(point: CGPoint(x: 2, y: 20)))
    contents.line(to: transform(point: CGPoint(x: 2, y: 9)))
    contents.curve(
      to: transform(point: CGPoint(x: 2, y: 9)),
      controlPoint1: transform(point: CGPoint(x: 2, y: 9)),
      controlPoint2: transform(point: CGPoint(x: 2, y: 9)))
    contents.close()
    contentsFill.setFill()
    contents.fill()
    let highlight = NSBezierPath()
    highlight.move(to: transform(point: CGPoint(x: 2.5, y: 19.5)))
    highlight.line(to: transform(point: CGPoint(x: 20.5, y: 19.5)))
    highlightStroke.setStroke()
    highlight.lineWidth = 1 * scale
    highlight.lineCapStyle = .squareLineCapStyle
    highlight.stroke()
    let divider = NSBezierPath()
    divider.move(to: transform(point: CGPoint(x: 2.5, y: 8.5)))
    divider.line(to: transform(point: CGPoint(x: 20.5, y: 8.5)))
    dividerStroke.setStroke()
    divider.lineWidth = 1 * scale
    divider.lineCapStyle = .squareLineCapStyle
    divider.stroke()
  }
}


// MARK: - FolderIcon

public class FolderIcon: NSBox {

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

  private var vectorGraphicView = IconFolderVector()

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
    vectorGraphicView.contentsFill = #colorLiteral(red: 0.803921568627, green: 0.803921568627, blue: 0.803921568627, alpha: 1)
    vectorGraphicView.dividerStroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
    vectorGraphicView.highlightStroke = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2)
    vectorGraphicView.outlineFill = #colorLiteral(red: 0.933333333333, green: 0.933333333333, blue: 0.933333333333, alpha: 1)
    vectorGraphicView.outlineStroke = #colorLiteral(red: 0.549019607843, green: 0.549019607843, blue: 0.549019607843, alpha: 1)
    if selected {
      vectorGraphicView.contentsFill = Colors.selectedIcon
      vectorGraphicView.outlineStroke = Colors.selectedIconStroke
      vectorGraphicView.outlineFill = Colors.selectedIcon
      vectorGraphicView.highlightStroke = Colors.transparent
      vectorGraphicView.dividerStroke = Colors.selectedIconStroke
    }
    vectorGraphicView.needsDisplay = true
  }
}
