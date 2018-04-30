//
//  UITableView+Extensions.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/09/30.
//
//

import UIKit

public extension UITableView {
  public func register<T: UITableViewCell>(_ cellType: T.Type) {
    let className = cellType.className
    let nib = UINib(nibName: className, bundle: Bundle(for: cellType))
    register(nib, forCellReuseIdentifier: className)
  }
  
  public func dequeue<T: UITableViewCell>(_ cellType: T.Type, indexPath: IndexPath) -> T {
    return dequeueReusableCell(withIdentifier: cellType.className, for: indexPath) as! T
  }
}

var AssociatedObjectHandle: UInt8 = 0

public extension UITableView {
  var registeredClasses: [UITableViewCell.Type] {
    get { return ((objc_getAssociatedObject(self, &AssociatedObjectHandle) ?? 0) as? [UITableViewCell.Type]) ?? [] }
    set { objc_setAssociatedObject(self, &AssociatedObjectHandle, newValue, .OBJC_ASSOCIATION_RETAIN) }
  }
  
  public func retrieve<T: UITableViewCell>(_ cellType: T.Type, indexPath: IndexPath) -> T {
    if !registeredClasses.contains(where: { $0 === cellType }) {
      register(cellType)
      registeredClasses.append(cellType)
    }
    return dequeue(cellType, indexPath: indexPath)
  }
}

extension UITableView {
  public var lastIndexPath: IndexPath? {
    guard let dataSource = dataSource else { return nil }
    return dataSource.lastIndexPath(in: self)
  }
}

extension UITableViewDataSource {
  public func lastIndexPath(in tableView: UITableView) -> IndexPath? {
    guard let sectionCount = self.numberOfSections?(in: tableView) else { return nil }
    guard sectionCount != 0 else { return nil }
    let lastSection = sectionCount - 1
    let rowCountOfLastSection = self.tableView(tableView, numberOfRowsInSection: lastSection)
    guard rowCountOfLastSection != 0 else { return nil }
    let lastRow = rowCountOfLastSection - 1
    return IndexPath(row: lastRow, section: lastSection)
  }
}
