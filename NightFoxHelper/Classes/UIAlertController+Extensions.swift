//
//  UIAlertController+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

public extension UIAlertController {
  public static var actionSheet: UIAlertController {
    return UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
  }
  
  public static var alert: UIAlertController {
    return UIAlertController(title: nil, message: nil, preferredStyle: .alert)
  }
  
  public static func actionSheet(title: String? = nil, message: String? = nil) -> UIAlertController {
    return UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
  }
  public static func alert(title: String? = nil, message: String? = nil) -> UIAlertController {
    return UIAlertController(title: title, message: message, preferredStyle: .alert)
  }
  
  public func addDefault(_ title: String, condition: Bool = true, handler: ((UIAlertAction) -> Void)?) {
    guard condition else { return }
    addAction(UIAlertAction(title: title, style: .default, handler: handler))
  }
  public func addCancel(_ title: String, condition: Bool = true, handler: ((UIAlertAction) -> Void)?) {
    guard condition else { return }
    addAction(UIAlertAction(title: title, style: .cancel, handler: handler))
  }
  public func addDestructive(_ title: String, condition: Bool = true, handler: ((UIAlertAction) -> Void)?) {
    guard condition else { return }
    addAction(UIAlertAction(title: title, style: .destructive, handler: handler))
  }
}
