// A Swift Introduction to Swift Playground
// Arrays and Dictionaries

import UIKit

//-------------------------------------------------------------------
// Arrays
// Arrays are bridged to Foundation's NSArray class
//-------------------------------------------------------------------

// Create an empty array
var stringArray = [String]()
print(stringArray.dynamicType)
stringArray.append("String #1")
print(stringArray)

// Create arrays using literals
var shoppingList = ["Eggs", "Milk"]
var floatArray: [Float] = [1.1, 2.2, 3.3]

// Create an array with a default value
var intArray = Array(repeating: 0, count: 5)

// Add arrays together to create another
var anotherIntArray = Array(repeating: 1, count: 5)
var combinedArray = intArray + anotherIntArray
// var badCombinedArray = intArray + stringArray

// Accessing and modifying an array
var beerTypes = ["Pilsner", "IPA", "Stout"]
beerTypes.count
beerTypes[1]
beerTypes += ["Porter"] // Works like combined array above
beerTypes[0...2]
beerTypes[0..<2]
beerTypes.insert("DIPA", at: 2)
beerTypes.remove(at: 0)
print(beerTypes)
for beer in beerTypes {
    print(beer)
}
for (index, value) in beerTypes.enumerated() {
    print("Beer \(index + 1): \(value)")
}

//-------------------------------------------------------------------
// Dictionaries
// Dictionary type is bridged to Foundation’s NSDictionary class”
//-------------------------------------------------------------------

// Create an empty dictionary
var namesOfNumbers = [Int: String]()
namesOfNumbers[8] = "Eight"
namesOfNumbers[10] = "Ten"
namesOfNumbers
namesOfNumbers.count
print(namesOfNumbers.dynamicType)

// Create a dictionary with literals
var airports = [
    "MXP": "Malpensa",
    "CMH": "Columbus",
    "CVG": "Cincinnati"
]

// Accessing and modifying a dictionary
airports.count
airports.isEmpty
airports["CLE"] = "Cleveland"
airports
airports.updateValue("Dallas", forKey: "DFW")
airports["DFW"]
airports.updateValue("Dallas/Ft. Worth", forKey: "DFW")
airports["DFW"]
airports["CMH"] = nil
airports["CMH"]
airports.removeValue(forKey: "CVG")
airports["CVG"]
for(airportCode, airportName) in airports {
    print("\(airportCode) = \(airportName)")
}
for airportCode in airports.keys {
    print(airports[airportCode])
}
for airportValue in airports.values {
    airportValue
}
