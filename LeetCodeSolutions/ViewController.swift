//
//  ViewController.swift
//  LeetCodeSolutions
//
//  Created by kuanhuachen on 2017/12/11.
//  Copyright © 2017年 D.O. Information Technology Corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let sol = Solution605()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let array = [73, 74, 75, 71, 69, 72, 76, 73]
        
        let num1 = [4,1,2]
        let num2 = [1,3,2,4]
        
        print (" CHECK FOR ANSWER 475 ===== ", sol.canPlaceFlowersTEST([1,0,0,0,0,0,1], 2) )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

