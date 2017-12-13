// MARK: Beat -
// 40.00% Swift answers

// MARK: Reference -
//https://www.hackingwithswift.com/example-code/strings/how-to-capitalize-words-in-a-string-using-capitalized

// MARK: Question -
//Given a word, you need to judge whether the usage of capitals in it is right or not.
//
//We define the usage of capitals in a word to be right when one of the following cases holds:
//
//All letters in this word are capitals, like "USA".
//All letters in this word are not capitals, like "leetcode".
//Only the first letter in this word is capital if it has more than one letter, like "Google".
//Otherwise, we define that this word doesn't use capitals in a right way.

import Foundation

// MARK: Answer - 1
class Solution520 {
    func detectCapitalUse(_ word: String) -> Bool {
        
        var copiedWord = word
     
        let isLastUppercased: Bool = String(describing: word.last!) != String(describing: word.last!).lowercased()
        let isFirstUppercased: Bool = String(describing: word.first!) != String(describing: word.first!).lowercased()
        
        var isLetterinBetweenALLUppercased: Bool = true
        
        var isLetterinBetweenALLLowercased: Bool = true
        
        var copiedWordRemoved = String(describing: copiedWord.removeLast())
        
        guard word.count > 1 else { return true }
        
        
        if word.count == 2 {
            
            if isLastUppercased && !isFirstUppercased {
                return false
            } else {
                return true
            }
        }
        
        
        let copiedWordRemovedFirst = String(describing: copiedWord.removeFirst())
        
        for c in copiedWord {
            
            if String(c) == String(c).lowercased() {
                isLetterinBetweenALLUppercased = false
                break
            }
        }
        
        for c in copiedWord {
            
            if String(c) == String(c).uppercased() {
                isLetterinBetweenALLLowercased = false
                break
            }
        }

        
        if isFirstUppercased {
            
            if isLetterinBetweenALLUppercased && isLastUppercased {
                return true
            } else if isLetterinBetweenALLLowercased && !isLastUppercased {
                return true
            } else {
                return false
            }
            
        } else if isLastUppercased {
            
            return false
            
        } else if isLetterinBetweenALLUppercased {
            if isFirstUppercased && isLastUppercased {
                return true
            } else {
                return false
            }
            
        } else if isLetterinBetweenALLLowercased {
            
            if !isFirstUppercased && !isLastUppercased {
                return true
            } else {
                return false
            }
            
        } else {
        
            return false
        }
    }
    
    }

// MARK: OtherSolutions - 1
//func detectCapitalUse(_ word: String) -> Bool {
//
//    if word.count == 1 && word == word.uppercased() { return true }
//    if word == word.uppercased() { return true }
//    if word == word.lowercased() { return true }
//    if word == word.capitalized { return true }
//    return false
//}


