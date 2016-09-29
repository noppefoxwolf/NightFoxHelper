//
//  UIView+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/10.
//
//

import UIKit

public protocol XibInitializable {
}

public extension XibInitializable where Self: UIView {
  
  public static func instantiateXib() -> Self {
    let type = Mirror(reflecting: self).subjectType
    let name = String(describing: type).components(separatedBy: ".")[0] // クラス名を取得
    let nib = UINib(nibName: name, bundle: nil)
    let view = nib.instantiate(withOwner: self, options: nil)[0] as! Self
    return view
  }
}

public protocol ParentViewControllerFindable {}

public extension ParentViewControllerFindable where Self: UIView {
  var parentViewController: UIViewController? {
    var parentResponder: UIResponder? = self
    while parentResponder != nil {
      parentResponder = parentResponder?.next
      if let viewController = parentResponder as? UIViewController {
        return viewController
      }
    }
    return nil
  }
}

public extension UIView {
  public func captureImage(width: CGFloat? = nil) -> UIImage? {
    let imageHeight = width != nil ? (bounds.size.height * (width! / bounds.size.width)) : bounds.size.width
    let imageWidth  = width ?? bounds.width
    let imageBounds = CGRect(x: 0, y: 0, width: imageWidth, height: imageHeight)
    
    UIGraphicsBeginImageContextWithOptions(imageBounds.size, true, 0)
    
    drawHierarchy(in: imageBounds, afterScreenUpdates: true)
    
    var image: UIImage?
    let contextImage = UIGraphicsGetImageFromCurrentImageContext()
    
    if let contextImage = contextImage, let cgImage = contextImage.cgImage {
      image = UIImage(
        cgImage: cgImage,
        scale: UIScreen.main.scale,
        orientation: contextImage.imageOrientation
      )
    }
    
    UIGraphicsEndImageContext()
    
    return image
  }
}

