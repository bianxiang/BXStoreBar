//
//  ViewController.swift
//  BXStoreBar
//
//  Created by xiaoxiao on 16/8/8.
//  Copyright © 2016年 bianxiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bx: BXStoreBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bx.totalValue = 1000
        
        bx.currentValue = 300
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

