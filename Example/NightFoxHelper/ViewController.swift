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
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    let sheet = UIAlertController.actionSheet()
    sheet.addDefault("ok", image: #imageLiteral(resourceName: "other"), handler: nil)
    present(sheet, animated: true, completion: nil)
  }
}

