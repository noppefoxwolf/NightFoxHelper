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
  
  public func addDefault(_ title: String,
                         image: UIImage? = nil,
                         condition: Bool = true,
                         handler: ((UIAlertAction) -> Void)? = nil) {
    guard condition else { return }
    let action = UIAlertAction(title: title, style: .default, handler: handler)
    action.setValue(image, forKey: "image")
    addAction(action)
  }
  
  public func addCancel(_ title: String = "キャンセル",
                        image: UIImage? = nil,
                        condition: Bool = true,
                        handler: ((UIAlertAction) -> Void)? = nil) {
    guard condition else { return }
    let action = UIAlertAction(title: title, style: .cancel, handler: handler)
    action.setValue(image, forKey: "image")
    addAction(action)
  }
  
  public func addDestructive(_ title: String,
                             image: UIImage? = nil,
                             condition: Bool = true,
                             handler: ((UIAlertAction) -> Void)? = nil) {
    guard condition else { return }
    let action = UIAlertAction(title: title, style: .destructive, handler: handler)
    action.setValue(image, forKey: "image")
    addAction(action)
  }
  
  public func show(completion: (() -> Void)? = nil) {
    UIApplication.shared.topViewController()?.present(self, animated: true, completion: completion)
  }
}
