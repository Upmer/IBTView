//
//  IBLabel.swift
//  IBView
//
//  Created by tsuf on 2019/4/2.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

class IBLabel: UILabel, IBCornerDesignable {
  
  @IBInspectable var cornerRadius: CGFloat = IBDefaultConfig.cornerRadius
  
  @IBInspectable var borderColor: UIColor? = nil
  @IBInspectable var borderWidth: CGFloat = IBDefaultConfig.borderWidth
  
  override func didMoveToWindow() {
    super.didMoveToWindow()
    setCornerAndBorderConfiguration()
  }
}


