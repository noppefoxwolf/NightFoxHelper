//
//  NSObject+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

extension NSObject {
  static var properName: String {
    return NSStringFromClass(self).components(separatedBy: ".").last!
  }
}
