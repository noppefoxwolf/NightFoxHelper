//
//  UIApplicationDelegate+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/10.
//
//

import UIKit

public extension UIApplicationDelegate {
  public func change(_ rootViewController: UIViewController,
                       duration: TimeInterval = 0.5,
                       options: UIViewAnimationOptions = [.transitionFlipFromBottom, .showHideTransitionViews],
                       completion: (() -> Void)? = nil) {
    guard let window = self.window else { return }
    guard let w = window else { return }
    UIView.transition(with: w,
                      duration: duration,
                      options: options,
                      animations: {
      w.rootViewController = rootViewController
    }) { (_) in
      completion?()
    }
  }
}
