// MARK: Beat -
//   50 % Swift answers

// MARK: Reference -


// MARK: Question -

import Foundation

// MARK: Answer - 1
class Solution495 {
    func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
        
        if timeSeries.count == 0 {
            return 0
        } else if timeSeries.count == 1{
            return duration
        }
        
        let reversed: [Int] = timeSeries.reversed()
        
        var intToReturn: Int = 0
        
        let dur = duration - 1
        
        for indexT in 0..<reversed.count - 1 {
        
            let diff = reversed[indexT] - reversed[indexT + 1]
            
            if diff > dur {
                intToReturn += duration
            } else {
                intToReturn += diff
            }
        }
        
        return intToReturn + duration
    }
}

// MARK: OtherSolutions - 1
//func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
//    var totalCount = 0
//    if timeSeries.count == 0 || duration == 0 {
//        return 0
//    }
//
//    if timeSeries.count == 1 {
//        return duration
//    }
//
//
//    for i in 1..<timeSeries.count {
//        if timeSeries[i] < timeSeries[i - 1] + duration {
//            totalCount += timeSeries[i] - timeSeries[i - 1]
//        }
//        else {
//            totalCount += duration
//        }
//    }
//
//    totalCount += duration
//
//    return totalCount
//}

