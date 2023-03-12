import UIKit

// MARK: COMPARING TUPLES

print((1, "Apple") < (1, "Zebra"))

// MARK: TERNARY CONDITIONAL

let a = 1 < 2 ? 3 : 4


// MARK: NIL-COALESCING

var optionalString: String?
print(optionalString ?? "Error")

// MARK: RANGE OPERATOR

for _ in 1...5 {}
for _ in 0..<4 {}

let arr: [Int] = [1,2,3,4,5,6,7,8,9,10]

for i in arr[5...] { print(i) }
