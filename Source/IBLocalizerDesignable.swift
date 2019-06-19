//
//  IBLocalizerDesignable.swift
//  IBView
//
//  Created by tsuf on 2019/6/19.
//  Copyright © 2019 upmer. All rights reserved.
//

import UIKit

protocol IBLocalizedDesignable {
  var localizedText: String? { get set }
  var commentText: String? { get set }
}

extension IBLocalizedDesignable where Self: UILabel {
  func setLocalizedString() {
    if let localizedText = localizedText {
      self.text = NSLocalizedString(localizedText, comment: commentText ?? "")
    }
  }
}
