import UIKit

class Solution {
    func romanToInt(_ s: String) -> Int {
        var res = 0
        let roman: [String: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        s.enumerated().forEach { (i, c) in
            let value = roman[String(c)]!
            
            guard i + 1 < s.count else {
                res += value
                return
            }

            let index = s.index(s.startIndex, offsetBy: i + 1)
            let nextKey = String(s[index])
            let nextValue = roman[nextKey]!

            if nextValue > value {
                res -= value
            } else {
                res += value
            }
        }
        
        return res
    }
}

let solution: Solution = .init()

print(solution.romanToInt(""))


