/*:
 ![Arrays-LeftRotation](ctci-array-left-rotation-English.pdf)
 */

import Foundation

// Complete the rotLeft function below.
func rotLeft(a: [Int], d: Int) -> [Int] {
    let prefix = a.prefix(upTo: d)
    let suffix = a.suffix(from: d)
    var newArray = Array(suffix)
    newArray.append(contentsOf: prefix)
    return newArray
}

var a = [Int]()
for i in 1...5 {
    a.append(i)
}

let input1:[Int] = a
let input2:Int = 3
let output = rotLeft(a: input1, d: input2)

if output == [4,5,1,2,3] {
    print("🎉 Congrats")
}else{
    print("❌ Try Again")
}

/*:
 [Go back to Main](main)
 */
