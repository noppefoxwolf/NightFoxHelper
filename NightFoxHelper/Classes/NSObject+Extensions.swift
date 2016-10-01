//
//  NSObject+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

public extension NSObject {
  public static var className: String {
    return NSStringFromClass(self).components(separatedBy: ".").last!
  }
  
  public var className: String {
    return type(of: self).className
  }
}
