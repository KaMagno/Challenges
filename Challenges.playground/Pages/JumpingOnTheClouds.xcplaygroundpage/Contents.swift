/*:
 ![explanation](jumping-on-the-clouds-English.pdf)
 ![explanation](jumping-on-the-clouds-English2.pdf)
 */

import Foundation

// Complete the jumpingOnClouds function below.
func jumpingOnClouds(c: [Int]) -> Int {
    var jumps = 0
    
    func jump(index:Int = 0, jumps: Int = 0, clouds:[Int]) -> Int{
        var jumpsTemp = jumps
        if index+2 < clouds.endIndex,
            clouds[index+2] == 0 {
            jumpsTemp += 1
            return jump(index: index+2, jumps: jumpsTemp, clouds: clouds)
        } else if index+1 < c.endIndex,
            clouds[index+1] == 0 {
            jumpsTemp += 1
            return jump(index: index+1, jumps: jumpsTemp, clouds: clouds)
        } else {
            return jumps
        }
    }
    
    jumps = jump(clouds: c)
    
    return jumps
}



let c:[Int] = [0,0,0,1,0,0]
let result = jumpingOnClouds(c: c)

if result == 3 {
    print("🎉 Congrats")
}else{
    print("❌ Try Again")
}

/*:
 [Go back to Main](main)
 */
