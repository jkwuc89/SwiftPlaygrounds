// A Swift Introduction to Swift Playground
// Enumerations, Classes and Structs

import UIKit

//-------------------------------------------------------------------
// Enumerations
//-------------------------------------------------------------------
enum BeerStyle {
    case lager
    case pilsner
    case porter
    case stout
    case ipa
}

enum Smiley {
    case 😀, 😬, 😁, 😂, 😃
}

let smiley = Smiley.😀
switch smiley {
case .😀:
    print("Smile")
case .😬:
    print("Grimace")
case .😁:
    print("Grimace with smiling eyes")
case .😂:
    print("Tears of Joy")
case .😃:
    print("Smiling with open mouth")
}

// Associated values can change for each instance
enum Barcode {
    // UPC composed of 4 numbers
    case upc(Int, Int, Int, Int)
    // qrCode composed of string
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = Barcode.upc(1, 2, 3, 4)
var productBarcode2 = Barcode.upc(1, 2, 3, 4)

productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
switch productBarcode {
// Case for any UPC barcode
case .upc:
    print("UPC: \(productBarcode)")
// Case for any QR code
case .qrCode:
    print("QR Code: \(productBarcode)")
// let's below capture associated values
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
case .upc(1, _, _, _):
    print("UPC code with 1")
default:
    break
}

// Raw values are defined in the enum, can use any type and cannot change
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}
let controlChar = ASCIIControlCharacter.lineFeed
print(controlChar.rawValue)

// Set initial raw value for 1st case in enum
enum Planet: Int {
    case mercury = 1
    case venus, earth, mars, jupiter, saturn, uranus, neptune
}
let planet = Planet.mars
print(planet.rawValue)

//-------------------------------------------------------------------
// Classes - Passed by reference, use reference counting
// Access control:
//     private: restricted to source file
//     internal (default): available to entire module
//                         app or framework target
//     public: intended for use as a public API
//-------------------------------------------------------------------
class Beer {
    // Static property
    static var maxAbv: Float = 12
    
    enum Size: Int {
        case empty = 0,
        taster = 4,
        bottle = 12,
        pint = 16,
        bomber = 22,
        growler = 64
    }
    
    // Properties
    var abv: Float {
        // Property observers
        willSet(newAbv) {
            print("Beer: Setting abv to \(newAbv)")
        }
        didSet {
            print("Beer: Did set abv to \(abv)")
        }
    }
    var size: Size = .empty
    var sizeInOunces: Int {
        get {
            return size.rawValue
        }
        set(newSizeInOunces) {
            // Handle case where new size in ounces is not one of the rawValues
            if let newSize = Size(rawValue: newSizeInOunces) {
                size = newSize
            } else {
                size = .empty
            }
        }
    }
    
    // Initializer - Needed if properties don't define initial values
    init() {
        abv = 0.0
    }
    
    // Initializer with argument
    init(abv: Float) {
        self.abv = abv
    }

    // Static method
    static func getMaxAbv() -> Float {
        return maxAbv
    }
    
    // Methods
    func drink() {
        print("Burp!")
    }
}

var beer = Beer(abv: 6.9)
beer.abv
beer.abv = 4.9
beer.abv
beer.size = .bottle
beer.size
beer.sizeInOunces
beer.sizeInOunces = 22
beer.size
beer.drink()

// Classes are reference types
var beerRef = beer
beerRef === beer // Both refer to same object
beer.abv = 6.9
print("\(beer.abv)) \(beerRef.abv)")

//-------------------------------------------------------------------
// Structs - Always copied, do not use reference counting
//-------------------------------------------------------------------
struct Point {
    var x: Int
    var y: Int
}

// Structs get automatically generated member-wise initalizers
var point = Point(x: 1, y: 1)
print("\(point)")

// Structs are value types and are copied during assignment or 
// as an argument to a function
var anotherPoint = point;
anotherPoint.x = 2
anotherPoint.y = 2
print("\(point) \(anotherPoint)")
