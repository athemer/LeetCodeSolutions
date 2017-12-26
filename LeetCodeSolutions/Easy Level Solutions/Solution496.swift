// MARK: Beat -
//   Swift answers

// MARK: Reference -


// MARK: Question -

import Foundation

// MARK: Answer - 1
class Solution496 {
    
    func nextGreaterElement(_ findNums: [Int], _ nums: [Int]) -> [Int] {
        
        var table = [Int: Int]()
        
        for num in nums.enumerated() {
            table[num.element] = num.offset
        }
        
        var arrayToReturn: [Int] = []
        
        for num in findNums {
            
            if table[num] != nil {
                for x in table[num]!..<nums.count {
                    
                    if nums[x] > num {
                        arrayToReturn.append(num)
                        break
                    }
                    
                }
            } else {
                arrayToReturn.append(-1)
            }
    
        }
        
        
        return arrayToReturn
    }
    
    func nextGreaterElementxx(_ findNums: [Int], _ nums: [Int]) -> [Int] {
        var dict = Dictionary<Int,Int>()
        var result = [Int]()
        
        for (i,num) in nums.enumerated() {
            for j in i + 1 ..< nums.count {
                if num < nums[j] {
                    dict[num] = nums[j]
                    break
                }
            }
        }
        for findNum in findNums {
            if dict[findNum] == nil {
                result.append(-1)
            } else {
                result.append(dict[findNum]!)
            }
        }
        return result
    }
}



// MARK: OtherSolutions - 1
//func nextGreaterElement(_ findNums: [Int], _ nums: [Int]) -> [Int] {
//    var dict = [Int: Int]()
//    var stack = [Int]()
//    nums.forEach {
//        while (!stack.isEmpty && stack.last ?? 0 < $0) {
//            dict[stack.popLast() ?? 0] = $0
//        }
//        stack.append($0)
//    }
//    return findNums.map { dict[$0] ?? -1 }
//}


