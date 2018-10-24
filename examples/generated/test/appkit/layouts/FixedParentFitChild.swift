import AppKit
import Foundation

// MARK: - FixedParentFitChild

public class FixedParentFitChild: NSBox {

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

  private var view1View = NSBox()
  private var view4View = NSBox()
  private var view5View = NSBox()

  private func setUpViews() {
    boxType = .custom
    borderType = .noBorder
    contentViewMargins = .zero
    view1View.boxType = .custom
    view1View.borderType = .noBorder
    view1View.contentViewMargins = .zero
    view4View.boxType = .custom
    view4View.borderType = .noBorder
    view4View.contentViewMargins = .zero
    view5View.boxType = .custom
    view5View.borderType = .noBorder
    view5View.contentViewMargins = .zero

    addSubview(view1View)
    view1View.addSubview(view4View)
    view1View.addSubview(view5View)

    fillColor = Colors.bluegrey100
    view1View.fillColor = Colors.red50
    view4View.fillColor = Colors.red200
    view5View.fillColor = Colors.deeporange200
  }

  private func setUpConstraints() {
    translatesAutoresizingMaskIntoConstraints = false
    view1View.translatesAutoresizingMaskIntoConstraints = false
    view4View.translatesAutoresizingMaskIntoConstraints = false
    view5View.translatesAutoresizingMaskIntoConstraints = false

    let heightAnchorConstraint = heightAnchor.constraint(equalToConstant: 600)
    let view1ViewTopAnchorConstraint = view1View.topAnchor.constraint(equalTo: topAnchor, constant: 24)
    let view1ViewLeadingAnchorConstraint = view1View.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24)
    let view1ViewTrailingAnchorConstraint = view1View.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24)
    let view4ViewHeightAnchorParentConstraint = view4View
      .heightAnchor
      .constraint(lessThanOrEqualTo: view1View.heightAnchor, constant: -48)
    let view5ViewHeightAnchorParentConstraint = view5View
      .heightAnchor
      .constraint(lessThanOrEqualTo: view1View.heightAnchor, constant: -48)
    let view4ViewLeadingAnchorConstraint = view4View
      .leadingAnchor
      .constraint(equalTo: view1View.leadingAnchor, constant: 24)
    let view4ViewTopAnchorConstraint = view4View.topAnchor.constraint(equalTo: view1View.topAnchor, constant: 24)
    let view5ViewLeadingAnchorConstraint = view5View
      .leadingAnchor
      .constraint(equalTo: view4View.trailingAnchor, constant: 12)
    let view5ViewTopAnchorConstraint = view5View.topAnchor.constraint(equalTo: view1View.topAnchor, constant: 24)
    let view4ViewHeightAnchorConstraint = view4View.heightAnchor.constraint(equalToConstant: 100)
    let view4ViewWidthAnchorConstraint = view4View.widthAnchor.constraint(equalToConstant: 60)
    let view5ViewHeightAnchorConstraint = view5View.heightAnchor.constraint(equalToConstant: 60)
    let view5ViewWidthAnchorConstraint = view5View.widthAnchor.constraint(equalToConstant: 60)

    view4ViewHeightAnchorParentConstraint.priority = NSLayoutConstraint.Priority.defaultLow
    view5ViewHeightAnchorParentConstraint.priority = NSLayoutConstraint.Priority.defaultLow

    NSLayoutConstraint.activate([
      heightAnchorConstraint,
      view1ViewTopAnchorConstraint,
      view1ViewLeadingAnchorConstraint,
      view1ViewTrailingAnchorConstraint,
      view4ViewHeightAnchorParentConstraint,
      view5ViewHeightAnchorParentConstraint,
      view4ViewLeadingAnchorConstraint,
      view4ViewTopAnchorConstraint,
      view5ViewLeadingAnchorConstraint,
      view5ViewTopAnchorConstraint,
      view4ViewHeightAnchorConstraint,
      view4ViewWidthAnchorConstraint,
      view5ViewHeightAnchorConstraint,
      view5ViewWidthAnchorConstraint
    ])
  }

  private func update() {}
}
