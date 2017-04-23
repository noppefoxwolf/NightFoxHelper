//
//  UICollectionView+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2017/04/23.
//
//

import UIKit

public extension UICollectionView {
  public func register<T: UICollectionViewCell>(_ cellType: T.Type) {
    let className = cellType.className
    let nib = UINib(nibName: className, bundle: nil)
    register(nib, forCellWithReuseIdentifier: className)
  }
  
  public func dequeue<T: UICollectionViewCell>(_ cellType: T.Type, indexPath: IndexPath) -> T {
    return dequeueReusableCell(withReuseIdentifier: cellType.className, for: indexPath) as! T
  }
}

