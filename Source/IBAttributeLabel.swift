//
//  IBAttributeLabel.swift
//  IBView
//
//  Created by tsuf on 2019/6/19.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

@IBDesignable
class IBAttributeLabel: IBLabel, IBAttributeTextDesignable {
  
  @IBInspectable var linespace: CGFloat = 0
  @IBInspectable var kern: CGFloat = 0
  
  private lazy var paragraphStyle: NSMutableParagraphStyle = {
    let paragraphStyle = NSMutableParagraphStyle()
    return paragraphStyle
  }()
  
  override var font: UIFont! {
    didSet {
      drawAttributedString()
    }
  }
  
  override var textColor: UIColor! {
    didSet {
      drawAttributedString()
    }
  }
  
  override var textAlignment: NSTextAlignment {
    didSet {
      drawAttributedString()
    }
  }
  
  override func didMoveToWindow() {
    super.didMoveToWindow()
    drawAttributedString()
  }
  
  private func drawAttributedString() {
    guard let `text` = text else { return }
    let attrText: NSMutableAttributedString = NSMutableAttributedString(string: text)
    paragraphStyle.alignment = self.textAlignment
    paragraphStyle.lineSpacing = self.linespace
    let attrs: [NSAttributedString.Key: Any] = [
      NSAttributedString.Key.font: self.font ?? UIFont.systemFont(ofSize: 14),
      NSAttributedString.Key.foregroundColor: self.textColor ?? UIColor.black,
      NSAttributedString.Key.paragraphStyle: paragraphStyle,
      NSAttributedString.Key.kern: kern
    ]
    attrText.addAttributes(attrs, range: NSRange(location: 0, length: text.count))
    self.attributedText = attrText
  }
}
