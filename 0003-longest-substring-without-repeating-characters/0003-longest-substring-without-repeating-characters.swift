class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var dict = [String.Element: Int]()
        var l = 0
        var answer = 0
        let s = Array(s)
        for r in 0..<s.count {
            if let x = dict[s[r]] {
                var j = x
                while j>=0, j>=l {
                    dict.removeValue(forKey:s[j])
                    j -= 1
                }
                l = x+1
            }
            dict[s[r]] = r
            answer = max(answer, r-l+1)
        }
        return answer
    }
}