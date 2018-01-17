// MARK: Beat -
//   FAILED TO ANSWER % Swift answers

// MARK: Reference -


// MARK: Question -
//We are given an array asteroids of integers representing asteroids in a row.
//
//For each asteroid, the absolute value represents its size, and the sign represents its direction (positive meaning right, negative meaning left). Each asteroid moves at the same speed.
//
//Find out the state of the asteroids after all collisions. If two asteroids meet, the smaller one will explode. If both are the same size, both will explode. Two asteroids moving in the same direction will never meet.

import Foundation
import UIKit

// MARK: Answer - 1
class Solution735 {
    
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()
        for asteroid in asteroids {
            if asteroid > 0 {
                stack.append(asteroid)
            } else if let last = stack.last, last > 0 {
                let currAsteroid = abs(asteroid)
                if last < currAsteroid {
                    stack.removeLast()
                    stack.append(-currAsteroid)
                } else if currAsteroid == last {
                    stack.removeLast()
                }
            } else {
                stack.append(asteroid)
            }
            
            while stack.count > 1, let last = stack.last, last < 0, stack[stack.count-2] > 0  {
                let prevAsteroid = stack[stack.count-2]
                let lastAsteroid = abs(last)
                if lastAsteroid < prevAsteroid {
                    stack.removeLast()
                } else if prevAsteroid == lastAsteroid {
                    stack.removeLast()
                    stack.removeLast()
                }  else {
                    stack.removeLast()
                    stack.removeLast()
                    stack.append(-lastAsteroid)
                }
            }
        }
        return stack
    }
}

// MARK: OtherSolutions - 1
/*
func asteroidCollision(_ asteroids: [Int]) -> [Int] {
    if asteroids.count < 2 {
        return asteroids
    }
    
    var result: [Int] = []
    
    for i in 0..<asteroids.count {
        
        if result.isEmpty || asteroids[i] > 0 {
            result.append(asteroids[i])
            continue
        }
        
        if result.last! * asteroids[i] > 0 {
            result.append(asteroids[i])
            continue
        }
        
        if asteroids[i] < 0 {
            
            removing: while result.last! <= asteroids[i] || result.last! * asteroids[i] < 0 {
                
                if result.last! < -asteroids[i] {
                    result.remove(at: result.count - 1)
                    
                    if result.isEmpty || result.last! * asteroids[i] > 0 {
                        result.append(asteroids[i])
                        break removing
                    }
                } else if result.last! == -asteroids[i] {
                    result.remove(at: result.count - 1)
                    break removing
                } else {
                    break removing
                }
            }
        }
    }
    
    return result
}
*/




