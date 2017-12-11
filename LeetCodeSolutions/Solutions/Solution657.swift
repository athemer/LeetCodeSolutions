// MARK: Beat -
// 68.92% Swift answers

// MARK: Reference -


// MARK: Question -
//  Initially, there is a Robot at position (0, 0). Given a sequence of its moves, judge if this robot makes a circle, which means it moves back to the original place.

//  The move sequence is represented by a string. And each move is represent by a character. The valid robot moves are R (Right), L (Left), U (Up) and D (down). The output should be true or false representing whether the robot makes a circle.



import Foundation

// MARK: Answer - 1
class Solution657 {
    func judgeCircle(_ moves: String) -> Bool {
        let strArray = Array(moves)
        
        var Dcount: Int = 0
        var Ucount: Int = 0
        var Rcount: Int = 0
        var Lcount: Int = 0
        
        for c in strArray {
            switch c {
            case "D":
                Dcount += 1
            case "U":
                Ucount += 1
            case "R":
                Rcount += 1
            case "L":
                Lcount += 1
            default:
                break
            }
        }
        
        if Dcount == Ucount && Rcount == Lcount {
            return true
        } else {
            return false
        }
    }}


// MARK: OtherSolutions - 1
//func judgeCircle(_ moves: String) -> Bool {
//    var rl: Int = 0
//    var ud: Int = 0
//
//    for ch in moves.unicodeScalars {
//        switch ch {
//        case "R":
//            rl += 1
//        case "L":
//            rl -= 1
//        case "U":
//            ud += 1
//        case "D":
//            ud -= 1
//        default:
//            break
//        }
//    }
//    return rl == 0 && ud == 0
//}

