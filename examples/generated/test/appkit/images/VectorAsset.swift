import AppKit
import Foundation

private class ToggleVector: NSBox {
  override var isFlipped: Bool {
    return true
  }

  override func draw(_ dirtyRect: CGRect) {
    super.draw(dirtyRect)

    let viewBox = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 48, height: 24))
    let croppedRect = viewBox.size.crop(within: bounds.size)
    let scale = croppedRect.width / viewBox.width
    func transform(point: CGPoint) -> CGPoint {
      return CGPoint(x: point.x * scale + croppedRect.minX, y: point.y * scale + croppedRect.minY)
    }
    let rectangle = NSBezierPath()
    rectangle.move(to: transform(point: CGPoint(x: 12, y: 0.5)))
    rectangle.line(to: transform(point: CGPoint(x: 36, y: 0.5)))
    rectangle.curve(
      to: transform(point: CGPoint(x: 47.5, y: 12)),
      controlPoint1: transform(point: CGPoint(x: 42.3512746231, y: 0.5)),
      controlPoint2: transform(point: CGPoint(x: 47.5, y: 5.64872537694)))
    rectangle.line(to: transform(point: CGPoint(x: 47.5, y: 12)))
    rectangle.curve(
      to: transform(point: CGPoint(x: 36, y: 23.5)),
      controlPoint1: transform(point: CGPoint(x: 47.5, y: 18.3512746231)),
      controlPoint2: transform(point: CGPoint(x: 42.3512746231, y: 23.5)))
    rectangle.line(to: transform(point: CGPoint(x: 12, y: 23.5)))
    rectangle.curve(
      to: transform(point: CGPoint(x: 0.5, y: 12)),
      controlPoint1: transform(point: CGPoint(x: 5.64872537694, y: 23.5)),
      controlPoint2: transform(point: CGPoint(x: 0.5, y: 18.3512746231)))
    rectangle.line(to: transform(point: CGPoint(x: 0.5, y: 12)))
    rectangle.curve(
      to: transform(point: CGPoint(x: 12, y: 0.5)),
      controlPoint1: transform(point: CGPoint(x: 0.5, y: 5.64872537694)),
      controlPoint2: transform(point: CGPoint(x: 5.64872537694, y: 0.5)))
    rectangle.close()
    #colorLiteral(red: 0, green: 0.756862745098, blue: 0.129411764706, alpha: 1).setFill()
    #colorLiteral(red: 0, green: 0.556862745098, blue: 0.0941176470588, alpha: 1).setStroke()
    rectangle.fill()
    rectangle.lineWidth = 1 * scale
    rectangle.lineCapStyle = .buttLineCapStyle
    rectangle.stroke()
    let oval = NSBezierPath()
    oval.move(to: transform(point: CGPoint(x: 12, y: 2)))
    oval.line(to: transform(point: CGPoint(x: 12, y: 2)))
    oval.curve(
      to: transform(point: CGPoint(x: 22, y: 12)),
      controlPoint1: transform(point: CGPoint(x: 17.5228474983, y: 2)),
      controlPoint2: transform(point: CGPoint(x: 22, y: 6.47715250169)))
    oval.line(to: transform(point: CGPoint(x: 22, y: 12)))
    oval.curve(
      to: transform(point: CGPoint(x: 12, y: 22)),
      controlPoint1: transform(point: CGPoint(x: 22, y: 17.5228474983)),
      controlPoint2: transform(point: CGPoint(x: 17.5228474983, y: 22)))
    oval.line(to: transform(point: CGPoint(x: 12, y: 22)))
    oval.curve(
      to: transform(point: CGPoint(x: 2, y: 12)),
      controlPoint1: transform(point: CGPoint(x: 6.47715250169, y: 22)),
      controlPoint2: transform(point: CGPoint(x: 2, y: 17.5228474983)))
    oval.line(to: transform(point: CGPoint(x: 2, y: 12)))
    oval.curve(
      to: transform(point: CGPoint(x: 12, y: 2)),
      controlPoint1: transform(point: CGPoint(x: 2, y: 6.47715250169)),
      controlPoint2: transform(point: CGPoint(x: 6.47715250169, y: 2)))
    oval.close()
    #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setFill()
    oval.fill()
  }
}

private class ToggleVerticalVector: NSBox {
  override var isFlipped: Bool {
    return true
  }

