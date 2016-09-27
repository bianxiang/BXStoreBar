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
        
        //旧方法这样写要设置顺序，不好~
//        bx.totalValue = 1000
//        
//        bx.currentValue = 300
        
        //故改为以下元组~
        bx.value = (300,1000)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

