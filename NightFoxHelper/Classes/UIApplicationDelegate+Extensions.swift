//
//  UIApplicationDelegate+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/10.
//
//

import UIKit

public extension UIApplicationDelegate {
  public func switchRoot(_ viewController: UIViewController,
                              duration: TimeInterval = 0.5,
                              options: UIViewAnimationOptions = [.transitionFlipFromBottom, .showHideTransitionViews],
                              completion: (() -> Void)? = nil) {
    guard let window = self.window else { return }
    guard let w = window else { return }
    UIView.transition(with: w,
                              duration: duration,
                              options: options,
                              animations: {
      w.rootViewController = viewController
    }) { (_) in
      completion?()
    }
  }
  
  public func createWindow(_ rootViewController: UIViewController) -> UIWindow {
    let window = UIWindow(frame: UIScreen.main.bounds)
    window.rootViewController = rootViewController
    window.makeKeyAndVisible()
    return window
  }
}
