// A Swift Introduction to Swift Playground
// Variables, Constants, Types and Operators

import UIKit

// The obligatory Hello World
print("Hello World")

//-------------------------------------------------------------------
// Variables and Constants
//-------------------------------------------------------------------
// Constants are "set in stone"
let aConstant = 1
print(aConstant.dynamicType)
// aConstant = 2

// Variables can change
var aVariable = "Hello World"
print(aVariable.dynamicType)
aVariable = "Hello again"
// But they cannot change their type
// aVariable = 1

// Variables can contain just about any valid Unicode character
let 🍺 = "beer"
print("\(🍺) is good");

//-------------------------------------------------------------------
// Types
//-------------------------------------------------------------------
// Int: Int32 on 32-bit platforms, Int64 on 64-bit platforms
let anInt: Int
let anotherInt = 10

// Float and Double, Apple recommends using Double for better precision
let aFloat: Float = 86.123456789
let aDouble: Double = 86.123456789
let anotherDouble = 86.987654321
print(anotherDouble.dynamicType)

// Bool is true or false. No implied 1 or 0 value.
var aBoolean = true
aBoolean = false
// aBoolean = 1

// Character type must be specified in declaration
// Otherwise, String type is inferred
var aChar: Character = "C"
print(aChar.dynamicType)
// aChar = "Cannot assign to string"

// String
var aString = "Hello once more"
// aString = aString + anotherInt
aString = aString + String(anotherInt)

// String interpolation
let name = "Keith"
var composedString = "Hello \(name)"
composedString = "anotherInt = \(anotherInt)"

// Tuples group multiple values using any value type
let http404Error = (statusCode: 404, statusMsg: "Not Found")
let (statusCode, statusMsg) = http404Error
print(statusCode)
print(statusMsg)
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
a > b ? "a greater than b" : "a less than b"

// Logical
let aBool = true
let bBool = false
aBool && bBool
aBool || bBool
!bBool

// Nil-Coalescing for optionals
var optionalInt: Int?
let defaultValue = 10
optionalInt ?? defaultValue
