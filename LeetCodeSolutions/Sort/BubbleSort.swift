//
//  BubbleSort.swift
//  LeetCodeSolutions
//
//  Created by kuanhuachen on 2017/12/15.
//  Copyright © 2017年 D.O. Information Technology Corp. All rights reserved.
//

// MARK: Reference
// Inout keywords :
// https://www.dotnetperls.com/inout-swift

import Foundation

func bubbleSort(_ input: inout [Int]) {
    let count: Int = input.count
    var indexSwapped: Int = -1
    
    repeat {
        for i in 1..<count {
            if input[i - 1] > input[i] {
                input.swapAt(i - 1, i)
                indexSwapped = i
            }
        }
    } while indexSwapped != 1
}


