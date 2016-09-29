//
//  NSObject+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

extension NSObject {
  static var className: String {
    return NSStringFromClass(self).components(separatedBy: ".").last!
  }
  
  var className: String {
    return type(of: self).className
  }
}
