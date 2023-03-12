import UIKit


// MARK: Arrays

var someIntegers: [Int] = []
someIntegers.append(0)
someIntegers.append(2)

var repeatArr = Array(repeating: 0.0, count: 5)
print(repeatArr.count)
print(repeatArr.isEmpty)

repeatArr.insert(3, at: 0)
repeatArr.remove(at: 4)

for i in someIntegers { print(i) }
for (i, value) in repeatArr.enumerated() { print("\(i): \(value)")}



// MARK: Sets

// Have single copy of each item inside the set, item must be hashable in order to be contained in a set.

var letters = Set<Character>()
letters.insert("a")
letters.isEmpty
letters.count

for letter in letters.sorted() { print(letter) }

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]

oddDigits.union(evenDigits).sorted()
oddDigits.symmetricDifference(evenDigits)


// MARK: Dictionaries

var fullNames: [String : String] = [:]
fullNames["Meitar"] = "Basson"

fullNames.isEmpty
fullNames.count

for (first, last) in fullNames { print("\(first) \(last)") }


