//
//  AutoResizeTableViewCell.swift
//  NightFoxHelper
//
//  Created by Tomoya Hirano on 2017/11/18.
//

import UIKit

open class AutoResizeTableViewCell: UITableViewCell {
  var baseStackView: UIStackView! { return nil }
  
  override open var intrinsicContentSize: CGSize { return baseStackView.systemLayoutSizeFitting(UILayoutFittingCompressedSize) }
  
  override open func systemLayoutSizeFitting(_ targetSize: CGSize,
                                             withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority,
                                             verticalFittingPriority: UILayoutPriority) -> CGSize {
    contentView.bounds.size = targetSize
    contentView.layoutIfNeeded()
    return super.systemLayoutSizeFitting(targetSize,
                                         withHorizontalFittingPriority: horizontalFittingPriority,
                                         verticalFittingPriority: verticalFittingPriority)
  }
}

