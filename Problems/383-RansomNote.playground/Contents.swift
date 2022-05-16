import UIKit

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        if ransomNote.count == 0 || magazine.count == 0 { return false }
        var res = true
        
        var magazineLetters: [Character] = []
        
        magazine.forEach { c in
            magazineLetters.append(c)
        }
        
        for c in ransomNote {
            if let index = magazineLetters.firstIndex(of: c) {
                res = true
                magazineLetters.remove(at: index)
            } else {
                res = false
                break
            }
        }
        
        return res
    }
}

// Testing
let solution = Solution()

assert(solution.canConstruct("fihjjjjei", "hjibagacbhadfaefdjaeaebgi") == false, "test failed")

