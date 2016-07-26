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
hello(person:"Sam")

// Multiple arguments
func printStatus(code: Int, message: String) {
    print("Status: \(code): \(message)")
}
let http404Error = (statusCode: 404, statusMsg: "Not Found")
printStatus(code: http404Error.statusCode, message: http404Error.statusMsg)

// Multiple return values using tuples
func getStatus() -> (code: Int, msg: String, description: String) {
    let status =
        (code: 404, msg: "Not found", description: "The resource cannot be found")
    return status;
}
print(getStatus())

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

// Exercise: Implement nested function

//-------------------------------------------------------------------
// Closures
//-------------------------------------------------------------------
