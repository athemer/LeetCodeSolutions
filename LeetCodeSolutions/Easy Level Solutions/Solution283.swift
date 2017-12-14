// MARK: Beat -
// 40.00% Swift answers

// MARK: Reference -


// MARK: Question -

import Foundation

// MARK: Answer - 1
class Solution283 {
    func moveZeroes(_ nums: inout [Int]) {
        
        var count = 0
        for i in 0 ..< nums.count {
            if nums[i] == 0 {
                count += 1
            } else {
                if count != 0 {
                    nums[i - count] = nums[i]
                }
            }
        }
        while(count > 0) {
            nums[nums.count - count] = 0
            count -= 1
        }
    }
}

// MARK: OtherSolutions - 1

//var zeroEndIndex = -1
//var numStraightZeros = 0
//
//for i in 0..<nums.count {
//    if nums[i] == 0 {
//        zeroEndIndex = max(i, zeroEndIndex)
//        numStraightZeros += 1
//    } else {
//        if zeroEndIndex < 0 {
//            continue
//        }
//
//        // Swap
//        let temp = nums[i]
//        nums[i] = 0
//        nums[i-numStraightZeros] = temp
//    }
//}

