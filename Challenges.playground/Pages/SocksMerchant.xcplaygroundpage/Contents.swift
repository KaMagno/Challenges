/*:
 # Socket Merchant
 
 John works at a clothing store. He has a large pile of socks that he must pair by color for sale. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
 For example, there are  socks with colors . There is one pair of color  and one of color . There are three odd socks left, one of each color. The number of pairs is .
 
 ## Function Description
 Complete the sockMerchant function in the editor below. It must return an integer representing the number of matching pairs of socks that are available.
 
 
 sockMerchant has the following parameter(s):
 
 **n:** the number of socks in the pile
 **ar:** the colors of each sock
 
 ## Input Format
 The first line contains an integer **n**, the number of socks represented in **ar**.
 
 The second line contains  space-separated integers describing the colors  of the socks in the pile.
 
 ## Constraints
 - 1 <= n <= 100
 - 1 <= ar[i] <= 100 *where* 0 <= i < n
 
 ## Output Format
 
 Return the total number of matching pairs of socks that John can sell.
 
 ### Sample Input
 ```
 9
 10 20 20 10 10 30 50 10 20
 ```
 
 ### Sample Output
 ```
 3
 ```
 
 ### Explanation
 
 ![explanation](sample.png)
 
 
 John can match three pairs of socks.
 */
import Foundation

// Complete the sockMerchant function below.
func sockMerchant(n: Int, ar: [Int]) -> Int {
    var numberOfPairs = 0
    var counter:[Int:Int] = [Int:Int]()
    
    for sock in ar {
        if let value = counter[sock] {
            counter[sock] = value + 1
        }else{
            counter[sock] = 1
        }
    }
    
    for row in counter {
        numberOfPairs += row.value/2
    }
    
    return numberOfPairs
}

let ar:[Int] = [10, 20, 20, 10, 10, 30, 50, 10, 20]

let result = sockMerchant(n: ar.count, ar: ar)

if result == 3 {
    print("🎉 Congrats")
}else{
    print("❌ Try Again")
}

/*:
 [Go back to Main](main)
 */
