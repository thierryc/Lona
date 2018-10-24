import UIKit
import Foundation

// MARK: - TextAlignment

public class TextAlignment: UIView {

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

  private var view1View = UIView(frame: .zero)
  private var imageView = UIImageView(frame: .zero)
  private var view2View = UIView(frame: .zero)
  private var textView = UILabel()
  private var text1View = UILabel()
  private var text2View = UILabel()
  private var text3View = UILabel()
  private var text4View = UILabel()
  private var view3View = UIView(frame: .zero)
  private var text5View = UILabel()
  private var view4View = UIView(frame: .zero)
  private var text6View = UILabel()
  private var view5View = UIView(frame: .zero)
  private var text7View = UILabel()
  private var view6View = UIView(frame: .zero)
  private var text8View = UILabel()
  private var rightAlignmentContainerView = UIView(frame: .zero)
  private var text9View = UILabel()
  private var text10View = UILabel()
  private var image1View = UIImageView(frame: .zero)

  private var textViewTextStyle = TextStyles.display1.with(alignment: .center)
  private var text1ViewTextStyle = TextStyles.subheading2.with(alignment: .center)
  private var text2ViewTextStyle = TextStyles.body1
  private var text3ViewTextStyle = TextStyles.body1.with(alignment: .right)
  private var text4ViewTextStyle = TextStyles.body1.with(alignment: .center)
  private var text5ViewTextStyle = TextStyles.body1
  private var text6ViewTextStyle = TextStyles.body1
  private var text7ViewTextStyle = TextStyles.body1.with(alignment: .center)
  private var text8ViewTextStyle = TextStyles.body1.with(alignment: .center)
  private var text9ViewTextStyle = TextStyles.body1
  private var text10ViewTextStyle = TextStyles.body1.with(alignment: .center)

  private func setUpViews() {
    textView.numberOfLines = 0
    text1View.numberOfLines = 0
    text2View.numberOfLines = 0
    text3View.numberOfLines = 0
    text4View.numberOfLines = 0
    text5View.numberOfLines = 0
    text6View.numberOfLines = 0
    text7View.numberOfLines = 0
    text8View.numberOfLines = 0
    text9View.numberOfLines = 0
    text10View.numberOfLines = 0

    addSubview(view1View)
    addSubview(view3View)
    addSubview(view4View)
    addSubview(view5View)
    addSubview(view6View)
    addSubview(rightAlignmentContainerView)
    view1View.addSubview(imageView)
    view1View.addSubview(view2View)
    view1View.addSubview(textView)
    view1View.addSubview(text1View)
    view1View.addSubview(text2View)
    view1View.addSubview(text3View)
    view1View.addSubview(text4View)
    view3View.addSubview(text5View)
    view4View.addSubview(text6View)
    view5View.addSubview(text7View)
    view6View.addSubview(text8View)
    rightAlignmentContainerView.addSubview(text9View)
    rightAlignmentContainerView.addSubview(text10View)
    rightAlignmentContainerView.addSubview(image1View)

    view1View.backgroundColor = Colors.indigo50
    imageView.image = #imageLiteral(resourceName: "icon_128x128")
    view2View.backgroundColor = #colorLiteral(red: 0.847058823529, green: 0.847058823529, blue: 0.847058823529, alpha: 1)
    textView.attributedText = textViewTextStyle.apply(to: "Welcome to Lona Studio")
    textViewTextStyle = TextStyles.display1.with(alignment: .center)
    textView.attributedText = textViewTextStyle.apply(to: textView.attributedText ?? NSAttributedString())
    text1View.attributedText = text1ViewTextStyle.apply(to: "Centered - Width: Fit")
    text1ViewTextStyle = TextStyles.subheading2.with(alignment: .center)
    text1View.attributedText = text1ViewTextStyle.apply(to: text1View.attributedText ?? NSAttributedString())
    text2View.attributedText = text2ViewTextStyle.apply(to: "Left aligned - Width: Fill")
    text3View.attributedText = text3ViewTextStyle.apply(to: "Right aligned - Width: Fill")
    text4View.attributedText = text4ViewTextStyle.apply(to: "Centered - Width: 80")
    view3View.backgroundColor = #colorLiteral(red: 0.847058823529, green: 0.847058823529, blue: 0.847058823529, alpha: 1)
    text5View.attributedText = text5ViewTextStyle.apply(to: "Left aligned text, Fit w/ secondary centering")
    view4View.backgroundColor = #colorLiteral(red: 0.847058823529, green: 0.847058823529, blue: 0.847058823529, alpha: 1)
    text6View.attributedText = text6ViewTextStyle.apply(to: "Left aligned text, Fixed w/ secondary centering")
    view5View.backgroundColor = #colorLiteral(red: 0.847058823529, green: 0.847058823529, blue: 0.847058823529, alpha: 1)
    text7View.attributedText = text7ViewTextStyle.apply(to: "Centered text, Fit parent no centering")
    view6View.backgroundColor = #colorLiteral(red: 0.847058823529, green: 0.847058823529, blue: 0.847058823529, alpha: 1)
    text8View.attributedText = text8ViewTextStyle.apply(to: "Centered text, Fixed parent no centering")
    rightAlignmentContainerView.backgroundColor = #colorLiteral(red: 0.847058823529, green: 0.847058823529, blue: 0.847058823529, alpha: 1)
    text9View.attributedText = text9ViewTextStyle.apply(to: "Fit Text")
    text10View.attributedText = text10ViewTextStyle.apply(to: "Fill and center aligned text")
    image1View.image = #imageLiteral(resourceName: "icon_128x128")
  }

