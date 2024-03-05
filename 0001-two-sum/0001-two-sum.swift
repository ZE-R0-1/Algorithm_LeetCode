class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
         var arr = nums
        let cnt = arr.count

        for i in 1...cnt {
            let first = arr[cnt-i]

            for j in 0..<cnt-i {
                let second = arr[j]

                if first + second == target {
                    return [cnt-i, j]
                }
            }
        }
        return []
    }
}