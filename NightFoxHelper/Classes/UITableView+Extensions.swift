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
    let nib = UINib(nibName: className, bundle: nil)
    register(nib, forCellReuseIdentifier: className)
  }
  
  public func dequeue<T: UITableViewCell>(_ cellType: T.Type, indexPath: IndexPath) -> T {
    return dequeueReusableCell(withIdentifier: cellType.className, for: indexPath) as! T
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
