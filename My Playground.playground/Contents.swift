//: Playground - noun: a place where people can play

import UIKit



var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
print(threeDoubles)
var anotherThreeDoubles = [Double](count: 3, repeatedValue: 2.5)
var sixDoubles = threeDoubles + anotherThreeDoubles
print("sixDoubles = \(sixDoubles)")
sixDoubles = []
sixDoubles.isEmpty
sixDoubles.insert(1.0, atIndex: 0)

//
// Function example
//
func sayHello(inout personName: String) -> String {
    personName += "!"
    let greeting = "Hello \(personName)"
    return greeting
}

var name = "Keith"
sayHello(&name)
print(name)

var sayHelloFn = sayHello
sayHelloFn(&name)

//
// Trailing closer example
//
let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]


let strings = numbers.map {
    (var number) -> String in
    var output = ""
    while number > 0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}
print(strings)

//
// Structure and class example
//
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

// Structure init with auto generated memberwise initializer
var vga = Resolution(width: 640, height: 480)
var vga2 = vga

enum CompassPoint {
    case North
    case South
    case East
    case West
}

var direction = CompassPoint.North
print(direction)

enum MyError: ErrorType {
    case UserError
    case NetworkError
    case DiscoverydError
}

func doStuff() throws -> String {
    print("Do stuff 1")
    print("Do stuff 2")
    throw MyError.NetworkError
    
    return "Some return value"
}

try doStuff()











