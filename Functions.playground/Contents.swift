import UIKit

// MARK: FUNCTIONS

func greeting(name: String) -> String {
    return "Greetings \(name)!"
}

print(greeting(name: "Meitar"))


func noReturnValFunc() {
    print("Hello World!")
}

noReturnValFunc()


// Inside VS Outside name

func someFunc(argLabel paramName: Int) -> Int {
    return paramName + 1
}

someFunc(argLabel: 3)

// Default values

func defaultFunc(level: Int = 0) {
    print(level)
}

defaultFunc()
defaultFunc(level: 3)

// MARK: Variadic parameter

// When not sure how many arguments will be passed

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

print(arithmeticMean(1,2,3,4,5,6))

// MARK: Inout parameter

// Use when need to modify a value inside a function

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var a = 3, b = 105
swapTwoInts(&a, &b)

print("a is now \(a), b is now \(b)")


// MARK: Fucntion types as a parameter
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

var mathFunc: (Int, Int) -> Int = addTwoInts

print(mathFunc(3, 5))
