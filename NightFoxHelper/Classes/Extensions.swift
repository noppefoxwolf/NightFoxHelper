//
//  Extensions.swift
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
  
  @discardableResult
  public mutating func remove(_ element: Element) -> Bool {
    guard let index = index(of: element) else { return false }
    remove(at: index)
    return true
  }
  
  public mutating func remove(_ elements: [Element]) {
    elements.forEach { remove($0) }
  }
}

extension Collection {
  subscript(safe index: Index) -> Element? {
    return index >= startIndex && index < endIndex ? self[index] : nil
  }
}

extension Comparable {
  func clamped(min: Self, max: Self) -> Self {
    if self < min {
      return min
    }
    
    if self > max {
      return max
    }
    
    return self
  }
}
