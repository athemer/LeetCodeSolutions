// MARK: Beat -
//    % Swift answers

// MARK: Reference -


// MARK: Question -
//Suppose you have a long flowerbed in which some of the plots are planted and some are not. However, flowers cannot be planted in adjacent plots - they would compete for water and both would die.
//
//Given a flowerbed (represented as an array containing 0 and 1, where 0 means empty and 1 means not empty), and a number n, return if n new flowers can be planted in it without violating the no-adjacent-flowers rule.



import Foundation

// MARK: Answer - 1
class Solution605 {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        
        //取出有 1 的 index 值
        let plotIndexArray: [Int] = flowerbed.enumerated().filter{ $0.element != 0 }.map{ $0.offset }
        
        var distanceArray: [Int] = []
        
        var lastIndex: Int = -1
        
        for x in plotIndexArray {
            
            distanceArray.append(x - lastIndex - 1)
            
            lastIndex = x
            
        }
        
        distanceArray.append(flowerbed.count - plotIndexArray.last!)
        
        
    
        return false
    }
}



// MARK: OtherSolutions - 1

