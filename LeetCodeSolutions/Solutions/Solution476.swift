

// Beat 14.71% Swift answers

import Foundation

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


// OtherSolutions - 1

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


// OtherSolutions - 2
//func findComplement(_ num: Int) -> Int {
//    var i = 1
//    while i <= num {
//        i = i<<1
//    }
//    return (i-1) ^ num
//}



