import UIKit
import Foundation

// MARK: - NestedLayout

public class NestedLayout: UIView {

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

  private var topRowView = UIView(frame: .zero)
  private var column1View = UIView(frame: .zero)
  private var view1View = UIView(frame: .zero)
  private var localAssetView = LocalAsset()
  private var view2View = UIView(frame: .zero)
  private var localAsset2View = LocalAsset()
  private var view3View = UIView(frame: .zero)
  private var localAsset3View = LocalAsset()
  private var column2View = UIView(frame: .zero)
  private var view4View = UIView(frame: .zero)
  private var localAsset4View = LocalAsset()
  private var view5View = UIView(frame: .zero)
  private var localAsset5View = LocalAsset()
  private var view6View = UIView(frame: .zero)
  private var localAsset6View = LocalAsset()
  private var column3View = UIView(frame: .zero)
  private var view7View = UIView(frame: .zero)
  private var localAsset7View = LocalAsset()
  private var view8View = UIView(frame: .zero)
  private var localAsset8View = LocalAsset()
  private var view9View = UIView(frame: .zero)
  private var localAsset9View = LocalAsset()
  private var bottomRowView = UIView(frame: .zero)
  private var column4View = UIView(frame: .zero)
  private var view10View = UIView(frame: .zero)
  private var localAsset10View = LocalAsset()
  private var view11View = UIView(frame: .zero)
  private var localAsset11View = LocalAsset()
  private var view12View = UIView(frame: .zero)
  private var localAsset12View = LocalAsset()
  private var column5View = UIView(frame: .zero)
  private var view13View = UIView(frame: .zero)
  private var localAsset13View = LocalAsset()
  private var view14View = UIView(frame: .zero)
  private var localAsset14View = LocalAsset()
  private var view15View = UIView(frame: .zero)
  private var localAsset15View = LocalAsset()
  private var column6View = UIView(frame: .zero)
  private var view16View = UIView(frame: .zero)
  private var localAsset16View = LocalAsset()
  private var view17View = UIView(frame: .zero)
  private var localAsset17View = LocalAsset()
  private var view18View = UIView(frame: .zero)
  private var localAsset18View = LocalAsset()

  private func setUpViews() {
    addSubview(topRowView)
    addSubview(bottomRowView)
    topRowView.addSubview(column1View)
    topRowView.addSubview(column2View)
    topRowView.addSubview(column3View)
    column1View.addSubview(view1View)
    column1View.addSubview(view2View)
    column1View.addSubview(view3View)
    view1View.addSubview(localAssetView)
    view2View.addSubview(localAsset2View)
    view3View.addSubview(localAsset3View)
    column2View.addSubview(view4View)
    column2View.addSubview(view5View)
    column2View.addSubview(view6View)
    view4View.addSubview(localAsset4View)
    view5View.addSubview(localAsset5View)
    view6View.addSubview(localAsset6View)
    column3View.addSubview(view7View)
    column3View.addSubview(view8View)
    column3View.addSubview(view9View)
    view7View.addSubview(localAsset7View)
    view8View.addSubview(localAsset8View)
    view9View.addSubview(localAsset9View)
    bottomRowView.addSubview(column4View)
    bottomRowView.addSubview(column5View)
    bottomRowView.addSubview(column6View)
    column4View.addSubview(view10View)
    column4View.addSubview(view11View)
    column4View.addSubview(view12View)
    view10View.addSubview(localAsset10View)
    view11View.addSubview(localAsset11View)
    view12View.addSubview(localAsset12View)
    column5View.addSubview(view13View)
    column5View.addSubview(view14View)
    column5View.addSubview(view15View)
    view13View.addSubview(localAsset13View)
    view14View.addSubview(localAsset14View)
    view15View.addSubview(localAsset15View)
    column6View.addSubview(view16View)
    column6View.addSubview(view17View)
    column6View.addSubview(view18View)
    view16View.addSubview(localAsset16View)
    view17View.addSubview(localAsset17View)
    view18View.addSubview(localAsset18View)

    view1View.backgroundColor = Colors.grey50
    view2View.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
    view3View.backgroundColor = Colors.grey50
    view5View.backgroundColor = Colors.grey50
    view7View.backgroundColor = Colors.grey50
    view9View.backgroundColor = Colors.grey50
    view10View.backgroundColor = Colors.grey50
    view11View.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
    view12View.backgroundColor = Colors.grey50
    view14View.backgroundColor = Colors.grey50
    view16View.backgroundColor = Colors.grey50
    view18View.backgroundColor = Colors.grey50
  }

