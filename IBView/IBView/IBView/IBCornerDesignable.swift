//
//  IBDesignable.swift
//  IBView
//
//  Created by tsuf on 2019/4/2.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

class IBDefaultConfig {
  static var cornerRadius: CGFloat = 0
  static var borderWidth = CGFloat.nan
  static var shadowOffset = CGSize.zero
  static var shadowOpacity: Float = 1
  static var shadowRadius = CGFloat.nan
}

protocol IBCornerDesignable {
  var cornerRadius: CGFloat { get set }
  
  var borderColor: UIColor? { get set }
  var borderWidth: CGFloat { get set }
}

extension IBCornerDesignable where Self: UIView {
  private func setCornerRadius() {
    if cornerRadius.isNaN, cornerRadius < 0 {
      self.layer.cornerRadius = 0
    } else {
      self.layer.cornerRadius = cornerRadius
    }
  }
  
  private func setBorder () {
    if borderWidth.isNaN || borderWidth < 0 {
      self.layer.borderWidth = 0
    } else {
      self.layer.borderColor = borderColor?.cgColor
      self.layer.borderWidth = borderWidth
    }
  }
  
  func setCornerAndBorderConfiguration() {
    setCornerRadius()
    setBorder()
  }
}
