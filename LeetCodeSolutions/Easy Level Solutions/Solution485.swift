// MARK: Beat -
// 2.5% Swift answers

// MARK: Reference -


// MARK: Question -
//Given a binary array, find the maximum number of consecutive 1s in this array


import Foundation

// MARK: Answer - 1
class Solution485 {
    
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        
        var consecutiveCountArray: [Int] = []
        var consecutiveCount: Int = 0
        
        for num in nums {
            if num == 1 {
                consecutiveCount += 1
                consecutiveCountArray.append(consecutiveCount)
            } else if num == 0 {
                consecutiveCountArray.append(consecutiveCount)
                consecutiveCount = 0
            } else {
                break
            }
        }

        return consecutiveCountArray.sorted{ $0 > $1 }.first!
    }
    
}

// MARK: OtherSolutions - 1

//var j = 0
//var max = 0
//for i in 0..<nums.count {
//    if nums[i] != 0 {
//        j += 1
//    }
//    else {
//        if max < j {
//            max = j
//        }
//        j = 0
//    }
//}
//return max < j ? j : max

// MARK: OtherSolutions - 2

//var maxCountConsecutiveOnes = 0
//var countConsecutiveOnes = 0
//for i in nums {
//    if i == 1 {
//        countConsecutiveOnes += 1
//    }else{
//        countConsecutiveOnes = 0
//    }
//
//    if countConsecutiveOnes > maxCountConsecutiveOnes {
//        maxCountConsecutiveOnes = countConsecutiveOnes
//    }
//}
//
//return maxCountConsecutiveOnes

