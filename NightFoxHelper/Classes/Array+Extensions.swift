//
//  Array+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

public extension Array where Element: Equatable {
  public func next(of element: Element) -> Element? {
    guard let index = index(of: element) else { return nil }
    let nextIndex = index.hashValue + 1
    if nextIndex < count {
      return self[nextIndex]
    }
    return nil
  }
  
  public func prev(of element: Element) -> Element? {
    guard let index = index(of: element) else { return nil }
    let prevIndex = index.hashValue - 1
    if prevIndex.hashValue < 0 {
      return nil
    } else {
      return self[prevIndex]
    }
  }
}
