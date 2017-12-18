//
//  ViewController.swift
//  LeetCodeSolutions
//
//  Created by kuanhuachen on 2017/12/11.
//  Copyright © 2017年 D.O. Information Technology Corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let sol = Solution121()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let array = [3,2,6,5,0,3]
        
        print (" CHECK FOR ANSWER 121 ===== ", sol.maxProfit(array))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

