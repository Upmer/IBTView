//
//  IBLabel.swift
//  IBView
//
//  Created by tsuf on 2019/4/2.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

@IBDesignable
class IBLabel: UILabel, IBCornerDesignable, IBLocalizedDesignable {
  
  @IBInspectable var cornerRadius: CGFloat = IBDefaultConfig.cornerRadius
  @IBInspectable var borderColor: UIColor? = nil
  @IBInspectable var borderWidth: CGFloat = IBDefaultConfig.borderWidth
  
  @IBInspectable var localizedText: String?
  @IBInspectable var commentText: String?
  
  override func didMoveToWindow() {
    super.didMoveToWindow()
    setCornerAndBorderConfiguration()
    setLocalizedString()
  }
}


