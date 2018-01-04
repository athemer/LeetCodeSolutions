// MARK: Beat -
//   % Swift answers

// MARK: Reference -


// MARK: Question -
//We are given an array asteroids of integers representing asteroids in a row.
//
//For each asteroid, the absolute value represents its size, and the sign represents its direction (positive meaning right, negative meaning left). Each asteroid moves at the same speed.
//
//Find out the state of the asteroids after all collisions. If two asteroids meet, the smaller one will explode. If both are the same size, both will explode. Two asteroids moving in the same direction will never meet.

import Foundation

// MARK: Answer - 1
class Solution735 {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        
        guard asteroids.count > 2 else { return asteroids }
        
        var index = 1, end = 0, copied = asteroids
        
        while index < copied.count {
            
            if end == -1 {
                
                copied[0] = copied[index]
                end = 0
                index += 1
                continue
                
            } else {
    
                if copied[end] > 0 && copied[index] < 0 {
                    
                    if abs(copied[end]) == abs(copied[index]) {
                        end -= 1
                        index += 1
                    } else if abs(copied[end]) > abs(copied[index]) {
                        index += 1
                    } else {
                        end -= 1
                    }
                    
                } else {
                    end += 1
                    copied[end] = copied[index]
                    index += 1
                }
                
            }
            
            
        }
        
        return []
    }
}

// MARK: OtherSolutions - 1

