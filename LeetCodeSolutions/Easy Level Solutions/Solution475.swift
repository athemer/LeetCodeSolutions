// MARK: Beat -
//  100% Swift answers

// MARK: Reference -


// MARK: Question -
//Winter is coming! Your first job during the contest is to design a standard heater with fixed warm radius to warm all the houses.
//
//Now, you are given positions of houses and heaters on a horizontal line, find out minimum radius of heaters so that all houses could be covered by those heaters.
//
//So, your input will be the positions of houses and heaters seperately, and your expected output will be the minimum radius standard of heaters.

import Foundation

// MARK: Answer - 1
class Solution475 {
    
    func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
        var heaters = heaters.sorted()
        var result = Int.min
        
        for house in houses {
            var i = binarySearch(heaters, house)
            if i < 0 {
                i = -(i + 1)
            }
            let rightDistance = i - 1 >= 0 ? (house - heaters[i - 1]) : Int.max
            let leftDistance = i < heaters.count ? (heaters[i] - house) : Int.max
            
            result = max(result, min(rightDistance, leftDistance))
        }
        
        return result
    }
    
    private func binarySearch(_ nums: [Int], _ num: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var middle = 0
        
        while left <= right {
            middle = (left + right) / 2
            if nums[middle] < num {
                left = middle + 1
            } else {
                right = middle - 1
            }
        }
        
        return left
    }
}



// MARK: OtherSolutions - 1
//func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
//    var houseArray =  houses.sorted()
//    var heaterArray = heaters.sorted()
//    var radiusArray = Array<Int>(repeating: Int.max, count: houses.count)
//    var heaterRightBounds = 0
//    var i = 0
//
//    while (i < houseArray.count && heaterRightBounds < heaterArray.count){
//        if(i < houseArray.count  && houseArray[i] <= heaterArray[heaterRightBounds]){
//            radiusArray[i] = heaterArray[heaterRightBounds] - houseArray[i]
//            i += 1
//            continue
//        }else{
//            heaterRightBounds += 1
//        }
//    }
//
//    var heaterLeftBounds = heaterArray.count - 1
//    var j = houseArray.count - 1
//    while(j >= 0 && heaterLeftBounds >= 0){
//        if(j >= 0 && houseArray[j] >= heaterArray[heaterLeftBounds]){
//            radiusArray[j] = min(radiusArray[j], houseArray[j] - heaterArray[heaterLeftBounds])
//            j -= 1
//            continue
//        }else{
//            heaterLeftBounds -= 1
//        }
//    }
//    return radiusArray.max()!
//}



