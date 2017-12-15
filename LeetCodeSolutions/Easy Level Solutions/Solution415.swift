// Failed To answer % Swift answers

// MARK: Reference -


// MARK: Question -

import Foundation

// MARK: Answer - 1
class Solution415 {
    func addStrings(_ num1: String, _ num2: String) -> String {
//        let Int1 = Int(num1)!
//        let Int2 = Int(num2)!
//
//        return String(Int1 + Int2)
        
        var arr1: [UnicodeScalar] = num1.unicodeScalars.reversed()
        var arr2: [UnicodeScalar] = num2.unicodeScalars.reversed()
        var carry = 0
        var index = 0
        var res = ""
        while index < arr1.count || index < arr2.count {
            var n1 = 0
            var n2 = 0
            if index < arr1.count {
                let ch1 = arr1[index];
                n1 = Int(ch1.value) - Int("0".unicodeScalars.first!.value)
            }
            if index < arr2.count {
                let ch2 = arr2[index];
                n2 = Int(ch2.value) - Int("0".unicodeScalars.first!.value)
            }
            let sum = n1 + n2 + carry
            res = String( sum % 10) + res
            carry = sum / 10
            index += 1
        }
        if carry > 0 {
            res = String(carry) + res
        }
        
        return res
    }
}

// MARK: OtherSolutions - 1

//var arr1:[UnicodeScalar] = num1.unicodeScalars.reversed()
//var arr2:[UnicodeScalar] = num2.unicodeScalars.reversed()
//var carry = 0;
//var index = 0;
//var res = "";
//while index < arr1.count || index < arr2.count {
//    var n1 = 0
//    var n2 = 0
//    if index < arr1.count {
//        let ch1 = arr1[index];
//        n1 = Int(ch1.value) - Int("0".unicodeScalars.first!.value)
//    }
//    if index < arr2.count {
//        let ch2 = arr2[index];
//        n2 = Int(ch2.value) - Int("0".unicodeScalars.first!.value)
//    }
//    let sum = n1 + n2 + carry;
//    res = String( sum % 10) + res
//    carry = sum / 10
//    index += 1
//}
//if carry > 0 {
//    res = String(carry) + res
//}
//
//return res


// MARK: OtherSolutions - 2

//let num1 = num1.map { Int(String($0))! }
//let num2 = num2.map { Int(String($0))! }
//
//var i = num1.count - 1, j = num2.count - 1
//var carry = 0
//var res = ""
//while i >= 0 && j >= 0 {
//    let sum = num1[i] + num2[j] + carry
//    carry = sum / 10
//    res = String(sum % 10) + res
//    i -= 1
//    j -= 1
//}
//while i >= 0 {
//    let sum = num1[i] + carry
//    carry = sum / 10
//    res = String(sum % 10) + res
//    i -= 1
//}
//
//while j >= 0 {
//    let sum = num2[j] + carry
//    carry = sum / 10
//    res = String(sum % 10) + res
//    j -= 1
//}
//
//if carry != 0 { res = String(carry % 10) + res }
//return res

