//
//  UIColor+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

public extension UIColor {
  public func dimColor() -> UIColor {
    return withBrightnessComponent(0.8)
  }
  
  public func withBrightnessComponent(_ rate: CGFloat) -> UIColor {
    var hue : CGFloat = 0
    var saturation : CGFloat = 0
    var brightness : CGFloat = 0
    var alpha : CGFloat = 0
    
    if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) {
      return UIColor(hue: hue,
                     saturation: saturation,
                     brightness: brightness * rate,
                     alpha: alpha)
    }
    return self
  }
}
