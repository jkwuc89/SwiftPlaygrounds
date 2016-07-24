//: Playground - noun: a place where people can play

import Cocoa

var variable: Double = 1
print(variable)
print(variable.dynamicType)

let 🐶🐮 = "dogcow"
print(🐶🐮)

var str1 = "String1"
var str2 = str1
str2 = "String2"
print(str1)
print(str2)
print(str1 == str2)
var str3 = str1 + str2

var anIntArray = [1, 2, 3]
var anotherIntArray = anIntArray
print(anIntArray.dynamicType)
anIntArray == anotherIntArray
anIntArray.append(4)
anIntArray == anotherIntArray

var optionalArray: [String]?
var optionalString: String?

if let unwrappedArray = optionalArray, let unwrappedString = optionalString {
    if unwrappedArray.contains(unwrappedString) {
        print("Array contains string")
    }
}

var anArray = [1, 1.1, true, "String"]
anArray.removeAll()

anArray.append(0)
anArray.append(true)
anArray += ["String"]
print(anArray)
print(anArray.count)
print(anArray.dynamicType)
for elem in anArray {
    print(elem)
}

var anotherArray = anArray
anotherArray.append("Another element")
print(anotherArray)
print(anArray)

var aDict = [String: Any]()
aDict["first"] = "Keith"
aDict["age"] = 49
print(aDict.dynamicType)
var allKeys = ""
for key in aDict.keys {
    allKeys += "\(key) "
}
print(allKeys)

var indexStr = ""
for index in 1..<10 {
    indexStr += "\(index)"
}
print(indexStr)

indexStr = ""
for var index = 0; index < 10; index++ {
    indexStr += "\(index)"
}
print(indexStr)


let anotherPoint = (0, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let(x, y) where x == y:
    print("x == y")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}


switch anotherPoint {
case (0, 0), (0, 1):
    print("0")
    fallthrough
case (_, 0):
    print("fell throught")
default:
    print("default")
}


func printAlbumRelease(forName: String, year: Int = 2012) -> String? {
    print("\(forName) was released on \(year)")
    if year < 1950 {
        return nil
    } else {
        return "Good Year"
    }
}

if let returnVal = printAlbumRelease("2112", year: 1975) {
    print(returnVal)
} else {
    print("No value returned")
}

let returnVal = printAlbumRelease("Album", year: 1960) ?? printAlbumRelease("A2", year: 1945) ?? "No Album"
print(returnVal)

class Person {
    var firstName: String
    var lastName: String
    var age: Int
    
    var description: String {
        get {
            return "\(firstName) \(lastName) Age: \(age)"
        }
    }
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}

var aPerson = Person(firstName: "Keith", lastName: "Wedinger", age: 49)
var anotherPerson = aPerson
print(aPerson === anotherPerson)
anotherPerson.firstName = "Jeffrey"
print(aPerson.firstName)
print(aPerson.description)
print(aPerson.dynamicType)


enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}

var productBarcode = Barcode.UPCA(8, 85909, 51226, 3)
print(productBarcode)
