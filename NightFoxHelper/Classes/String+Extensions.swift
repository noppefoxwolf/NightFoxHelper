//
//  String+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

public extension String {
  public var url: URL? { return URL(string: self) }
}
