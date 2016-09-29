//
//  UITableView+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

public extension UITableView {
  public func register<T: UITableViewCell>(_ cellType: T.Type) {
    let className = cellType.className
    let nib = UINib(nibName: className, bundle: nil)
    register(nib, forCellReuseIdentifier: className)
  }
  
  public func dequeue<T: UITableViewCell>(_ cellType: T.Type, indexPath: IndexPath) -> T {
    return dequeueReusableCell(withIdentifier: cellType.className, for: indexPath) as! T
  }
}
