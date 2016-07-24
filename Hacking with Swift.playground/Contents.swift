// Hacking with Swift Playground

import UIKit

var name: String
name = "Keith"
let nameUpper = name.uppercaseString
print(nameUpper)

var longitude = -1234586.783333
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333

var b = 10
++b
--b
b++
b--

var greeting = "Hello \(name)"
greeting.dynamicType

var songs = ["Shake it Off", "You Belong with Me", "Back to December", 3]
songs.dynamicType

class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("La la la la")
    }
}

var singer = Singer(name: "Geddy Lee", age: 63)
singer.name
singer.age
singer.sing()

class CountrySinger : Singer {
    override func sing() {
        print("Trucks, girls, and liquor")
    }
}

var taylor = CountrySinger(name: "Taylor", age: 25)
taylor.sing()

class HeavyMetalSinger : Singer {
    var noiseLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    
    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}

var hetfield = HeavyMetalSinger(name: "James", age: 50, noiseLevel: 10)

struct Person {
    var clothes: String {
        willSet {
            print("I'm changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            print("I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var person = Person(clothes: "T-shirts")
person.clothes = "short skirts"

print("Done")

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















