// A Swift Introduction to Swift Playground
// Functions and Closures

import UIKit

//-------------------------------------------------------------------
// Functions
//-------------------------------------------------------------------
// Simplest
func iLikeBeer() {
    print("I like 🍺")
}
iLikeBeer()

// Swift 3 requires 1st argument to be named
func hello(person: String) -> String {
    let greeting = "Hello \(person)"
    return greeting
}
hello(person: "Sam")

// Multiple arguments
func printStatus(code: Int, message: String) {
    print("Status: \(code): \(message)")
}
let http404Error = (statusCode: 404, statusMsg: "Not Found")
printStatus(code: http404Error.statusCode, message: http404Error.statusMsg)

// Multiple return values using tuples
func getStatus() -> (code: Int, msg: String, description: String) {
    let status =
        (code: 404,
         msg: "Not found",
         description: "The resource cannot be found")
    return status;
}
print(getStatus())
var returnedTuple = getStatus();

// Default argument value
func greeting(person: String = "Unknown") {
    if person == "Unknown" {
        print("Who are you?")
    } else {
        print("Hello \(person)")
    }
}
greeting()
greeting(person: "Phil")

// Variable number of arguments, can have at most 1
func sum(numbers: Int...) -> Int {
    var total: Int = 0
    for number in numbers {
        total += number
    }
    return total
}
sum(numbers: 1, 2, 3, 4, 5)
sum()

// Functions are types, underscores allow not naming arguments in calls
// For code readability/maintainability, avoid underscore usage
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(add, 5, 10)

//-------------------------------------------------------------------
// Closures (all functions are closuers)
//-------------------------------------------------------------------
var beers = [
    "Bodhi", "Creeper", "BitterEx", "Lake Erie Monster", "Guinness"
]

// Long form with argument names and types, return type
beers.sort(by: {
    (s1: String, s2: String) -> Bool in return s1 > s2
})

// Eliminate types which can be inferred
beers.sort(by: {
    s1, s2 in return s1 > s2
})

// Use implicit
beers.sort(by: {
    s1, s2 in s1 > s2
})

// Use shorthand argument names
beers.sort(by: {
    $0 > $1
})

// Using trailing closer syntax
beers.sort() {
    $0 > $1
}

// If closure is only argument, eliminate the parens
beers.sort{$0>$1}

// NOTE: Closures capture contants and variables from outer context
// and can modify captured variables
