//
//  IBTView.swift
//  IBTView
//
//  Created by tsuf on 2019/4/2.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

@IBDesignable
class IBTView: UIView, IBTDesignable {
  
  @IBInspectable var cornerRadius: CGFloat = CGFloat.nan
  
  @IBInspectable var borderColor: UIColor? = nil
  @IBInspectable var borderWidth: CGFloat = 0.0
  
  @IBInspectable var shadowOffset: CGSize = CGSize.zero
  @IBInspectable var shadowColor: UIColor? = nil
  @IBInspectable var shadowOpacity: Float = 1
  @IBInspectable var shadowRadius: CGFloat = 0
  
  override func didMoveToWindow() {
    super.didMoveToWindow()
    setViewConfiguration()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    layoutSubLayer()
  }
}

