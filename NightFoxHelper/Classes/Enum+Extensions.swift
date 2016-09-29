//
//  Enum+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

///enumをカウント出来るようにする
protocol Countable { }
extension Countable where Self : RawRepresentable, Self.RawValue == Int  {
  static var count: Int {
    var c = 0
    while let _ = Self(rawValue: c) { c += 1 }
    return c
  }
}

