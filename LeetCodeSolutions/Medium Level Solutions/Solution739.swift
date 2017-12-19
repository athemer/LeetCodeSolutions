// MARK: Beat -
//  "TLE"  % Swift answers

// MARK: Reference -


// MARK: Question -

import Foundation

// MARK: Answer - 1
class Solution739 {
    
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        
        guard temperatures.count > 1 else { return [0] }
        var arrayToReturn: [Int] = []
        
        for i in 0..<temperatures.count  {
            
            let item = temperatures.enumerated().filter{ $0.element > temperatures[i] && $0.offset > i}.first
            
            if item != nil {
                arrayToReturn.append(temperatures.distance(from: i, to: item!.offset))
            } else {
                arrayToReturn.append(0)
            }
        }
        return arrayToReturn
    }

}

// MARK: OtherSolutions - 1



// MARK: OtherSolutions - 2