  private func setUpConstraints() {
    translatesAutoresizingMaskIntoConstraints = false
    topRowView.translatesAutoresizingMaskIntoConstraints = false
    bottomRowView.translatesAutoresizingMaskIntoConstraints = false
    column1View.translatesAutoresizingMaskIntoConstraints = false
    column2View.translatesAutoresizingMaskIntoConstraints = false
    column3View.translatesAutoresizingMaskIntoConstraints = false
    view1View.translatesAutoresizingMaskIntoConstraints = false
    view2View.translatesAutoresizingMaskIntoConstraints = false
    view3View.translatesAutoresizingMaskIntoConstraints = false
    localAssetView.translatesAutoresizingMaskIntoConstraints = false
    localAsset2View.translatesAutoresizingMaskIntoConstraints = false
    localAsset3View.translatesAutoresizingMaskIntoConstraints = false
    view4View.translatesAutoresizingMaskIntoConstraints = false
    view5View.translatesAutoresizingMaskIntoConstraints = false
    view6View.translatesAutoresizingMaskIntoConstraints = false
    localAsset4View.translatesAutoresizingMaskIntoConstraints = false
    localAsset5View.translatesAutoresizingMaskIntoConstraints = false
    localAsset6View.translatesAutoresizingMaskIntoConstraints = false
    view7View.translatesAutoresizingMaskIntoConstraints = false
    view8View.translatesAutoresizingMaskIntoConstraints = false
    view9View.translatesAutoresizingMaskIntoConstraints = false
    localAsset7View.translatesAutoresizingMaskIntoConstraints = false
    localAsset8View.translatesAutoresizingMaskIntoConstraints = false
    localAsset9View.translatesAutoresizingMaskIntoConstraints = false
    column4View.translatesAutoresizingMaskIntoConstraints = false
    column5View.translatesAutoresizingMaskIntoConstraints = false
    column6View.translatesAutoresizingMaskIntoConstraints = false
    view10View.translatesAutoresizingMaskIntoConstraints = false
    view11View.translatesAutoresizingMaskIntoConstraints = false
    view12View.translatesAutoresizingMaskIntoConstraints = false
    localAsset10View.translatesAutoresizingMaskIntoConstraints = false
    localAsset11View.translatesAutoresizingMaskIntoConstraints = false
    localAsset12View.translatesAutoresizingMaskIntoConstraints = false
    view13View.translatesAutoresizingMaskIntoConstraints = false
    view14View.translatesAutoresizingMaskIntoConstraints = false
    view15View.translatesAutoresizingMaskIntoConstraints = false
    localAsset13View.translatesAutoresizingMaskIntoConstraints = false
    localAsset14View.translatesAutoresizingMaskIntoConstraints = false
    localAsset15View.translatesAutoresizingMaskIntoConstraints = false
    view16View.translatesAutoresizingMaskIntoConstraints = false
    view17View.translatesAutoresizingMaskIntoConstraints = false
    view18View.translatesAutoresizingMaskIntoConstraints = false
    localAsset16View.translatesAutoresizingMaskIntoConstraints = false
    localAsset17View.translatesAutoresizingMaskIntoConstraints = false
    localAsset18View.translatesAutoresizingMaskIntoConstraints = false

    let topRowViewTopAnchorConstraint = topRowView.topAnchor.constraint(equalTo: topAnchor)
    let topRowViewLeadingAnchorConstraint = topRowView.leadingAnchor.constraint(equalTo: leadingAnchor)
    let topRowViewTrailingAnchorConstraint = topRowView.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor)
    let bottomRowViewBottomAnchorConstraint = bottomRowView.bottomAnchor.constraint(equalTo: bottomAnchor)
    let bottomRowViewTopAnchorConstraint = bottomRowView.topAnchor.constraint(equalTo: topRowView.bottomAnchor)
    let bottomRowViewLeadingAnchorConstraint = bottomRowView.leadingAnchor.constraint(equalTo: leadingAnchor)
    let bottomRowViewTrailingAnchorConstraint = bottomRowView
      .trailingAnchor
      .constraint(lessThanOrEqualTo: trailingAnchor)
    let column1ViewHeightAnchorParentConstraint = column1View
      .heightAnchor
      .constraint(lessThanOrEqualTo: topRowView.heightAnchor)
    let column2ViewHeightAnchorParentConstraint = column2View
      .heightAnchor
      .constraint(lessThanOrEqualTo: topRowView.heightAnchor)
    let column3ViewHeightAnchorParentConstraint = column3View
      .heightAnchor
      .constraint(lessThanOrEqualTo: topRowView.heightAnchor)
    let column1ViewLeadingAnchorConstraint = column1View.leadingAnchor.constraint(equalTo: topRowView.leadingAnchor)
    let column1ViewTopAnchorConstraint = column1View.topAnchor.constraint(equalTo: topRowView.topAnchor)
    let column1ViewBottomAnchorConstraint = column1View.bottomAnchor.constraint(equalTo: topRowView.bottomAnchor)
    let column2ViewLeadingAnchorConstraint = column2View.leadingAnchor.constraint(equalTo: column1View.trailingAnchor)
    let column2ViewTopAnchorConstraint = column2View.topAnchor.constraint(equalTo: topRowView.topAnchor)
    let column2ViewBottomAnchorConstraint = column2View.bottomAnchor.constraint(equalTo: topRowView.bottomAnchor)
    let column3ViewTrailingAnchorConstraint = column3View.trailingAnchor.constraint(equalTo: topRowView.trailingAnchor)
    let column3ViewLeadingAnchorConstraint = column3View.leadingAnchor.constraint(equalTo: column2View.trailingAnchor)
    let column3ViewTopAnchorConstraint = column3View.topAnchor.constraint(equalTo: topRowView.topAnchor)
    let column3ViewBottomAnchorConstraint = column3View.bottomAnchor.constraint(equalTo: topRowView.bottomAnchor)
    let column4ViewHeightAnchorParentConstraint = column4View
      .heightAnchor
      .constraint(lessThanOrEqualTo: bottomRowView.heightAnchor)
    let column5ViewHeightAnchorParentConstraint = column5View
      .heightAnchor
      .constraint(lessThanOrEqualTo: bottomRowView.heightAnchor)
    let column6ViewHeightAnchorParentConstraint = column6View
      .heightAnchor
      .constraint(lessThanOrEqualTo: bottomRowView.heightAnchor)
    let column4ViewLeadingAnchorConstraint = column4View.leadingAnchor.constraint(equalTo: bottomRowView.leadingAnchor)
    let column4ViewTopAnchorConstraint = column4View.topAnchor.constraint(equalTo: bottomRowView.topAnchor)
    let column4ViewBottomAnchorConstraint = column4View.bottomAnchor.constraint(equalTo: bottomRowView.bottomAnchor)
    let column5ViewLeadingAnchorConstraint = column5View.leadingAnchor.constraint(equalTo: column4View.trailingAnchor)
    let column5ViewTopAnchorConstraint = column5View.topAnchor.constraint(equalTo: bottomRowView.topAnchor)
    let column5ViewBottomAnchorConstraint = column5View.bottomAnchor.constraint(equalTo: bottomRowView.bottomAnchor)
    let column6ViewTrailingAnchorConstraint = column6View
      .trailingAnchor
      .constraint(equalTo: bottomRowView.trailingAnchor)
    let column6ViewLeadingAnchorConstraint = column6View.leadingAnchor.constraint(equalTo: column5View.trailingAnchor)
    let column6ViewTopAnchorConstraint = column6View.topAnchor.constraint(equalTo: bottomRowView.topAnchor)
    let column6ViewBottomAnchorConstraint = column6View.bottomAnchor.constraint(equalTo: bottomRowView.bottomAnchor)
    let column1ViewWidthAnchorConstraint = column1View.widthAnchor.constraint(equalToConstant: 150)
    let view1ViewTopAnchorConstraint = view1View.topAnchor.constraint(equalTo: column1View.topAnchor)
    let view1ViewLeadingAnchorConstraint = view1View.leadingAnchor.constraint(equalTo: column1View.leadingAnchor)
    let view2ViewTopAnchorConstraint = view2View.topAnchor.constraint(equalTo: view1View.bottomAnchor)
    let view2ViewLeadingAnchorConstraint = view2View.leadingAnchor.constraint(equalTo: column1View.leadingAnchor)
    let view3ViewBottomAnchorConstraint = view3View.bottomAnchor.constraint(equalTo: column1View.bottomAnchor)
    let view3ViewTopAnchorConstraint = view3View.topAnchor.constraint(equalTo: view2View.bottomAnchor)
    let view3ViewLeadingAnchorConstraint = view3View.leadingAnchor.constraint(equalTo: column1View.leadingAnchor)
    let column2ViewWidthAnchorConstraint = column2View.widthAnchor.constraint(equalToConstant: 150)
    let view4ViewTopAnchorConstraint = view4View.topAnchor.constraint(equalTo: column2View.topAnchor)
    let view4ViewLeadingAnchorConstraint = view4View.leadingAnchor.constraint(equalTo: column2View.leadingAnchor)
    let view5ViewTopAnchorConstraint = view5View.topAnchor.constraint(equalTo: view4View.bottomAnchor)
    let view5ViewLeadingAnchorConstraint = view5View.leadingAnchor.constraint(equalTo: column2View.leadingAnchor)
    let view6ViewBottomAnchorConstraint = view6View.bottomAnchor.constraint(equalTo: column2View.bottomAnchor)
    let view6ViewTopAnchorConstraint = view6View.topAnchor.constraint(equalTo: view5View.bottomAnchor)
    let view6ViewLeadingAnchorConstraint = view6View.leadingAnchor.constraint(equalTo: column2View.leadingAnchor)
    let column3ViewWidthAnchorConstraint = column3View.widthAnchor.constraint(equalToConstant: 150)
    let view7ViewTopAnchorConstraint = view7View.topAnchor.constraint(equalTo: column3View.topAnchor)
    let view7ViewLeadingAnchorConstraint = view7View.leadingAnchor.constraint(equalTo: column3View.leadingAnchor)
    let view8ViewTopAnchorConstraint = view8View.topAnchor.constraint(equalTo: view7View.bottomAnchor)
    let view8ViewLeadingAnchorConstraint = view8View.leadingAnchor.constraint(equalTo: column3View.leadingAnchor)
    let view9ViewBottomAnchorConstraint = view9View.bottomAnchor.constraint(equalTo: column3View.bottomAnchor)
    let view9ViewTopAnchorConstraint = view9View.topAnchor.constraint(equalTo: view8View.bottomAnchor)
    let view9ViewLeadingAnchorConstraint = view9View.leadingAnchor.constraint(equalTo: column3View.leadingAnchor)
    let view1ViewHeightAnchorConstraint = view1View.heightAnchor.constraint(equalToConstant: 150)
    let view1ViewWidthAnchorConstraint = view1View.widthAnchor.constraint(equalToConstant: 150)
    let localAssetViewTopAnchorConstraint = localAssetView.topAnchor.constraint(equalTo: view1View.topAnchor)
    let localAssetViewLeadingAnchorConstraint = localAssetView
      .leadingAnchor
      .constraint(equalTo: view1View.leadingAnchor)
    let localAssetViewTrailingAnchorConstraint = localAssetView
      .trailingAnchor
      .constraint(equalTo: view1View.trailingAnchor)
    let view2ViewHeightAnchorConstraint = view2View.heightAnchor.constraint(equalToConstant: 150)
    let view2ViewWidthAnchorConstraint = view2View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset2ViewTopAnchorConstraint = localAsset2View.topAnchor.constraint(equalTo: view2View.topAnchor)
    let localAsset2ViewLeadingAnchorConstraint = localAsset2View
      .leadingAnchor
      .constraint(equalTo: view2View.leadingAnchor)
    let localAsset2ViewTrailingAnchorConstraint = localAsset2View
      .trailingAnchor
      .constraint(equalTo: view2View.trailingAnchor)
    let view3ViewHeightAnchorConstraint = view3View.heightAnchor.constraint(equalToConstant: 150)
    let view3ViewWidthAnchorConstraint = view3View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset3ViewTopAnchorConstraint = localAsset3View.topAnchor.constraint(equalTo: view3View.topAnchor)
    let localAsset3ViewLeadingAnchorConstraint = localAsset3View
      .leadingAnchor
      .constraint(equalTo: view3View.leadingAnchor)
    let localAsset3ViewTrailingAnchorConstraint = localAsset3View
      .trailingAnchor
      .constraint(equalTo: view3View.trailingAnchor)
    let view4ViewHeightAnchorConstraint = view4View.heightAnchor.constraint(equalToConstant: 150)
    let view4ViewWidthAnchorConstraint = view4View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset4ViewTopAnchorConstraint = localAsset4View.topAnchor.constraint(equalTo: view4View.topAnchor)
    let localAsset4ViewLeadingAnchorConstraint = localAsset4View
      .leadingAnchor
      .constraint(equalTo: view4View.leadingAnchor)
    let localAsset4ViewCenterXAnchorConstraint = localAsset4View
      .centerXAnchor
      .constraint(equalTo: view4View.centerXAnchor)
    let localAsset4ViewTrailingAnchorConstraint = localAsset4View
      .trailingAnchor
      .constraint(equalTo: view4View.trailingAnchor)
    let view5ViewHeightAnchorConstraint = view5View.heightAnchor.constraint(equalToConstant: 150)
    let view5ViewWidthAnchorConstraint = view5View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset5ViewTopAnchorConstraint = localAsset5View.topAnchor.constraint(equalTo: view5View.topAnchor)
    let localAsset5ViewLeadingAnchorConstraint = localAsset5View
      .leadingAnchor
      .constraint(equalTo: view5View.leadingAnchor)
    let localAsset5ViewCenterXAnchorConstraint = localAsset5View
      .centerXAnchor
      .constraint(equalTo: view5View.centerXAnchor)
    let localAsset5ViewTrailingAnchorConstraint = localAsset5View
      .trailingAnchor
      .constraint(equalTo: view5View.trailingAnchor)
    let view6ViewHeightAnchorConstraint = view6View.heightAnchor.constraint(equalToConstant: 150)
    let view6ViewWidthAnchorConstraint = view6View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset6ViewTopAnchorConstraint = localAsset6View.topAnchor.constraint(equalTo: view6View.topAnchor)
    let localAsset6ViewLeadingAnchorConstraint = localAsset6View
      .leadingAnchor
      .constraint(equalTo: view6View.leadingAnchor)
    let localAsset6ViewCenterXAnchorConstraint = localAsset6View
      .centerXAnchor
      .constraint(equalTo: view6View.centerXAnchor)
    let localAsset6ViewTrailingAnchorConstraint = localAsset6View
      .trailingAnchor
      .constraint(equalTo: view6View.trailingAnchor)
    let view7ViewHeightAnchorConstraint = view7View.heightAnchor.constraint(equalToConstant: 150)
    let view7ViewWidthAnchorConstraint = view7View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset7ViewTopAnchorConstraint = localAsset7View.topAnchor.constraint(equalTo: view7View.topAnchor)
    let localAsset7ViewLeadingAnchorConstraint = localAsset7View
      .leadingAnchor
      .constraint(equalTo: view7View.leadingAnchor)
    let localAsset7ViewTrailingAnchorConstraint = localAsset7View
      .trailingAnchor
      .constraint(equalTo: view7View.trailingAnchor)
    let view8ViewHeightAnchorConstraint = view8View.heightAnchor.constraint(equalToConstant: 150)
    let view8ViewWidthAnchorConstraint = view8View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset8ViewTopAnchorConstraint = localAsset8View.topAnchor.constraint(equalTo: view8View.topAnchor)
    let localAsset8ViewLeadingAnchorConstraint = localAsset8View
      .leadingAnchor
      .constraint(equalTo: view8View.leadingAnchor)
    let localAsset8ViewTrailingAnchorConstraint = localAsset8View
      .trailingAnchor
      .constraint(equalTo: view8View.trailingAnchor)
    let view9ViewHeightAnchorConstraint = view9View.heightAnchor.constraint(equalToConstant: 150)
    let view9ViewWidthAnchorConstraint = view9View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset9ViewTopAnchorConstraint = localAsset9View.topAnchor.constraint(equalTo: view9View.topAnchor)
    let localAsset9ViewLeadingAnchorConstraint = localAsset9View
      .leadingAnchor
      .constraint(equalTo: view9View.leadingAnchor)
    let localAsset9ViewTrailingAnchorConstraint = localAsset9View
      .trailingAnchor
      .constraint(equalTo: view9View.trailingAnchor)
    let column4ViewWidthAnchorConstraint = column4View.widthAnchor.constraint(equalToConstant: 150)
    let view10ViewTopAnchorConstraint = view10View.topAnchor.constraint(equalTo: column4View.topAnchor)
    let view10ViewLeadingAnchorConstraint = view10View.leadingAnchor.constraint(equalTo: column4View.leadingAnchor)
    let view11ViewTopAnchorConstraint = view11View.topAnchor.constraint(equalTo: view10View.bottomAnchor)
    let view11ViewLeadingAnchorConstraint = view11View.leadingAnchor.constraint(equalTo: column4View.leadingAnchor)
    let view12ViewBottomAnchorConstraint = view12View.bottomAnchor.constraint(equalTo: column4View.bottomAnchor)
    let view12ViewTopAnchorConstraint = view12View.topAnchor.constraint(equalTo: view11View.bottomAnchor)
    let view12ViewLeadingAnchorConstraint = view12View.leadingAnchor.constraint(equalTo: column4View.leadingAnchor)
    let column5ViewWidthAnchorConstraint = column5View.widthAnchor.constraint(equalToConstant: 150)
    let view13ViewTopAnchorConstraint = view13View.topAnchor.constraint(equalTo: column5View.topAnchor)
    let view13ViewLeadingAnchorConstraint = view13View.leadingAnchor.constraint(equalTo: column5View.leadingAnchor)
    let view14ViewTopAnchorConstraint = view14View.topAnchor.constraint(equalTo: view13View.bottomAnchor)
    let view14ViewLeadingAnchorConstraint = view14View.leadingAnchor.constraint(equalTo: column5View.leadingAnchor)
    let view15ViewBottomAnchorConstraint = view15View.bottomAnchor.constraint(equalTo: column5View.bottomAnchor)
    let view15ViewTopAnchorConstraint = view15View.topAnchor.constraint(equalTo: view14View.bottomAnchor)
    let view15ViewLeadingAnchorConstraint = view15View.leadingAnchor.constraint(equalTo: column5View.leadingAnchor)
    let column6ViewWidthAnchorConstraint = column6View.widthAnchor.constraint(equalToConstant: 150)
    let view16ViewTopAnchorConstraint = view16View.topAnchor.constraint(equalTo: column6View.topAnchor)
    let view16ViewLeadingAnchorConstraint = view16View.leadingAnchor.constraint(equalTo: column6View.leadingAnchor)
    let view17ViewTopAnchorConstraint = view17View.topAnchor.constraint(equalTo: view16View.bottomAnchor)
    let view17ViewLeadingAnchorConstraint = view17View.leadingAnchor.constraint(equalTo: column6View.leadingAnchor)
    let view18ViewBottomAnchorConstraint = view18View.bottomAnchor.constraint(equalTo: column6View.bottomAnchor)
    let view18ViewTopAnchorConstraint = view18View.topAnchor.constraint(equalTo: view17View.bottomAnchor)
    let view18ViewLeadingAnchorConstraint = view18View.leadingAnchor.constraint(equalTo: column6View.leadingAnchor)
    let view10ViewHeightAnchorConstraint = view10View.heightAnchor.constraint(equalToConstant: 150)
    let view10ViewWidthAnchorConstraint = view10View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset10ViewLeadingAnchorConstraint = localAsset10View
      .leadingAnchor
      .constraint(equalTo: view10View.leadingAnchor)
    let localAsset10ViewTopAnchorConstraint = localAsset10View.topAnchor.constraint(equalTo: view10View.topAnchor)
    let localAsset10ViewBottomAnchorConstraint = localAsset10View
      .bottomAnchor
      .constraint(equalTo: view10View.bottomAnchor)
    let view11ViewHeightAnchorConstraint = view11View.heightAnchor.constraint(equalToConstant: 150)
    let view11ViewWidthAnchorConstraint = view11View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset11ViewLeadingAnchorConstraint = localAsset11View
      .leadingAnchor
      .constraint(equalTo: view11View.leadingAnchor)
    let localAsset11ViewTopAnchorConstraint = localAsset11View.topAnchor.constraint(equalTo: view11View.topAnchor)
    let localAsset11ViewCenterYAnchorConstraint = localAsset11View
      .centerYAnchor
      .constraint(equalTo: view11View.centerYAnchor)
    let localAsset11ViewBottomAnchorConstraint = localAsset11View
      .bottomAnchor
      .constraint(equalTo: view11View.bottomAnchor)
    let view12ViewHeightAnchorConstraint = view12View.heightAnchor.constraint(equalToConstant: 150)
    let view12ViewWidthAnchorConstraint = view12View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset12ViewLeadingAnchorConstraint = localAsset12View
      .leadingAnchor
      .constraint(equalTo: view12View.leadingAnchor)
    let localAsset12ViewTopAnchorConstraint = localAsset12View.topAnchor.constraint(equalTo: view12View.topAnchor)
    let localAsset12ViewBottomAnchorConstraint = localAsset12View
      .bottomAnchor
      .constraint(equalTo: view12View.bottomAnchor)
    let view13ViewHeightAnchorConstraint = view13View.heightAnchor.constraint(equalToConstant: 150)
    let view13ViewWidthAnchorConstraint = view13View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset13ViewLeadingAnchorConstraint = localAsset13View
      .leadingAnchor
      .constraint(equalTo: view13View.leadingAnchor)
    let localAsset13ViewTopAnchorConstraint = localAsset13View.topAnchor.constraint(equalTo: view13View.topAnchor)
    let localAsset13ViewBottomAnchorConstraint = localAsset13View
      .bottomAnchor
      .constraint(equalTo: view13View.bottomAnchor)
    let view14ViewHeightAnchorConstraint = view14View.heightAnchor.constraint(equalToConstant: 150)
    let view14ViewWidthAnchorConstraint = view14View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset14ViewLeadingAnchorConstraint = localAsset14View
      .leadingAnchor
      .constraint(equalTo: view14View.leadingAnchor)
    let localAsset14ViewTopAnchorConstraint = localAsset14View.topAnchor.constraint(equalTo: view14View.topAnchor)
    let localAsset14ViewCenterYAnchorConstraint = localAsset14View
      .centerYAnchor
      .constraint(equalTo: view14View.centerYAnchor)
    let localAsset14ViewBottomAnchorConstraint = localAsset14View
      .bottomAnchor
      .constraint(equalTo: view14View.bottomAnchor)
    let view15ViewHeightAnchorConstraint = view15View.heightAnchor.constraint(equalToConstant: 150)
    let view15ViewWidthAnchorConstraint = view15View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset15ViewLeadingAnchorConstraint = localAsset15View
      .leadingAnchor
      .constraint(equalTo: view15View.leadingAnchor)
    let localAsset15ViewTopAnchorConstraint = localAsset15View.topAnchor.constraint(equalTo: view15View.topAnchor)
    let localAsset15ViewBottomAnchorConstraint = localAsset15View
      .bottomAnchor
      .constraint(equalTo: view15View.bottomAnchor)
    let view16ViewHeightAnchorConstraint = view16View.heightAnchor.constraint(equalToConstant: 150)
    let view16ViewWidthAnchorConstraint = view16View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset16ViewLeadingAnchorConstraint = localAsset16View
      .leadingAnchor
      .constraint(equalTo: view16View.leadingAnchor)
    let localAsset16ViewTopAnchorConstraint = localAsset16View.topAnchor.constraint(equalTo: view16View.topAnchor)
    let localAsset16ViewBottomAnchorConstraint = localAsset16View
      .bottomAnchor
      .constraint(equalTo: view16View.bottomAnchor)
    let view17ViewHeightAnchorConstraint = view17View.heightAnchor.constraint(equalToConstant: 150)
    let view17ViewWidthAnchorConstraint = view17View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset17ViewLeadingAnchorConstraint = localAsset17View
      .leadingAnchor
      .constraint(equalTo: view17View.leadingAnchor)
    let localAsset17ViewTopAnchorConstraint = localAsset17View.topAnchor.constraint(equalTo: view17View.topAnchor)
    let localAsset17ViewCenterYAnchorConstraint = localAsset17View
      .centerYAnchor
      .constraint(equalTo: view17View.centerYAnchor)
    let localAsset17ViewBottomAnchorConstraint = localAsset17View
      .bottomAnchor
      .constraint(equalTo: view17View.bottomAnchor)
    let view18ViewHeightAnchorConstraint = view18View.heightAnchor.constraint(equalToConstant: 150)
    let view18ViewWidthAnchorConstraint = view18View.widthAnchor.constraint(equalToConstant: 150)
    let localAsset18ViewLeadingAnchorConstraint = localAsset18View
      .leadingAnchor
      .constraint(equalTo: view18View.leadingAnchor)
    let localAsset18ViewTopAnchorConstraint = localAsset18View.topAnchor.constraint(equalTo: view18View.topAnchor)
    let localAsset18ViewBottomAnchorConstraint = localAsset18View
      .bottomAnchor
      .constraint(equalTo: view18View.bottomAnchor)

