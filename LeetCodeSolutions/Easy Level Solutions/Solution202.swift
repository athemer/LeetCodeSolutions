// MARK: Beat -
// 0 % Swift answers

// MARK: Reference -


// MARK: Question -

import Foundation

// MARK: Answer - 1
class Solution202 {
    
    var usedNumberArray: [Int] = []
    
    func isHappy(_ n: Int) -> Bool {
        var number: Int = 0
        
        if usedNumberArray.contains(n) {
            return false
        }
        
        if n < 10 {
            number += n * n
        } else {
            let intArray: [Int] = String(n).flatMap{Int(String($0))}
            for int in intArray {
                number += int * int
            }
        }
        
        if number != 1 {
            usedNumberArray.append(n)
            return isHappy(number)
        } else {
            return true
        }
    }
}

// MARK: OtherSolutions - 1
//func isHappy(_ n: Int) -> Bool {
//    
//    // print("num - \(n)");
//    
//    var sum = 0;
//    var i = n;
//    
//    while i > 0 {
//        let remainder = i%10;
//        sum += remainder*remainder;
//        i /= 10;
//    }
//    
//    if sum > 6 {
//        return isHappy(sum);
//    }
//    // print("sum - \(sum)");
//    return sum == 1;
//}


// MARK: OtherSolutions - 2
//func isHappy(_ n: Int) -> Bool {
//    if n <= 0 { return false }
//    if n == 1 { return true }
//
//    var num = n
//    while num > 9 {
//        var sum = 0
//        while num != 0 {
//            let remainder = num % 10
//            sum += remainder * remainder
//            num /= 10
//        }
//        num = sum
//    }
//
//    if num == 1 || num == 7 { return true }
//    return false
//}

