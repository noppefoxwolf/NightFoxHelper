//
//  Storyboard+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/10.
//
//

import UIKit

public protocol StoryboardInitializable {
}

public extension StoryboardInitializable where Self: UIViewController {
  
  public static func instantiateStoryboard() -> Self {
    let type = Mirror(reflecting: self).subjectType
    let name = String(describing: type).components(separatedBy: ".")[0] // クラス名を取得
    let storyboard = UIStoryboard(name: name, bundle: nil)
    let viewController = storyboard.instantiateInitialViewController() as! Self
    return viewController
  }
}
