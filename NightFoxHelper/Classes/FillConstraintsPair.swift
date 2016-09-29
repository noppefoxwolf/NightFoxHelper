//
//  FillConstraintsPair.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

public struct FillConstraintsPair {
  var v: [NSLayoutConstraint]
  var h: [NSLayoutConstraint]
  
  public init(view: UIView, name: String? = nil) {
    let viewName = name ?? type(of: view).className
    let views    = [viewName: view]
    let vConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[\(viewName)]|",
      options: .alignAllLeft,
      metrics: nil,
      views: views)
    let hConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(viewName)]|",
      options: .alignAllLeft,
      metrics: nil,
      views: views)
    v = vConstraints
    h = hConstraints
  }
}

public extension UIView {
  public func add(fillConstraintsPair: FillConstraintsPair) {
    addConstraints(fillConstraintsPair.v)
    addConstraints(fillConstraintsPair.h)
  }
}
