// A Swift Introduction to Swift Playground
// Variables, Constants, Types and Operators

import UIKit

// The obligatory Hello World
print("Hello World Beer City Code")

//-------------------------------------------------------------------
// Variables and Constants
//-------------------------------------------------------------------
// Constants are immutable
let aConstant = 1
print(type(of: aConstant))
// aConstant = 2

// Variables are mutable
var aVariable = "Hello World"
print(type(of: aVariable))
aVariable = "Hello again"
// But they cannot change their type
// aVariable = 1

// Variables can contain just about any valid Unicode character
let 🍺 = "beer"
print("\(🍺) is good");

//-------------------------------------------------------------------
// Types - Inferred unless explicitly declared
//-------------------------------------------------------------------
// Int: Int32 on 32-bit platforms, Int64 on 64-bit platforms
var anInt: Int = 11
let anotherInt = 10

// Float and Double, Apple recommends using Double for better precision
var aFloat: Float = 0.123456789
var aDouble: Double = 0.12345678901234567890
let anotherDouble = 0.123456789
print(type(of: anotherDouble))

// No implied number conversions
let sum = Double(anInt) + aDouble
print(type(of: sum))
let doubleSum = aFloat + Float(aDouble)
print(type(of: doubleSum))

// Bool is true or false.
var aBoolean = true
aBoolean = false
// aBoolean = 1

// Character type must be specified in declaration
// Otherwise, String type is inferred
var aChar:Character = "C"
print(type(of: aChar))
// aChar = "Cannot assign to string"

// String
var aString:String = "Hello once more"
// aString = aString + anotherInt
aString = aString + String(anotherInt)

// String interpolation
let name = "Keith"
var composedString = "Hello \(name)"
composedString = "anotherInt = \(anotherInt)"

// String access
// See https://developer.apple.com/reference/swift/string
for char in name.characters {
    print(char)
}
name.characters.count

// Tuples group multiple values using any value type
let http404Error = (statusCode: 404, statusMsg: "Not Found")

var (statusCodeVar, statusMsgVar) = http404Error
print(statusCodeVar)
print(statusMsgVar)

http404Error.0
http404Error.1
http404Error.statusCode
http404Error.statusMsg

// Type aliases
typealias MyString = String
var myStringVar: MyString
myStringVar = "A type alias"

//-------------------------------------------------------------------
// Operators
//-------------------------------------------------------------------
// Assignment
let a = 10
var b = a
b = 20
var c: Int = 5
c += 5
c -= 5

// Arithmetic
a + b
b - a
a * b
b / a
a % b

// Increment and decrement removed in Swift 3
var i = 1
// i++
// i--

// Unary
b = -a
b = +b // Unary plus does nothing

// Comparison
a == b
a != b
a < b
a > b
(a > b) ? "a greater than b" : "a less than b"

// Logical
let aBool = true
let bBool = false
aBool && bBool
aBool || bBool
!bBool

// Bitwise
var Int1 = 1
var Int2 = 2
Int1 & Int2
Int1 ^ Int2

// Nil-Coalescing for optionals
var optionalInt: Int?
let defaultValue = 10
optionalInt ?? defaultValue
