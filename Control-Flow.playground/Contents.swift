import UIKit

// MARK: Repeat-While

repeat {
    print(1)
} while(false)
        
        
// MARK: Switch

// No need for break
let someChar: Character = "z"
switch someChar {
    case "a":
        print("First")
    case "z":
        print("Last")
    default:
        print("Some other char")
}

// Ranged Switch
let count = 58
switch count {
case 0..<10:
    print("A few")
case 10...100:
    print("Many")
default:
    print("A lot")
}


// Tuple Switch
let point = (1,1)
switch point {
case (0,0):
    print("\(point) is at the origin")
case (_, 0):
    print("\(point) is on the x-axis")
case (0, let y):
    print("\(point) is on the y-axis with a value of \(y)")
case (-2...2, -2...2):
    print("\(point) is in this box")
case let (x,y) where x == y: // MARK: Where
    print("\(x), \(y) is on the x==y line")
default:
    print("\(point) is outside the box")
}

// MARK: CONTINUE, BREAK, FALLTHROUGH, RETURN, THROW
