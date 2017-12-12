

// MARK: Beat -
// 14.71% Swift answers

// MARK: Reference -
// https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AdvancedOperators.html

// MARK: Question -
//Given a positive integer, output its complement number. The complement strategy is to flip the bits of its binary representation.
//
//Note:
//The given integer is guaranteed to fit within the range of a 32-bit signed integer.
//You could assume no leading zero bit in the integer’s binary representation.


import Foundation

// MARK: Answer - 1
class Solution476 {
    
    func findComplement(_ num: Int) -> Int {
        
        var IntToReturn: Int?
        let array = Array(String(num, radix: 2))
        var convertedArray: [String] = []
        
        for i in array {
            if i == "1" {
                convertedArray.append("0")
            } else {
                convertedArray.append("1")
            }
        }
        
        let convertedStr: String = convertedArray.joined(separator: "")
        IntToReturn = Int(convertedStr, radix: 2)
        return IntToReturn!
    }
}


// MARK: OtherSolutions - 1

//func findComplement(_ num: Int) -> Int {
//    var cur = num
//    var bitCount = 0
//    while cur > 0 {
//        bitCount += 1
//        cur = cur>>1
//    }
//
//    let mask = 1<<bitCount - 1
//    return num^mask
//}


// MARK: OtherSolutions - 2
//func findComplement(_ num: Int) -> Int {
//    var i = 1
//    while i <= num {
//        i = i<<1
//    }
//    return (i-1) ^ num
//}



