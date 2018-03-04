//
//  XIBBindView.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

open class XIBBindView: UIStackView {
  public required init(coder: NSCoder) {
    super.init(coder: coder)
    bindNib()
  }
  
  public override init(frame aRect: CGRect) {
    super.init(frame: aRect)
    bindNib()
  }
}

public extension XIBBindView {
  public var contentView: UIView {
    return subviews.first!
  }
  
  fileprivate func bindNib() {
    let v = type(of: self).nib.instantiate(withOwner: self, options: nil)[0] as! UIView
    distribution = .fill
    insertArrangedSubview(v, at: 0)
    backgroundColor = nil
    clearsContextBeforeDrawing = false
    autoresizesSubviews = false
    layer.removeFromSuperlayer()
  }
}

public extension UIView {
  public static var nib: UINib {
    return UINib(nibName: className, bundle: Bundle(for: self))
  }
}

