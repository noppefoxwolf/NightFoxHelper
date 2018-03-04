//
//  Storyboard+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/10.
//
//

import UIKit

public protocol StoryboardInitializable {}

public extension StoryboardInitializable where Self: UIViewController {
  public static func instantiateStoryboard(bundle: Bundle? = nil) -> Self {
    let type = Mirror(reflecting: self).subjectType
    let name = String(describing: type).components(separatedBy: ".")[0] // クラス名を取得
    let storyboard = UIStoryboard(name: name, bundle: bundle)
    let viewController = storyboard.instantiateInitialViewController() as! Self
    return viewController
  }
}
