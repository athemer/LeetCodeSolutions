// MARK: Beat -
// 23.53% Swift answers

// MARK: Reference -


// MARK: Question -
//Given a binary array, find the maximum number of consecutive 1s in this array


import Foundation

// MARK: Answer - 1
class Solution441 {
    func arrangeCoins(_ n: Int) -> Int {
        
        var cumulatedInt: Int = 0
        var IntToReturn: Int = 0
        
        switch n {
        case 0:  return 0
        case 1:  return 1
        case 2:  return 1
        case 3:  return 2
        case 4:  return 2
        default: break
        }
        
        for i in 0...n {
            
            if cumulatedInt > n {
                IntToReturn = i - 2
                break
            } else if cumulatedInt == n {
                IntToReturn = i - 1
                break
            }
            
            cumulatedInt += i
        }
        
        return IntToReturn
    }
}

// MARK: OtherSolutions - 1
//var numberOfStepsTaken = 0;
//var coinsLeft = n;
//while(numberOfStepsTaken < coinsLeft) {
//    numberOfStepsTaken += 1;
//    coinsLeft -= numberOfStepsTaken;
//}
//return numberOfStepsTaken

// MARK: OtherSolutions - 2
//return Int(sqrt(2.0*Double(n)+0.25)-0.5)

