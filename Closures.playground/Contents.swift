import UIKit

// MARK: Closures
let names = ["Chris", "Alex", "Meitar"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames = names.sorted(by: backward)

// MARK: in - indicates that the definition of the closure's param and return type has finished

// This function is doing the same
reversedNames = names.sorted(by: { (s1: String, s2: String) in
    return s1 > s2
})

// MARK: The type of the sorted function can be inferred therefore no need to implicity declare the type

// This function is doing the same
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2})

// The return keyword can also be inferred
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 })

// MARK: Shortand argument names

// This function is doing the same

// $0, $1 refers to the first and second argument taken by the function
reversedNames = names.sorted(by: { $0 > $1 })

// MARK: Theres a shorter way of writing this function.

// MARK: Escaping closures

/*
 A closure is said to escape a func when it is passed as an argument to a function but
 called after that function returns.
*/
