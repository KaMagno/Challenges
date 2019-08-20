/*:
 ![NewYearChaos](NewYearChaos.pdf)
 ![NewYearChaos2](NewYearChaos2.pdf)
 */

import Foundation

// Complete the minimumBribes function below.
func minimumBribes(q: [Int]) -> Int? {
    var numberOfBribes = 0
    
    for i in q {
        print("i = \(i)")
        let index = q.index(of: i)! + 1
        let nextValue = q[index + 1]
        let difference = i - nextValue
        print("difference = \(difference)")
        if difference > 2{
            return nil
        }else if difference > 0 {
            numberOfBribes += difference
        }
    }
    
    return numberOfBribes
}

let input:[Int] = [5, 1, 2, 3, 7, 8, 6, 4]
let output = minimumBribes(q: input)

if let output = output,
    output == 7 {
    print("🎉 Congrats")
}else{
    print("❌ Try Again")
}

/*:
 [Go back to Main](main)
 */

