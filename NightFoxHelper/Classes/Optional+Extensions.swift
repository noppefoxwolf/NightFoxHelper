//
//  Optional+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

public extension Optional {
  public func getOr(_ value: Wrapped) -> Wrapped {
    return self ?? value
  }
  
  public func describeOr(_ string: String) -> String {
    return self == nil ? string : String(describing: self)
  }
}
