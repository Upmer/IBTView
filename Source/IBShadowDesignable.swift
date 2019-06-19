//
//  IBShadowDesignable.swift
//  IBView
//
//  Created by tsuf on 2019/4/3.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

protocol IBShadowDesignable {
  var shadowColor: UIColor? { get set }
  var shadowOffset: CGSize { get set }
  var shadowOpacity: Float { get set }
  var shadowRadius: CGFloat { get set }
}

extension IBShadowDesignable where Self: UIView {
  private func setShadow() {
    if let shadowColor = self.shadowColor, !shadowRadius.isNaN, !shadowOpacity.isNaN {
      self.layer.shadowColor = shadowColor.cgColor
      self.layer.shadowOffset = shadowOffset
      self.layer.shadowOpacity = shadowOpacity
      self.layer.shadowRadius = shadowRadius
    } else {
      self.layer.shadowColor = UIColor.clear.cgColor
    }
  }
  
  func setShadowConfiguration() {
    setShadow()
  }
  
  func layoutSubLayer() {
    let cornerRadius: CGFloat = self.layer.cornerRadius
    let bezier = UIBezierPath(roundedRect: self.bounds, cornerRadius: cornerRadius)
    self.layer.shadowPath = bezier.cgPath
  }
}
