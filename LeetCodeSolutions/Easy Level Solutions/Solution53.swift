// MARK: Beat -
//  % Swift answers

// MARK: Reference -


// MARK: Question -
//Find the contiguous subarray within an array (containing at least one number) which has the largest sum.
//For example, given the array [-2,1,-3,4,-1,2,1,-5,4],
//the contiguous subarray [4,-1,2,1] has the largest sum = 6.

import Foundation

// MARK: Answer - 1
class Solution53 {
    
    func maxSubArray(_ nums: [Int]) -> Int {
        
        guard nums.count > 0 else { return 0 }
        
        var sum: Int = nums[0]
        var maxSum: Int = nums[0]
        
        for i in 1..<nums.count {
            
            sum = sum < 0 ? nums[i] : sum + nums[i]
            maxSum = max(sum, maxSum)
            
        }
        
        return maxSum
    }
    
}

// MARK: OtherSolutions - 1
//func maxSubArray(_ nums: [Int]) -> Int {
//    guard let first = nums.first else { return 0 }
//    var (maxCurrent, maxSofar) = (first, first)
//    for i in 1..<nums.count {
//        let n = nums[i]
//        maxCurrent = max(n, maxCurrent + n)
//        maxSofar = max(maxSofar, maxCurrent)
//    }
//    return maxSofar
//}


// MARK: OtherSolutions - 2

//func maxSubArray(_ nums: [Int]) -> Int {
//    if nums.count == 0 {
//        return 0
//    }
//    var max = nums.first!
//    var sub = nums.first!
//    for i in 1..<nums.count {
//        let num = nums[i]
//        if sub > 0 {
//            if (sub + num) > 0 {
//                sub += num
//            } else {
//                sub = num
//            }
//        } else {
//            if num > 0 {
//                sub = num
//            } else {
//                if num > sub {
//                    sub = num
//                }
//            }
//        }
//
//        if sub > max {
//            max = sub
//        }
//    }
//    return max
//}

