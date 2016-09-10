//
//  UIApplicationDelegate+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/10.
//
//

import UIKit

public extension UIApplicationDelegate {
  public func switchRoot(viewController: UIViewController,
                              duration: NSTimeInterval = 0.5,
                              options: UIViewAnimationOptions = [.TransitionFlipFromBottom, .ShowHideTransitionViews],
                              completion: (() -> Void)? = nil) {
    guard let window = self.window else { return }
    guard let w = window else { return }
    UIView.transitionWithView(w,
                              duration: duration,
                              options: options,
                              animations: {
      w.rootViewController = viewController
    }) { (_) in
      completion?()
    }
  }
  
  public func createWindow(rootViewController: UIViewController) -> UIWindow {
    let window = UIWindow(frame: UIScreen.mainScreen().bounds)
    window.rootViewController = rootViewController
    window.makeKeyAndVisible()
    return window
  }
}