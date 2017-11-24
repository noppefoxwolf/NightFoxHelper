//
//  URL+Extensions.swift
//  NightFoxHelper
//
//  Created by Tomoya Hirano on 2017/11/25.
//

import UIKit

extension URL {
  public init?(string value: String?) {
    guard let value = value else { return nil }
    self.init(string: value)
  }
}

