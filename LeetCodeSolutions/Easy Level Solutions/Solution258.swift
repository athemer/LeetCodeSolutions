// MARK: Beat -
// 0% Swift answers

// MARK: Reference -


// MARK: Question -
//  Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.


import Foundation

// MARK: Answer - 1
class Solution258 {
    func addDigits(_ num: Int) -> Int {
    
        let intArray: [Int] = String(num).flatMap{Int(String($0))}
        let number: Int = intArray.reduce(0, {$0 + $1})
        let count: Int = String(number).flatMap{Int(String($0))}.count
        while count > 1 {
            return addDigits(number)
        }
        return number
    }
}

// MARK: OtherSolutions - 1
//let res = num % 9
//return num == 0 ? 0 : (res == 0 ? 9 : res)

// MARK: OtherSolutions - 2
//if num < 10 {
//    return num
//}
//
//let output = num % 9
//if output == 0 {
//    return 9
//}
//
//return output

