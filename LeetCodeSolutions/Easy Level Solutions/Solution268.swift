// 40.00% Swift answers

// MARK: Reference -
//    honsetBee InterView

// MARK: Question -

import Foundation

// MARK: Answer - 1
class Solution268 {
    func missingNumber(_ nums: [Int]) -> Int {
        
        var before: Int = 0
        var after: Int = 0
        
        for i in 0...nums.count {
            before += i
        }
        nums.forEach{ after += $0 }
        
        return before - after
    }
}

// MARK: OtherSolutions - 1
//var sum = 0
//var temp = 0
//for i in 0 ..< nums.count {
//    temp += nums[i]
//    sum += i
//}
//sum += nums.count
//
//return sum - temp

