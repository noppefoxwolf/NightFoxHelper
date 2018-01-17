//
//  ViewController.swift
//  NightFoxHelper
//
//  Created by Tomoya Hirano on 09/10/2016.
//  Copyright (c) 2016 Tomoya Hirano. All rights reserved.
//

import UIKit
import NightFoxHelper

class ViewController: UIViewController {
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
  }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 100
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.retrieve(CustomTableViewCell.self, indexPath: indexPath)
    return cell
  }
}

