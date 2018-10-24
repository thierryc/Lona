import AppKit
import Foundation

// MARK: - PressableRootView

public class PressableRootView: NSBox {

  // MARK: Lifecycle

  public init() {
    super.init(frame: .zero)

    setUpViews()
    setUpConstraints()

    update()

    addTrackingArea(trackingArea)
  }

  public required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  deinit {
    removeTrackingArea(trackingArea)
  }

  // MARK: Public

  public var onPressOuter: (() -> Void)? { didSet { update() } }
  public var onPressInner: (() -> Void)? { didSet { update() } }

  // MARK: Private

  private lazy var trackingArea = NSTrackingArea(
    rect: self.frame,
    options: [.mouseEnteredAndExited, .activeAlways, .mouseMoved, .inVisibleRect],
    owner: self)

  private var innerView = NSBox()
  private var innerTextView = NSTextField(labelWithString: "")

  private var innerTextViewTextStyle = TextStyles.headline

  private var hovered = false
  private var pressed = false
  private var onPress: (() -> Void)?
  private var innerViewHovered = false
  private var innerViewPressed = false
  private var innerViewOnPress: (() -> Void)?

  private func setUpViews() {
    boxType = .custom
    borderType = .noBorder
    contentViewMargins = .zero
    innerView.boxType = .custom
    innerView.borderType = .noBorder
    innerView.contentViewMargins = .zero
    innerTextView.lineBreakMode = .byWordWrapping

    addSubview(innerView)
    innerView.addSubview(innerTextView)

    innerTextViewTextStyle = TextStyles.headline
    innerTextView.attributedStringValue = innerTextViewTextStyle.apply(to: innerTextView.attributedStringValue)
  }

  private func setUpConstraints() {
    translatesAutoresizingMaskIntoConstraints = false
    innerView.translatesAutoresizingMaskIntoConstraints = false
    innerTextView.translatesAutoresizingMaskIntoConstraints = false

    let innerViewTopAnchorConstraint = innerView.topAnchor.constraint(equalTo: topAnchor, constant: 24)
    let innerViewBottomAnchorConstraint = innerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24)
    let innerViewLeadingAnchorConstraint = innerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24)
    let innerViewHeightAnchorConstraint = innerView.heightAnchor.constraint(equalToConstant: 100)
    let innerViewWidthAnchorConstraint = innerView.widthAnchor.constraint(equalToConstant: 100)
    let innerTextViewTopAnchorConstraint = innerTextView.topAnchor.constraint(equalTo: innerView.topAnchor)
    let innerTextViewLeadingAnchorConstraint = innerTextView.leadingAnchor.constraint(equalTo: innerView.leadingAnchor)
    let innerTextViewTrailingAnchorConstraint = innerTextView
      .trailingAnchor
      .constraint(equalTo: innerView.trailingAnchor)

    NSLayoutConstraint.activate([
      innerViewTopAnchorConstraint,
      innerViewBottomAnchorConstraint,
      innerViewLeadingAnchorConstraint,
      innerViewHeightAnchorConstraint,
      innerViewWidthAnchorConstraint,
      innerTextViewTopAnchorConstraint,
      innerTextViewLeadingAnchorConstraint,
      innerTextViewTrailingAnchorConstraint
    ])
  }

  private func update() {
    innerView.fillColor = Colors.blue500
    innerTextView.attributedStringValue = innerTextViewTextStyle.apply(to: "")
    fillColor = Colors.grey50
    onPress = onPressOuter
    innerViewOnPress = onPressInner
    if hovered {
      fillColor = Colors.grey100
    }
    if pressed {
      fillColor = Colors.grey300
    }
    if innerViewHovered {
      innerView.fillColor = Colors.blue300
      innerTextView.attributedStringValue = innerTextViewTextStyle.apply(to: "Hovered")
    }
    if innerViewPressed {
      innerView.fillColor = Colors.blue800
      innerTextView.attributedStringValue = innerTextViewTextStyle.apply(to: "Pressed")
    }
    if innerViewHovered {
      if innerViewPressed {
        innerTextView.attributedStringValue = innerTextViewTextStyle.apply(to: "Hovered & Pressed")
      }
    }
  }

  private func updateHoverState(with event: NSEvent) {
    let hovered = bounds.contains(convert(event.locationInWindow, from: nil))
    let innerViewHovered = innerView.bounds.contains(innerView.convert(event.locationInWindow, from: nil))
    if hovered != self.hovered || innerViewHovered != self.innerViewHovered {
      self.hovered = hovered
      self.innerViewHovered = innerViewHovered

      update()
    }
  }

  public override func mouseEntered(with event: NSEvent) {
    updateHoverState(with: event)
  }

  public override func mouseMoved(with event: NSEvent) {
    updateHoverState(with: event)
  }

  public override func mouseDragged(with event: NSEvent) {
    updateHoverState(with: event)
  }

  public override func mouseExited(with event: NSEvent) {
    updateHoverState(with: event)
  }

  public override func mouseDown(with event: NSEvent) {
    let pressed = bounds.contains(convert(event.locationInWindow, from: nil))
    let innerViewPressed = innerView.bounds.contains(innerView.convert(event.locationInWindow, from: nil))
    if pressed != self.pressed || innerViewPressed != self.innerViewPressed {
      self.pressed = pressed
      self.innerViewPressed = innerViewPressed

      update()
    }
  }

  public override func mouseUp(with event: NSEvent) {
    let clicked = pressed && bounds.contains(convert(event.locationInWindow, from: nil))
    let innerViewClicked = innerViewPressed &&
      innerView.bounds.contains(innerView.convert(event.locationInWindow, from: nil))

    if pressed || innerViewPressed {
      pressed = false
      innerViewPressed = false

      update()
    }

    if clicked {
      onPress?()
    }
    if innerViewClicked {
      innerViewOnPress?()
    }
  }
}
