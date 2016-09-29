//
//  UIApplication+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

public extension UIApplication {
  public func topViewController(_ controller: UIViewController? = shared.keyWindow?.rootViewController) -> UIViewController? {
    guard let c = controller else { return nil }
    
    switch c {
    case is UIAlertController:
      return nil
    case let c as UITabBarController:
      return topViewController(c.selectedViewController) ?? c
    case let c as UINavigationController:
      return topViewController(c.visibleViewController) ?? c
    default:
      if let presentedViewController = c.presentedViewController {
        return topViewController(presentedViewController) ?? c
      }
      return c
    }
  }
}
