//
//  Int+Extensions.swift
//  NightFoxHelper
//
//  Created by Tomoya Hirano on 2017/11/25.
//

import Foundation

extension Int {
  public func clamp(lower: Int? = 0, upper: Int? = nil) -> Int {
    if let lower = lower, self < lower {
      return lower
    }
    if let upper = upper, self > upper {
      return upper
    }
    return self
  }
}