  override func draw(_ dirtyRect: CGRect) {
    super.draw(dirtyRect)

    let viewBox = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 24, height: 48))
    let croppedRect = viewBox.size.crop(within: bounds.size)
    let scale = croppedRect.width / viewBox.width
    func transform(point: CGPoint) -> CGPoint {
      return CGPoint(x: point.x * scale + croppedRect.minX, y: point.y * scale + croppedRect.minY)
    }
    let rectangle = NSBezierPath()
    rectangle.move(to: transform(point: CGPoint(x: 12, y: 0.5)))
    rectangle.line(to: transform(point: CGPoint(x: 12, y: 0.5)))
    rectangle.curve(
      to: transform(point: CGPoint(x: 23.5, y: 12)),
      controlPoint1: transform(point: CGPoint(x: 18.3512746231, y: 0.5)),
      controlPoint2: transform(point: CGPoint(x: 23.5, y: 5.64872537694)))
    rectangle.line(to: transform(point: CGPoint(x: 23.5, y: 36)))
    rectangle.curve(
      to: transform(point: CGPoint(x: 12, y: 47.5)),
      controlPoint1: transform(point: CGPoint(x: 23.5, y: 42.3512746231)),
      controlPoint2: transform(point: CGPoint(x: 18.3512746231, y: 47.5)))
    rectangle.line(to: transform(point: CGPoint(x: 12, y: 47.5)))
    rectangle.curve(
      to: transform(point: CGPoint(x: 0.5, y: 36)),
      controlPoint1: transform(point: CGPoint(x: 5.64872537694, y: 47.5)),
      controlPoint2: transform(point: CGPoint(x: 0.5, y: 42.3512746231)))
    rectangle.line(to: transform(point: CGPoint(x: 0.5, y: 12)))
    rectangle.curve(
      to: transform(point: CGPoint(x: 12, y: 0.5)),
      controlPoint1: transform(point: CGPoint(x: 0.5, y: 5.64872537694)),
      controlPoint2: transform(point: CGPoint(x: 5.64872537694, y: 0.5)))
    rectangle.close()
    #colorLiteral(red: 0.549019607843, green: 0.862745098039, blue: 1, alpha: 1).setFill()
    #colorLiteral(red: 0.309803921569, green: 0.670588235294, blue: 1, alpha: 1).setStroke()
    rectangle.fill()
    rectangle.lineWidth = 1 * scale
    rectangle.lineCapStyle = .buttLineCapStyle
    rectangle.stroke()
    let oval = NSBezierPath()
    oval.move(to: transform(point: CGPoint(x: 12, y: 2)))
    oval.line(to: transform(point: CGPoint(x: 12, y: 2)))
    oval.curve(
      to: transform(point: CGPoint(x: 22, y: 12)),
      controlPoint1: transform(point: CGPoint(x: 17.5228474983, y: 2)),
      controlPoint2: transform(point: CGPoint(x: 22, y: 6.47715250169)))
    oval.line(to: transform(point: CGPoint(x: 22, y: 12)))
    oval.curve(
      to: transform(point: CGPoint(x: 12, y: 22)),
      controlPoint1: transform(point: CGPoint(x: 22, y: 17.5228474983)),
      controlPoint2: transform(point: CGPoint(x: 17.5228474983, y: 22)))
    oval.line(to: transform(point: CGPoint(x: 12, y: 22)))
    oval.curve(
      to: transform(point: CGPoint(x: 2, y: 12)),
      controlPoint1: transform(point: CGPoint(x: 6.47715250169, y: 22)),
      controlPoint2: transform(point: CGPoint(x: 2, y: 17.5228474983)))
    oval.line(to: transform(point: CGPoint(x: 2, y: 12)))
    oval.curve(
      to: transform(point: CGPoint(x: 12, y: 2)),
      controlPoint1: transform(point: CGPoint(x: 2, y: 6.47715250169)),
      controlPoint2: transform(point: CGPoint(x: 6.47715250169, y: 2)))
    oval.close()
    #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setFill()
    oval.fill()
  }
}

private class CheckCircleVector: NSBox {
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
    let oval = NSBezierPath()
    oval.move(to: transform(point: CGPoint(x: 12, y: 0)))
    oval.line(to: transform(point: CGPoint(x: 12, y: 0)))
    oval.curve(
      to: transform(point: CGPoint(x: 24, y: 12)),
      controlPoint1: transform(point: CGPoint(x: 18.627416998, y: 0)),
      controlPoint2: transform(point: CGPoint(x: 24, y: 5.37258300203)))
    oval.line(to: transform(point: CGPoint(x: 24, y: 12)))
    oval.curve(
      to: transform(point: CGPoint(x: 12, y: 24)),
      controlPoint1: transform(point: CGPoint(x: 24, y: 18.627416998)),
      controlPoint2: transform(point: CGPoint(x: 18.627416998, y: 24)))
    oval.line(to: transform(point: CGPoint(x: 12, y: 24)))
    oval.curve(
      to: transform(point: CGPoint(x: 0, y: 12)),
      controlPoint1: transform(point: CGPoint(x: 5.37258300203, y: 24)),
      controlPoint2: transform(point: CGPoint(x: 0, y: 18.627416998)))
    oval.line(to: transform(point: CGPoint(x: 0, y: 12)))
    oval.curve(
      to: transform(point: CGPoint(x: 12, y: 0)),
      controlPoint1: transform(point: CGPoint(x: 0, y: 5.37258300203)),
      controlPoint2: transform(point: CGPoint(x: 5.37258300203, y: 0)))
    oval.close()
    #colorLiteral(red: 0, green: 0.756862745098, blue: 0.129411764706, alpha: 1).setFill()
    oval.fill()
    let path = NSBezierPath()
    path.move(to: transform(point: CGPoint(x: 6.5, y: 12.6)))
    path.line(to: transform(point: CGPoint(x: 9.75, y: 15.85)))
    path.line(to: transform(point: CGPoint(x: 17.25, y: 8.35)))
    #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).setStroke()
    path.lineWidth = 2 * scale
    path.lineCapStyle = .roundLineCapStyle
    path.stroke()
  }
}


