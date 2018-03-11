//
//  ViewController.swift
//  Ani101
//
//  Created by eddie on 22/01/2018.
//  Copyright © 2018 Eddie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var nemoView: UIView!
  
  @IBOutlet weak var bottomEdge: NSLayoutConstraint!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
 

  @IBAction func tappedButton(_ sender: UIButton) {
    
    nemoView.translatesAutoresizingMaskIntoConstraints = false
    
    bottomEdge.constant =  bottomEdge.constant + 100
    
    if bottomEdge.constant > 300 {
      bottomEdge.constant = 0
    }
    UIView.animate(withDuration: 0.3) { [weak self ] in
      self?.view.layoutIfNeeded()
    }
    
    
  }
  
  
}

