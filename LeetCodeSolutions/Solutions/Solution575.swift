// MARK: Beat -
// 64.52% Swift answers

// MARK: Reference -


// MARK: Question -
//  Given an integer array with even length, where different numbers in this array represent different kinds of candies. Each number means one candy of the corresponding kind. You need to distribute these candies equally in number to brother and sister. Return the maximum number of kinds of candies the sister could gain.

import Foundation

// MARK: Answer - 1
class Solution575 {
    func distributeCandies(_ candies: [Int]) -> Int {
        let array = Array(Set(candies))
        let countC = candies.count
        let countA = array.count
        
        if countA >= countC / 2 {
            return countC / 2
        } else {
            return countA
        }
    }
}


// MARK: OtherSolutions - 1
//func distributeCandies(_ candies: [Int]) -> Int {
//    return min(Set(candies).count, candies.count/2)
//}