// MARK: - VectorAsset

public class VectorAsset: NSBox {

  // MARK: Lifecycle

  public init() {
    super.init(frame: .zero)

    setUpViews()
    setUpConstraints()

    update()
  }

  public required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: Private

  private var vectorGraphic1View = ToggleVector()
  private var vectorGraphic2View = ToggleVerticalVector()
  private var vectorGraphic3View = CheckCircleVector()

  private func setUpViews() {
    boxType = .custom
    borderType = .noBorder
    contentViewMargins = .zero
    vectorGraphic1View.boxType = .custom
    vectorGraphic1View.borderType = .noBorder
    vectorGraphic1View.contentViewMargins = .zero
    vectorGraphic2View.boxType = .custom
    vectorGraphic2View.borderType = .noBorder
    vectorGraphic2View.contentViewMargins = .zero
    vectorGraphic3View.boxType = .custom
    vectorGraphic3View.borderType = .noBorder
    vectorGraphic3View.contentViewMargins = .zero

    addSubview(vectorGraphic1View)
    addSubview(vectorGraphic2View)
    addSubview(vectorGraphic3View)

    vectorGraphic3View.fillColor = Colors.green50
  }

  private func setUpConstraints() {
    translatesAutoresizingMaskIntoConstraints = false
    vectorGraphic1View.translatesAutoresizingMaskIntoConstraints = false
    vectorGraphic2View.translatesAutoresizingMaskIntoConstraints = false
    vectorGraphic3View.translatesAutoresizingMaskIntoConstraints = false

    let vectorGraphic1ViewTopAnchorConstraint = vectorGraphic1View.topAnchor.constraint(equalTo: topAnchor)
    let vectorGraphic1ViewLeadingAnchorConstraint = vectorGraphic1View.leadingAnchor.constraint(equalTo: leadingAnchor)
    let vectorGraphic1ViewTrailingAnchorConstraint = vectorGraphic1View
      .trailingAnchor
      .constraint(equalTo: trailingAnchor)
    let vectorGraphic2ViewTopAnchorConstraint = vectorGraphic2View
      .topAnchor
      .constraint(equalTo: vectorGraphic1View.bottomAnchor)
    let vectorGraphic2ViewLeadingAnchorConstraint = vectorGraphic2View.leadingAnchor.constraint(equalTo: leadingAnchor)
    let vectorGraphic2ViewTrailingAnchorConstraint = vectorGraphic2View
      .trailingAnchor
      .constraint(equalTo: trailingAnchor)
    let vectorGraphic3ViewBottomAnchorConstraint = vectorGraphic3View.bottomAnchor.constraint(equalTo: bottomAnchor)
    let vectorGraphic3ViewTopAnchorConstraint = vectorGraphic3View
      .topAnchor
      .constraint(equalTo: vectorGraphic2View.bottomAnchor)
    let vectorGraphic3ViewLeadingAnchorConstraint = vectorGraphic3View.leadingAnchor.constraint(equalTo: leadingAnchor)
    let vectorGraphic3ViewTrailingAnchorConstraint = vectorGraphic3View
      .trailingAnchor
      .constraint(equalTo: trailingAnchor)
    let vectorGraphic1ViewHeightAnchorConstraint = vectorGraphic1View.heightAnchor.constraint(equalToConstant: 100)
    let vectorGraphic2ViewHeightAnchorConstraint = vectorGraphic2View.heightAnchor.constraint(equalToConstant: 100)
    let vectorGraphic3ViewHeightAnchorConstraint = vectorGraphic3View.heightAnchor.constraint(equalToConstant: 100)

    NSLayoutConstraint.activate([
      vectorGraphic1ViewTopAnchorConstraint,
      vectorGraphic1ViewLeadingAnchorConstraint,
      vectorGraphic1ViewTrailingAnchorConstraint,
      vectorGraphic2ViewTopAnchorConstraint,
      vectorGraphic2ViewLeadingAnchorConstraint,
      vectorGraphic2ViewTrailingAnchorConstraint,
      vectorGraphic3ViewBottomAnchorConstraint,
      vectorGraphic3ViewTopAnchorConstraint,
      vectorGraphic3ViewLeadingAnchorConstraint,
      vectorGraphic3ViewTrailingAnchorConstraint,
      vectorGraphic1ViewHeightAnchorConstraint,
      vectorGraphic2ViewHeightAnchorConstraint,
      vectorGraphic3ViewHeightAnchorConstraint
    ])
  }

  private func update() {
    vectorGraphic1View.needsDisplay = true
    vectorGraphic2View.needsDisplay = true
    vectorGraphic3View.needsDisplay = true
  }
}
