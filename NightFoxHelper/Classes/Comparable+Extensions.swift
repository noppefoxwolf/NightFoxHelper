//
//  Comparable+Extensions.swift
//  NightFoxHelper
//
//  Created by Tomoya Hirano on 2018/01/17.
//

import UIKit

extension Comparable {
  public func clamped(_ v1: Self, _ v2: Self) -> Self {
    let min = v1 < v2 ? v1 : v2
    let max = v1 > v2 ? v1 : v2
    return self < min ? min : (self > max ? max : self)
  }
  
  public mutating func clamp(_ v1: Self, _ v2: Self) -> Self {
    self = clamped(v1, v2)
    return self
  }
}
