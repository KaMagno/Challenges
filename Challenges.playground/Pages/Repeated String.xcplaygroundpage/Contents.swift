/*:
 ![repeated string](repeated-string-English.pdf)
 */

import Foundation

// Complete the repeatedString function below.
func repeatedString(s: String, n: Int) -> Int {
    let countA = s.filter({$0 == "a"}).count
    let countOfRepitions = n / s.count
    let prefix = s.prefix(n % s.count)
    let countExtraA = prefix.filter({$0 == "a"}).count
    
    return countA*countOfRepitions+countExtraA
}

let string = "aba"
let n = 10
let result = repeatedString(s: string, n: n)

if result == 7 {
    print("🎉 Congrats")
}else{
    print("❌ Try Again")
}

/*:
 [Go back to Main](main)
 */
