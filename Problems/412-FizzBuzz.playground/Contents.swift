import UIKit

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var res = [String]()
        
        for i in 1...n {
            var ans = ""
            
            if i%3 == 0 { ans += "Fizz" }
            if i%5 == 0 { ans += "Buzz" }
            
            if ans.count == 0 {
                ans = "\(i)"
            }
            res.append(ans)
            
        }
        return res
    }
}

let solution = Solution()

assert(solution.fizzBuzz(1) == ["1"])
assert(solution.fizzBuzz(3) == ["1", "2", "Fizz"])
assert(solution.fizzBuzz(15) == ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"])
