//
//  IBTDesignable.swift
//  IBTView
//
//  Created by tsuf on 2019/4/2.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

protocol IBTDesignable {
  var cornerRadius: CGFloat { get set }
  
  var borderColor: UIColor? { get set }
  var borderWidth: CGFloat { get set }
  
  var shadowColor: UIColor? { get set }
  var shadowOffset: CGSize { get set }
  var shadowOpacity: Float { get set }
  var shadowRadius: CGFloat { get set }
}

extension IBTDesignable where Self: UIView {
  private func setCornerRadius() {
    guard !cornerRadius.isNaN, cornerRadius > 0 else { return }
    self.layer.cornerRadius = cornerRadius
  }
  
  private func setBorder () {
    self.layer.borderColor = borderColor?.cgColor
    self.layer.borderWidth = borderWidth
  }
  
  private func setShadow() {
    if let shadowColor = self.shadowColor {
      self.layer.shadowColor = shadowColor.cgColor
      self.layer.shadowOffset = shadowOffset
      self.layer.shadowOpacity = shadowOpacity
      self.layer.shadowRadius = shadowRadius
    } else {
      self.layer.shadowColor = UIColor.clear.cgColor
    }
  }
  
  func setViewConfiguration() {
    setCornerRadius()
    setBorder()
    setShadow()
  }
  
  func layoutSubLayer() {
//    let bezier = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.layer.cornerRadius)
//    self.layer.shadowPath = bezier.cgPath
  }
}
