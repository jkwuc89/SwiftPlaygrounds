// A Swift Introduction to Swift Playground
// Conditionals Loops and Switches

import UIKit

//-------------------------------------------------------------------
// Conditionals
//-------------------------------------------------------------------
var temperatureInFahrenheit = 100
if temperatureInFahrenheit <= 32 {
    print("Water freezing")
} else if temperatureInFahrenheit > 32 && temperatureInFahrenheit < 212 {
    print("Water is liquid")
} else {
    print("Water is boiling")
}

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

//-------------------------------------------------------------------
// for in loops
//-------------------------------------------------------------------
// Using range
for index in 1...5 {
    print("\(index) times 5 = \(index * 5)")
}

// If loop value is not needed
var str: String = ""
for _ in 1 ... 5 {
    str += " fake"
}
print(str)

// Using collection
var beerTypes = ["Pilsner", "IPA", "Stout"]
for beer in beerTypes {
    print(beer)
}

//-------------------------------------------------------------------
// while loops
//-------------------------------------------------------------------
let max = 10
var index = 1
while index < max {
    index += 1
}
print(index)

//-------------------------------------------------------------------
// repeat while loops
//-------------------------------------------------------------------
index = 0
repeat {
    index += 2
    if index == 4 {
        continue
    }
    print("index = \(index)")
    if index == 6 {
        break
    }
} while index < max
print(index)

//-------------------------------------------------------------------
// switches
//-------------------------------------------------------------------
// First match wins, no fallthroughs
index = 5
switch index {
case 5 :
    print("Value of index is 5")
    // Force fallthrough to next case
    fallthrough
// Range case
case 1...10 :
    print("Value is between 1 and 10")
case 100 :
    print("Value of index is 100")
// Compound case
case 10,15 :
    print("Value of index is either 10 or 15")
// all cases must be covered
default :
    // Use break for a "don't care" default case
    // break immediately exits the switch
    break
}

// Using tuple, underscore below matches any value
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("(0, 0) is at the origin")
case (_, 0):
    print("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    print("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}

// Use value binding in case
let anotherPoint = (0, 2)
switch anotherPoint {
case (let x, 0):
    print("x is set to \(x) because 2nd value is 0")
case (0, let y):
    print("y is set to \(y) because 1st value is 0")
case let (x, y):
    print("x and y are set which covers default case")
}

// Use where clause in case
let yetAnotherPoint = (1, 1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("x == y")
case let (x, y) where x == -y:
    print("x == -y")
case let (x, y):
    print("x and y are not equal")
}