  private func setUpConstraints() {
    translatesAutoresizingMaskIntoConstraints = false
    view1View.translatesAutoresizingMaskIntoConstraints = false
    view3View.translatesAutoresizingMaskIntoConstraints = false
    view4View.translatesAutoresizingMaskIntoConstraints = false
    view5View.translatesAutoresizingMaskIntoConstraints = false
    view6View.translatesAutoresizingMaskIntoConstraints = false
    rightAlignmentContainerView.translatesAutoresizingMaskIntoConstraints = false
    imageView.translatesAutoresizingMaskIntoConstraints = false
    view2View.translatesAutoresizingMaskIntoConstraints = false
    textView.translatesAutoresizingMaskIntoConstraints = false
    text1View.translatesAutoresizingMaskIntoConstraints = false
    text2View.translatesAutoresizingMaskIntoConstraints = false
    text3View.translatesAutoresizingMaskIntoConstraints = false
    text4View.translatesAutoresizingMaskIntoConstraints = false
    text5View.translatesAutoresizingMaskIntoConstraints = false
    text6View.translatesAutoresizingMaskIntoConstraints = false
    text7View.translatesAutoresizingMaskIntoConstraints = false
    text8View.translatesAutoresizingMaskIntoConstraints = false
    text9View.translatesAutoresizingMaskIntoConstraints = false
    text10View.translatesAutoresizingMaskIntoConstraints = false
    image1View.translatesAutoresizingMaskIntoConstraints = false

    let view1ViewTopAnchorConstraint = view1View.topAnchor.constraint(equalTo: topAnchor, constant: 10)
    let view1ViewLeadingAnchorConstraint = view1View.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
    let view1ViewTrailingAnchorConstraint = view1View.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
    let view3ViewTopAnchorConstraint = view3View.topAnchor.constraint(equalTo: view1View.bottomAnchor)
    let view3ViewLeadingAnchorConstraint = view3View.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
    let view3ViewTrailingAnchorConstraint = view3View
      .trailingAnchor
      .constraint(lessThanOrEqualTo: trailingAnchor, constant: -10)
    let view4ViewTopAnchorConstraint = view4View.topAnchor.constraint(equalTo: view3View.bottomAnchor)
    let view4ViewLeadingAnchorConstraint = view4View.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
    let view5ViewTopAnchorConstraint = view5View.topAnchor.constraint(equalTo: view4View.bottomAnchor)
    let view5ViewLeadingAnchorConstraint = view5View.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
    let view5ViewTrailingAnchorConstraint = view5View
      .trailingAnchor
      .constraint(lessThanOrEqualTo: trailingAnchor, constant: -10)
    let view6ViewTopAnchorConstraint = view6View.topAnchor.constraint(equalTo: view5View.bottomAnchor)
    let view6ViewLeadingAnchorConstraint = view6View.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
    let rightAlignmentContainerViewBottomAnchorConstraint = rightAlignmentContainerView
      .bottomAnchor
      .constraint(equalTo: bottomAnchor, constant: -10)
    let rightAlignmentContainerViewTopAnchorConstraint = rightAlignmentContainerView
      .topAnchor
      .constraint(equalTo: view6View.bottomAnchor)
    let rightAlignmentContainerViewLeadingAnchorConstraint = rightAlignmentContainerView
      .leadingAnchor
      .constraint(equalTo: leadingAnchor, constant: 10)
    let rightAlignmentContainerViewTrailingAnchorConstraint = rightAlignmentContainerView
      .trailingAnchor
      .constraint(equalTo: trailingAnchor, constant: -10)
    let imageViewTopAnchorConstraint = imageView.topAnchor.constraint(equalTo: view1View.topAnchor)
    let imageViewCenterXAnchorConstraint = imageView.centerXAnchor.constraint(equalTo: view1View.centerXAnchor)
    let view2ViewTopAnchorConstraint = view2View.topAnchor.constraint(equalTo: imageView.bottomAnchor)
    let view2ViewLeadingAnchorConstraint = view2View
      .leadingAnchor
      .constraint(greaterThanOrEqualTo: view1View.leadingAnchor)
    let view2ViewCenterXAnchorConstraint = view2View.centerXAnchor.constraint(equalTo: view1View.centerXAnchor)
    let view2ViewTrailingAnchorConstraint = view2View
      .trailingAnchor
      .constraint(lessThanOrEqualTo: view1View.trailingAnchor)
    let textViewTopAnchorConstraint = textView.topAnchor.constraint(equalTo: view2View.bottomAnchor, constant: 16)
    let textViewLeadingAnchorConstraint = textView.leadingAnchor.constraint(equalTo: view1View.leadingAnchor)
    let textViewCenterXAnchorConstraint = textView.centerXAnchor.constraint(equalTo: view1View.centerXAnchor)
    let textViewTrailingAnchorConstraint = textView.trailingAnchor.constraint(equalTo: view1View.trailingAnchor)
    let text1ViewTopAnchorConstraint = text1View.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 16)
    let text1ViewLeadingAnchorConstraint = text1View
      .leadingAnchor
      .constraint(greaterThanOrEqualTo: view1View.leadingAnchor)
    let text1ViewCenterXAnchorConstraint = text1View.centerXAnchor.constraint(equalTo: view1View.centerXAnchor)
    let text1ViewTrailingAnchorConstraint = text1View
      .trailingAnchor
      .constraint(lessThanOrEqualTo: view1View.trailingAnchor)
    let text2ViewTopAnchorConstraint = text2View.topAnchor.constraint(equalTo: text1View.bottomAnchor, constant: 12)
    let text2ViewLeadingAnchorConstraint = text2View.leadingAnchor.constraint(equalTo: view1View.leadingAnchor)
    let text2ViewCenterXAnchorConstraint = text2View.centerXAnchor.constraint(equalTo: view1View.centerXAnchor)
    let text2ViewTrailingAnchorConstraint = text2View.trailingAnchor.constraint(equalTo: view1View.trailingAnchor)
    let text3ViewTopAnchorConstraint = text3View.topAnchor.constraint(equalTo: text2View.bottomAnchor)
    let text3ViewLeadingAnchorConstraint = text3View.leadingAnchor.constraint(equalTo: view1View.leadingAnchor)
    let text3ViewCenterXAnchorConstraint = text3View.centerXAnchor.constraint(equalTo: view1View.centerXAnchor)
    let text3ViewTrailingAnchorConstraint = text3View.trailingAnchor.constraint(equalTo: view1View.trailingAnchor)
    let text4ViewBottomAnchorConstraint = text4View.bottomAnchor.constraint(equalTo: view1View.bottomAnchor)
    let text4ViewTopAnchorConstraint = text4View.topAnchor.constraint(equalTo: text3View.bottomAnchor)
    let text4ViewCenterXAnchorConstraint = text4View.centerXAnchor.constraint(equalTo: view1View.centerXAnchor)
    let text5ViewWidthAnchorParentConstraint = text5View
      .widthAnchor
      .constraint(lessThanOrEqualTo: view3View.widthAnchor, constant: -24)
    let text5ViewTopAnchorConstraint = text5View.topAnchor.constraint(equalTo: view3View.topAnchor)
    let text5ViewBottomAnchorConstraint = text5View.bottomAnchor.constraint(equalTo: view3View.bottomAnchor)
    let text5ViewLeadingAnchorConstraint = text5View
      .leadingAnchor
      .constraint(equalTo: view3View.leadingAnchor, constant: 12)
    let text5ViewCenterXAnchorConstraint = text5View.centerXAnchor.constraint(equalTo: view3View.centerXAnchor)
    let text5ViewTrailingAnchorConstraint = text5View
      .trailingAnchor
      .constraint(equalTo: view3View.trailingAnchor, constant: -12)
    let view4ViewWidthAnchorConstraint = view4View.widthAnchor.constraint(equalToConstant: 400)
    let text6ViewTopAnchorConstraint = text6View.topAnchor.constraint(equalTo: view4View.topAnchor)
    let text6ViewBottomAnchorConstraint = text6View.bottomAnchor.constraint(equalTo: view4View.bottomAnchor)
    let text6ViewLeadingAnchorConstraint = text6View
      .leadingAnchor
      .constraint(equalTo: view4View.leadingAnchor, constant: 12)
    let text6ViewCenterXAnchorConstraint = text6View.centerXAnchor.constraint(equalTo: view4View.centerXAnchor)
    let text6ViewTrailingAnchorConstraint = text6View
      .trailingAnchor
      .constraint(equalTo: view4View.trailingAnchor, constant: -12)
    let text7ViewWidthAnchorParentConstraint = text7View
      .widthAnchor
      .constraint(lessThanOrEqualTo: view5View.widthAnchor, constant: -24)
    let text7ViewTopAnchorConstraint = text7View.topAnchor.constraint(equalTo: view5View.topAnchor)
    let text7ViewBottomAnchorConstraint = text7View.bottomAnchor.constraint(equalTo: view5View.bottomAnchor)
    let text7ViewLeadingAnchorConstraint = text7View
      .leadingAnchor
      .constraint(equalTo: view5View.leadingAnchor, constant: 12)
    let text7ViewTrailingAnchorConstraint = text7View
      .trailingAnchor
      .constraint(equalTo: view5View.trailingAnchor, constant: -12)
    let view6ViewWidthAnchorConstraint = view6View.widthAnchor.constraint(equalToConstant: 400)
    let text8ViewTopAnchorConstraint = text8View.topAnchor.constraint(equalTo: view6View.topAnchor)
    let text8ViewBottomAnchorConstraint = text8View.bottomAnchor.constraint(equalTo: view6View.bottomAnchor)
    let text8ViewLeadingAnchorConstraint = text8View
      .leadingAnchor
      .constraint(equalTo: view6View.leadingAnchor, constant: 12)
    let text8ViewTrailingAnchorConstraint = text8View
      .trailingAnchor
      .constraint(equalTo: view6View.trailingAnchor, constant: -12)
    let text9ViewTopAnchorConstraint = text9View.topAnchor.constraint(equalTo: rightAlignmentContainerView.topAnchor)
    let text9ViewLeadingAnchorConstraint = text9View
      .leadingAnchor
      .constraint(greaterThanOrEqualTo: rightAlignmentContainerView.leadingAnchor)
    let text9ViewTrailingAnchorConstraint = text9View
      .trailingAnchor
      .constraint(equalTo: rightAlignmentContainerView.trailingAnchor)
    let text10ViewTopAnchorConstraint = text10View.topAnchor.constraint(equalTo: text9View.bottomAnchor)
    let text10ViewLeadingAnchorConstraint = text10View
      .leadingAnchor
      .constraint(equalTo: rightAlignmentContainerView.leadingAnchor)
    let text10ViewTrailingAnchorConstraint = text10View
      .trailingAnchor
      .constraint(equalTo: rightAlignmentContainerView.trailingAnchor)
    let image1ViewBottomAnchorConstraint = image1View
      .bottomAnchor
      .constraint(equalTo: rightAlignmentContainerView.bottomAnchor)
    let image1ViewTopAnchorConstraint = image1View.topAnchor.constraint(equalTo: text10View.bottomAnchor)
    let image1ViewTrailingAnchorConstraint = image1View
      .trailingAnchor
      .constraint(equalTo: rightAlignmentContainerView.trailingAnchor)
    let imageViewHeightAnchorConstraint = imageView.heightAnchor.constraint(equalToConstant: 100)
    let imageViewWidthAnchorConstraint = imageView.widthAnchor.constraint(equalToConstant: 100)
    let text4ViewWidthAnchorConstraint = text4View.widthAnchor.constraint(equalToConstant: 80)
    let image1ViewHeightAnchorConstraint = image1View.heightAnchor.constraint(equalToConstant: 100)
    let image1ViewWidthAnchorConstraint = image1View.widthAnchor.constraint(equalToConstant: 100)

