//
//  UIWindow+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

public extension UIWindow {
  public convenience init(_ rootViewController: UIViewController) {
    self.init(frame: UIScreen.main.bounds)
    self.rootViewController = rootViewController
    self.makeKeyAndVisible()
  }
}
