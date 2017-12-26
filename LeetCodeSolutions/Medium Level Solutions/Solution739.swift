// MARK: Beat -
//    % Swift answers

// MARK: Reference -


// MARK: Question -

import Foundation

// MARK: Answer - 1
class Solution739 {


    func testmethod(_ temperatures: [Int]) -> [Int] {
        
        guard temperatures.count > 1 else { return [0] }
        
        var arrayToReturn: [Int] = Array(repeating: Int.max, count: temperatures.count)
        
        var next: [Int] = Array(repeating: Int.max, count: 101)
    
        for i in stride(from: temperatures.count - 1, through: 0, by: -1) {
            
            var warmerIndex: Int = Int.max
            
                for t in temperatures[i] + 1..<101 {
                    if next[t] < warmerIndex {
                        warmerIndex = next[t]
                    }
                }
            
            if warmerIndex < Int.max {
                arrayToReturn[i] = warmerIndex - i
            } else {
                arrayToReturn[i] = 0
            }
            
            next[temperatures[i]] = i
            
        }
        return arrayToReturn
    }
    
    
}

// MARK: OtherSolutions - 1



// MARK: OtherSolutions - 2

