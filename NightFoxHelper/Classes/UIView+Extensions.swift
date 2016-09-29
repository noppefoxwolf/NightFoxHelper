//
//  UIView+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/10.
//
//

import UIKit

public protocol XibInitializable {
}

public extension XibInitializable where Self: UIView {
  
  public static func instantiateXib() -> Self {
    let type = Mirror(reflecting: self).subjectType
    let name = String(describing: type).components(separatedBy: ".")[0] // クラス名を取得
    let nib = UINib(nibName: name, bundle: nil)
    let view = nib.instantiate(withOwner: self, options: nil)[0] as! Self
    return view
  }
}

public protocol ParentViewControllerFindable {}

public extension ParentViewControllerFindable where Self: UIView {
  var parentViewController: UIViewController? {
    var parentResponder: UIResponder? = self
    while parentResponder != nil {
      parentResponder = parentResponder?.next
      if let viewController = parentResponder as? UIViewController {
        return viewController
      }
    }
    return nil
  }
}