    column1ViewHeightAnchorParentConstraint.priority = UILayoutPriority.defaultLow
    column2ViewHeightAnchorParentConstraint.priority = UILayoutPriority.defaultLow
    column3ViewHeightAnchorParentConstraint.priority = UILayoutPriority.defaultLow
    column4ViewHeightAnchorParentConstraint.priority = UILayoutPriority.defaultLow
    column5ViewHeightAnchorParentConstraint.priority = UILayoutPriority.defaultLow
    column6ViewHeightAnchorParentConstraint.priority = UILayoutPriority.defaultLow

    NSLayoutConstraint.activate([
      topRowViewTopAnchorConstraint,
      topRowViewLeadingAnchorConstraint,
      topRowViewTrailingAnchorConstraint,
      bottomRowViewBottomAnchorConstraint,
      bottomRowViewTopAnchorConstraint,
      bottomRowViewLeadingAnchorConstraint,
      bottomRowViewTrailingAnchorConstraint,
      column1ViewHeightAnchorParentConstraint,
      column2ViewHeightAnchorParentConstraint,
      column3ViewHeightAnchorParentConstraint,
      column1ViewLeadingAnchorConstraint,
      column1ViewTopAnchorConstraint,
      column1ViewBottomAnchorConstraint,
      column2ViewLeadingAnchorConstraint,
      column2ViewTopAnchorConstraint,
      column2ViewBottomAnchorConstraint,
      column3ViewTrailingAnchorConstraint,
      column3ViewLeadingAnchorConstraint,
      column3ViewTopAnchorConstraint,
      column3ViewBottomAnchorConstraint,
      column4ViewHeightAnchorParentConstraint,
      column5ViewHeightAnchorParentConstraint,
      column6ViewHeightAnchorParentConstraint,
      column4ViewLeadingAnchorConstraint,
      column4ViewTopAnchorConstraint,
      column4ViewBottomAnchorConstraint,
      column5ViewLeadingAnchorConstraint,
      column5ViewTopAnchorConstraint,
      column5ViewBottomAnchorConstraint,
      column6ViewTrailingAnchorConstraint,
      column6ViewLeadingAnchorConstraint,
      column6ViewTopAnchorConstraint,
      column6ViewBottomAnchorConstraint,
      column1ViewWidthAnchorConstraint,
      view1ViewTopAnchorConstraint,
      view1ViewLeadingAnchorConstraint,
      view2ViewTopAnchorConstraint,
      view2ViewLeadingAnchorConstraint,
      view3ViewBottomAnchorConstraint,
      view3ViewTopAnchorConstraint,
      view3ViewLeadingAnchorConstraint,
      column2ViewWidthAnchorConstraint,
      view4ViewTopAnchorConstraint,
      view4ViewLeadingAnchorConstraint,
      view5ViewTopAnchorConstraint,
      view5ViewLeadingAnchorConstraint,
      view6ViewBottomAnchorConstraint,
      view6ViewTopAnchorConstraint,
      view6ViewLeadingAnchorConstraint,
      column3ViewWidthAnchorConstraint,
      view7ViewTopAnchorConstraint,
      view7ViewLeadingAnchorConstraint,
      view8ViewTopAnchorConstraint,
      view8ViewLeadingAnchorConstraint,
      view9ViewBottomAnchorConstraint,
      view9ViewTopAnchorConstraint,
      view9ViewLeadingAnchorConstraint,
      view1ViewHeightAnchorConstraint,
      view1ViewWidthAnchorConstraint,
      localAssetViewTopAnchorConstraint,
      localAssetViewLeadingAnchorConstraint,
      localAssetViewTrailingAnchorConstraint,
      view2ViewHeightAnchorConstraint,
      view2ViewWidthAnchorConstraint,
      localAsset2ViewTopAnchorConstraint,
      localAsset2ViewLeadingAnchorConstraint,
      localAsset2ViewTrailingAnchorConstraint,
      view3ViewHeightAnchorConstraint,
      view3ViewWidthAnchorConstraint,
      localAsset3ViewTopAnchorConstraint,
      localAsset3ViewLeadingAnchorConstraint,
      localAsset3ViewTrailingAnchorConstraint,
      view4ViewHeightAnchorConstraint,
      view4ViewWidthAnchorConstraint,
      localAsset4ViewTopAnchorConstraint,
      localAsset4ViewLeadingAnchorConstraint,
      localAsset4ViewCenterXAnchorConstraint,
      localAsset4ViewTrailingAnchorConstraint,
      view5ViewHeightAnchorConstraint,
      view5ViewWidthAnchorConstraint,
      localAsset5ViewTopAnchorConstraint,
      localAsset5ViewLeadingAnchorConstraint,
      localAsset5ViewCenterXAnchorConstraint,
      localAsset5ViewTrailingAnchorConstraint,
      view6ViewHeightAnchorConstraint,
      view6ViewWidthAnchorConstraint,
      localAsset6ViewTopAnchorConstraint,
      localAsset6ViewLeadingAnchorConstraint,
      localAsset6ViewCenterXAnchorConstraint,
      localAsset6ViewTrailingAnchorConstraint,
      view7ViewHeightAnchorConstraint,
      view7ViewWidthAnchorConstraint,
      localAsset7ViewTopAnchorConstraint,
      localAsset7ViewLeadingAnchorConstraint,
      localAsset7ViewTrailingAnchorConstraint,
      view8ViewHeightAnchorConstraint,
      view8ViewWidthAnchorConstraint,
      localAsset8ViewTopAnchorConstraint,
      localAsset8ViewLeadingAnchorConstraint,
      localAsset8ViewTrailingAnchorConstraint,
      view9ViewHeightAnchorConstraint,
      view9ViewWidthAnchorConstraint,
      localAsset9ViewTopAnchorConstraint,
      localAsset9ViewLeadingAnchorConstraint,
      localAsset9ViewTrailingAnchorConstraint,
      column4ViewWidthAnchorConstraint,
      view10ViewTopAnchorConstraint,
      view10ViewLeadingAnchorConstraint,
      view11ViewTopAnchorConstraint,
      view11ViewLeadingAnchorConstraint,
      view12ViewBottomAnchorConstraint,
      view12ViewTopAnchorConstraint,
      view12ViewLeadingAnchorConstraint,
      column5ViewWidthAnchorConstraint,
      view13ViewTopAnchorConstraint,
      view13ViewLeadingAnchorConstraint,
      view14ViewTopAnchorConstraint,
      view14ViewLeadingAnchorConstraint,
      view15ViewBottomAnchorConstraint,
      view15ViewTopAnchorConstraint,
      view15ViewLeadingAnchorConstraint,
      column6ViewWidthAnchorConstraint,
      view16ViewTopAnchorConstraint,
      view16ViewLeadingAnchorConstraint,
      view17ViewTopAnchorConstraint,
      view17ViewLeadingAnchorConstraint,
      view18ViewBottomAnchorConstraint,
      view18ViewTopAnchorConstraint,
      view18ViewLeadingAnchorConstraint,
      view10ViewHeightAnchorConstraint,
      view10ViewWidthAnchorConstraint,
      localAsset10ViewLeadingAnchorConstraint,
      localAsset10ViewTopAnchorConstraint,
      localAsset10ViewBottomAnchorConstraint,
      view11ViewHeightAnchorConstraint,
      view11ViewWidthAnchorConstraint,
      localAsset11ViewLeadingAnchorConstraint,
      localAsset11ViewTopAnchorConstraint,
      localAsset11ViewCenterYAnchorConstraint,
      localAsset11ViewBottomAnchorConstraint,
      view12ViewHeightAnchorConstraint,
      view12ViewWidthAnchorConstraint,
      localAsset12ViewLeadingAnchorConstraint,
      localAsset12ViewTopAnchorConstraint,
      localAsset12ViewBottomAnchorConstraint,
      view13ViewHeightAnchorConstraint,
      view13ViewWidthAnchorConstraint,
      localAsset13ViewLeadingAnchorConstraint,
      localAsset13ViewTopAnchorConstraint,
      localAsset13ViewBottomAnchorConstraint,
      view14ViewHeightAnchorConstraint,
      view14ViewWidthAnchorConstraint,
      localAsset14ViewLeadingAnchorConstraint,
      localAsset14ViewTopAnchorConstraint,
      localAsset14ViewCenterYAnchorConstraint,
      localAsset14ViewBottomAnchorConstraint,
      view15ViewHeightAnchorConstraint,
      view15ViewWidthAnchorConstraint,
      localAsset15ViewLeadingAnchorConstraint,
      localAsset15ViewTopAnchorConstraint,
      localAsset15ViewBottomAnchorConstraint,
      view16ViewHeightAnchorConstraint,
      view16ViewWidthAnchorConstraint,
      localAsset16ViewLeadingAnchorConstraint,
      localAsset16ViewTopAnchorConstraint,
      localAsset16ViewBottomAnchorConstraint,
      view17ViewHeightAnchorConstraint,
      view17ViewWidthAnchorConstraint,
      localAsset17ViewLeadingAnchorConstraint,
      localAsset17ViewTopAnchorConstraint,
      localAsset17ViewCenterYAnchorConstraint,
      localAsset17ViewBottomAnchorConstraint,
      view18ViewHeightAnchorConstraint,
      view18ViewWidthAnchorConstraint,
      localAsset18ViewLeadingAnchorConstraint,
      localAsset18ViewTopAnchorConstraint,
      localAsset18ViewBottomAnchorConstraint
    ])
  }

  private func update() {}
}
