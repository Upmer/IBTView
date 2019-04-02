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
  
  var shadowLayer: CALayer? { get set }
  var shadowColor: UIColor? { get set }
  var shadowOffset: CGSize { get set }
  var shadowOpacity: CGFloat { get set }
}

extension IBTDesignable where Self: UIView {
  private func setCornerRadius() {
    guard !cornerRadius.isNaN, cornerRadius > 0 else { return }
    self.layer.cornerRadius = cornerRadius
//    self.layer.masksToBounds = true
  }
  
  private func setBorder () {
    self.layer.borderColor = borderColor?.cgColor
    self.layer.borderWidth = borderWidth
  }
  
  private func setShadow() {
    let shadowLayer: CALayer!
    if let _ = self.shadowLayer {
      shadowLayer = self.shadowLayer
    } else {
      shadowLayer = CALayer()
      layer.insertSublayer(shadowLayer, at: 0)
    }
    debugPrint(self.bounds)
    shadowLayer.frame = self.bounds
    shadowLayer.shadowColor = shadowColor?.cgColor
    shadowLayer.shadowOffset = shadowOffset
    shadowLayer.shadowOpacity = 1
  }
  
  func setViewConfiguration() {
    setCornerRadius()
    setBorder()
    setShadow()
  }
}
