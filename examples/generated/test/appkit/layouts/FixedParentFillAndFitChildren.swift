import AppKit
import Foundation

// MARK: - FixedParentFillAndFitChildren

public class FixedParentFillAndFitChildren: NSBox {

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
  private var view2View = NSBox()
  private var view3View = NSBox()

  private func setUpViews() {
    boxType = .custom
    borderType = .noBorder
    contentViewMargins = .zero
    view1View.boxType = .custom
    view1View.borderType = .noBorder
    view1View.contentViewMargins = .zero
    view2View.boxType = .custom
    view2View.borderType = .noBorder
    view2View.contentViewMargins = .zero
    view3View.boxType = .custom
    view3View.borderType = .noBorder
    view3View.contentViewMargins = .zero
    view4View.boxType = .custom
    view4View.borderType = .noBorder
    view4View.contentViewMargins = .zero
    view5View.boxType = .custom
    view5View.borderType = .noBorder
    view5View.contentViewMargins = .zero

    addSubview(view1View)
    addSubview(view2View)
    addSubview(view3View)
    view1View.addSubview(view4View)
    view1View.addSubview(view5View)

    view1View.fillColor = Colors.red50
    view4View.fillColor = Colors.red200
    view5View.fillColor = Colors.deeporange200
    view2View.fillColor = Colors.indigo100
    view3View.fillColor = Colors.teal100
  }

  private func setUpConstraints() {
    translatesAutoresizingMaskIntoConstraints = false
    view1View.translatesAutoresizingMaskIntoConstraints = false
    view2View.translatesAutoresizingMaskIntoConstraints = false
    view3View.translatesAutoresizingMaskIntoConstraints = false
    view4View.translatesAutoresizingMaskIntoConstraints = false
    view5View.translatesAutoresizingMaskIntoConstraints = false

    let heightAnchorConstraint = heightAnchor.constraint(equalToConstant: 600)
    let view2ViewView3ViewHeightAnchorSiblingConstraint = view2View
      .heightAnchor
      .constraint(equalTo: view3View.heightAnchor)
    let view1ViewTopAnchorConstraint = view1View.topAnchor.constraint(equalTo: topAnchor, constant: 24)
    let view1ViewLeadingAnchorConstraint = view1View.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24)
    let view1ViewTrailingAnchorConstraint = view1View.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24)
    let view2ViewTopAnchorConstraint = view2View.topAnchor.constraint(equalTo: view1View.bottomAnchor)
    let view2ViewLeadingAnchorConstraint = view2View.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24)
    let view2ViewTrailingAnchorConstraint = view2View.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24)
    let view3ViewBottomAnchorConstraint = view3View.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24)
    let view3ViewTopAnchorConstraint = view3View.topAnchor.constraint(equalTo: view2View.bottomAnchor)
    let view3ViewLeadingAnchorConstraint = view3View.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24)
    let view3ViewTrailingAnchorConstraint = view3View.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24)
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
      view2ViewView3ViewHeightAnchorSiblingConstraint,
      view1ViewTopAnchorConstraint,
      view1ViewLeadingAnchorConstraint,
      view1ViewTrailingAnchorConstraint,
      view2ViewTopAnchorConstraint,
      view2ViewLeadingAnchorConstraint,
      view2ViewTrailingAnchorConstraint,
      view3ViewBottomAnchorConstraint,
      view3ViewTopAnchorConstraint,
      view3ViewLeadingAnchorConstraint,
      view3ViewTrailingAnchorConstraint,
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
