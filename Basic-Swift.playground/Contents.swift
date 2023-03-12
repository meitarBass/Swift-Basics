import UIKit


// MARK: CONTANTS & VARIABLES

let maximumAttempts = 10
var currAttempts = 0



// MARK: TYPE ANNOTATION

let number: String = "6"




// MARK: NUMERIC LITERALS

let dec = 3 // Decimal - 3
let binary = 0b111 // Binary - 7
let oct = 0o13 // Octal - 11
let hexa = 0xFF // Hexadeciaml - 255




// MARK: TYPEALIAS

/* Define an alternative name for an existing type */

typealias EightBitsMachine = UInt8





// MARK: TUPLE

let err = (404, "Not found")

let (errCode, errMsg) = err
print(errCode)

let (_, justMsg) = err
print(justMsg)





// MARK: OPTIONALS
// nil, optional is valueless

var responseCode: Int? = 404
// responseCode = nil



// MARK: IF STATEMENTS & FORCE UNWRAPPING


// Adds a default value of -1

if responseCode != nil {
    print("The response code is \(responseCode ?? -1)")
}

// Force Unwrapp

print("The response code is \(responseCode!)")




// MARK: OPTIONAL BINDING

if let _ = responseCode {
    print("Reponse code isn't nil")
}

if let responseCode {
    print("The code is \(responseCode)")
}


// MARK: IMPLICITY UNRWAPPED OPTIONAL

let optionalData: String? = "Optional Data."
let forcedString: String = optionalData!

let assumedData: String! = "here's some data"
let implicitString: String = assumedData // No need for exclamation point




// MARK: ERROR HANDLING

func canThrowAnError() throws {}

do { try canThrowAnError() } catch { }




// MARK: ASSERTIONS AND PRECONDITIONS
// Assertions checked only in debug mode unlike preconditions which are checked both in debug and product.

let age = -3
assert(age >= 0, "A person's age can't be less than zero.")

precondition(true, "some error")
