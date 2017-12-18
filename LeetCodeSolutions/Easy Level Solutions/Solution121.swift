// MARK: Beat -
// FAILED TO ANSWER % Swift answers

// MARK: Reference -


// MARK: Question -

import Foundation

// MARK: Answer - 1
class Solution121 {
    
    // ====== This Answer failed at testcase 173, check for other soloution below
    func maxProfit(_ prices: [Int]) -> Int {
        
        let sortedPreices = prices.enumerated().sorted{ $0.element < $1.element }
        var intToReturn = 0
        
        for price in sortedPreices {
            var isFound = false
            for priceReversed in sortedPreices.reversed() {
                if price.offset < priceReversed.offset && price.element < priceReversed.element {
                    intToReturn = priceReversed.element - price.element
                    isFound = true
                    break
                }
            }
            if isFound {
                break
            }
        }

        return intToReturn
    }
}

// MARK: OtherSolutions - 1

//func ccccccc(prices: [Int]) -> Int {
//    if (prices.count < 2) {return 0}
//
//    var i = 1
//    var maxProfit = 0
//    var minPrice = prices[0]
//
//    while (i < prices.count){
//
//        let currentPrice = prices[i];
//
//        if (currentPrice - minPrice > maxProfit){
//
//            maxProfit = currentPrice-minPrice;
//        }
//
//        if (minPrice > currentPrice){
//
//            minPrice = currentPrice;
//        }
//        i += 1
//    }
//
//    return maxProfit
//}


// MARK: OtherSolutions - 2

//guard prices.count > 1 else { return 0 }
//var profit = 0
//var min = prices[0]
//for i in 1..<prices.count {
//    if min > prices[i] { min = prices[i] }
//    if prices[i] - min > profit {
//        profit = prices[i] - min
//    }
//}
//return profit

