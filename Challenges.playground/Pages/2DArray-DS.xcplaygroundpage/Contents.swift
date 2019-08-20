/*:
 ![2DArray-DS](2DArray-DS.pdf)
 ![2DArray-DS 2](2DArray-DS2.pdf)
 
 Links used to Study
 - [Manny Codes - How To Solve The 2D-Array Hourglass Code Challenge](https://medium.com/@mannycodes/how-to-solve-the-2d-array-hourglass-code-challenge-15389fdf77b5)
 */

import Foundation

// Complete the hourglassSum function below.
func hourglassSum(arr: [[Int]]) -> Int {
    var maxValue = Int.min
    for row in 0..<arr.count-2 {
        for col in 0..<arr.count-2 {
            var sum = 0
            sum += arr[row][col]
            sum += arr[row][col+1]
            sum += arr[row][col+2]
            sum += arr[row+1][col+1]
            sum += arr[row+2][col]
            sum += arr[row+2][col+1]
            sum += arr[row+2][col+2]
            maxValue = sum > maxValue ? sum : maxValue
        }
    }
    return maxValue
}


let arr:[[Int]] = [[-1,-1,-1,0,0,0],[0,-1,0,0,0,0],[-1,-1,-1,0,0,0],[0,0,-2,-4,-4,0],[0,0,0,-2,0,0],[0,0,-1,-2,-4,0]]
let result = hourglassSum(arr: arr)

if result == -3 {
    print("🎉 Congrats")
}else{
    print("❌ Try Again")
}
/*:
 [Go back to Main](main)
 */
