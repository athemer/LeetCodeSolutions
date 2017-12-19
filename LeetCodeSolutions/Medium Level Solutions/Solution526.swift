// MARK: Beat -
//    % Swift answers

// MARK: Reference -


// MARK: Question -
//Suppose you have N integers from 1 to N. We define a beautiful arrangement as an array that is constructed by these N numbers successfully if one of the following is true for the ith position (1 <= i <= N) in this array:
//
//The number at the ith position is divisible by i.
//i is divisible by the number at the ith position.
//Now given N, how many beautiful arrangements can you construct?

import Foundation

// MARK: Answer - 1
class Solution526 {
    
    func countArrangement(_ N: Int) -> Int {
        if N == 0 {
            return 0
        }
        
        var visited = [Bool](repeatElement(false, count: N + 1))
        var result = 0
        
        backtracking(N, 1, &visited, &result)
        
        return result
    }
    
    private func backtracking(_ N: Int, _ pos: Int, _ visited: inout [Bool], _ result: inout Int) {
        if pos > N {
            result += 1
            return
        }
        
        for i in 1...N {
            if !visited[i] && (i % pos == 0 || pos % i == 0) {
                visited[i] = true
                backtracking(N, pos + 1, &visited, &result)
                visited[i] = false
            }
        }
    }
}

// MARK: OtherSolutions - 1

//class Solution526d2 {
//func counts(_ n: Int, _ result: inout [Int]) -> Int {
//
//    print (" ==== ", result)
//
//    if n <= 0 {
//        return 1
//    }
//
//    var total = 0
//    for i in 0..<n {
//        if result[i] % n == 0 || n % result[i] == 0 {
//            result.swapAt(i, n - 1)
//            total += counts(n - 1, &result)
//            result.swapAt(i, n - 1)
//        }
//    }
//
//    return total
//}
//
//func countArrangement(_ N: Int) -> Int {
//    var result: [Int] = Array(repeating: 0, count: N)
//    for i in 0..<N {
//        result[i] = i + 1
//    }
//    return counts(N, &result)
//}
//}