    text5ViewWidthAnchorParentConstraint.priority = UILayoutPriority.defaultLow
    text7ViewWidthAnchorParentConstraint.priority = UILayoutPriority.defaultLow

    NSLayoutConstraint.activate([
      view1ViewTopAnchorConstraint,
      view1ViewLeadingAnchorConstraint,
      view1ViewTrailingAnchorConstraint,
      view3ViewTopAnchorConstraint,
      view3ViewLeadingAnchorConstraint,
      view3ViewTrailingAnchorConstraint,
      view4ViewTopAnchorConstraint,
      view4ViewLeadingAnchorConstraint,
      view5ViewTopAnchorConstraint,
      view5ViewLeadingAnchorConstraint,
      view5ViewTrailingAnchorConstraint,
      view6ViewTopAnchorConstraint,
      view6ViewLeadingAnchorConstraint,
      rightAlignmentContainerViewBottomAnchorConstraint,
      rightAlignmentContainerViewTopAnchorConstraint,
      rightAlignmentContainerViewLeadingAnchorConstraint,
      rightAlignmentContainerViewTrailingAnchorConstraint,
      imageViewTopAnchorConstraint,
      imageViewCenterXAnchorConstraint,
      view2ViewTopAnchorConstraint,
      view2ViewLeadingAnchorConstraint,
      view2ViewCenterXAnchorConstraint,
      view2ViewTrailingAnchorConstraint,
      textViewTopAnchorConstraint,
      textViewLeadingAnchorConstraint,
      textViewCenterXAnchorConstraint,
      textViewTrailingAnchorConstraint,
      text1ViewTopAnchorConstraint,
      text1ViewLeadingAnchorConstraint,
      text1ViewCenterXAnchorConstraint,
      text1ViewTrailingAnchorConstraint,
      text2ViewTopAnchorConstraint,
      text2ViewLeadingAnchorConstraint,
      text2ViewCenterXAnchorConstraint,
      text2ViewTrailingAnchorConstraint,
      text3ViewTopAnchorConstraint,
      text3ViewLeadingAnchorConstraint,
      text3ViewCenterXAnchorConstraint,
      text3ViewTrailingAnchorConstraint,
      text4ViewBottomAnchorConstraint,
      text4ViewTopAnchorConstraint,
      text4ViewCenterXAnchorConstraint,
      text5ViewWidthAnchorParentConstraint,
      text5ViewTopAnchorConstraint,
      text5ViewBottomAnchorConstraint,
      text5ViewLeadingAnchorConstraint,
      text5ViewCenterXAnchorConstraint,
      text5ViewTrailingAnchorConstraint,
      view4ViewWidthAnchorConstraint,
      text6ViewTopAnchorConstraint,
      text6ViewBottomAnchorConstraint,
      text6ViewLeadingAnchorConstraint,
      text6ViewCenterXAnchorConstraint,
      text6ViewTrailingAnchorConstraint,
      text7ViewWidthAnchorParentConstraint,
      text7ViewTopAnchorConstraint,
      text7ViewBottomAnchorConstraint,
      text7ViewLeadingAnchorConstraint,
      text7ViewTrailingAnchorConstraint,
      view6ViewWidthAnchorConstraint,
      text8ViewTopAnchorConstraint,
      text8ViewBottomAnchorConstraint,
      text8ViewLeadingAnchorConstraint,
      text8ViewTrailingAnchorConstraint,
      text9ViewTopAnchorConstraint,
      text9ViewLeadingAnchorConstraint,
      text9ViewTrailingAnchorConstraint,
      text10ViewTopAnchorConstraint,
      text10ViewLeadingAnchorConstraint,
      text10ViewTrailingAnchorConstraint,
      image1ViewBottomAnchorConstraint,
      image1ViewTopAnchorConstraint,
      image1ViewTrailingAnchorConstraint,
      imageViewHeightAnchorConstraint,
      imageViewWidthAnchorConstraint,
      text4ViewWidthAnchorConstraint,
      image1ViewHeightAnchorConstraint,
      image1ViewWidthAnchorConstraint
    ])
  }

  private func update() {}
}
