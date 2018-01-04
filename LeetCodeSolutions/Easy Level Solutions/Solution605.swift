// MARK: Beat -
//    25.93 % Swift answers

// MARK: Reference -


// MARK: Question -
//Suppose you have a long flowerbed in which some of the plots are planted and some are not. However, flowers cannot be planted in adjacent plots - they would compete for water and both would die.
//
//Given a flowerbed (represented as an array containing 0 and 1, where 0 means empty and 1 means not empty), and a number n, return if n new flowers can be planted in it without violating the no-adjacent-flowers rule.



import Foundation

// MARK: Answer - 1
class Solution605 {
//    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
//
//        //取出有 1 的 index 值
//        let plotIndexArray: [Int] = flowerbed.enumerated().filter{ $0.element != 0 }.map{ $0.offset }
//
//        var distanceArray: [Int] = []
//
//        var lastIndex: Int = -1
//
//        for x in plotIndexArray {
//
//            distanceArray.append(x - lastIndex - 1)
//
//            lastIndex = x
//
//        }
//
//        distanceArray.append(flowerbed.count - plotIndexArray.last!)
//
//
//
//        return false
//    }
    
    func canPlaceFlowersTEST(_ flowerbed: [Int], _ n: Int) -> Bool {
        
        var i: Int = 0
        var count: Int = 0
        var copied = flowerbed
        
        while i < copied.count {
            
            if (copied[i] == 0 && (i == 0 || copied[i - 1] == 0) && (i == copied.count - 1 || copied[i + 1] == 0)) {
                copied[i] = 1
                count += 1
            }
            
            i += 1
            
        }
        
        return count >= n
    }
}



// MARK: OtherSolutions - 1
//func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
//
//    var count = 1,res = 0
//    for i in 0..<flowerbed.count {
//        if flowerbed[i] == 0 {
//            count += 1
//        } else {
//            res += (count - 1) / 2
//            count = 0
//        }
//    }
//    if count != 0 {
//        res += count / 2
//    }
//    return res >= n
//}

// MARK: OtherSolutions - 2
//func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
//    var count = 0
//    var bed = Array(flowerbed)
//    for i in 0..<bed.count {
//        guard bed[i] == 0 else {
//            continue
//        }
//        if (i == 0 || bed[i - 1] == 0) && (i == bed.count - 1 || bed[i + 1] == 0) {
//            bed[i] = 1
//            count += 1
//        }
//        if count >= n {
//            return true
//        }
//    }
//    return count >= n
}

