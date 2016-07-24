//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground", str2 = "Hello1"

var anInt = 1
var aDouble = 1.1
var aBoolean = true

if anInt == 1 {
    print("Yeah")
}

var optionalString: String? = nil
print(optionalString)
if let referringString = optionalString {
    print(referringString)
}

print(aBoolean)
print(aBoolean.dynamicType)

print("aBoolean = \(aBoolean)")

var anArray = [1,2,3,4,5]
print(anArray.dynamicType)
for index in 1..<10 {
    print(index)
}

for number in anArray {
    print(number)
}

for (var i = 0; i < 10; i++) {
    print(i)
}

var anotherArray = [1, true, "String", 1.1]
print(anotherArray.dynamicType)

var anyArray = [Any]()
anyArray.append(true)
anyArray.append(1)
anyArray += [1,2,3]
print(anyArray.dynamicType)
var anyArrayCopy = anyArray

var aDict = ["first": "Keith", "last": "Wedinger"]
var anotherDict = [String: Int]()
anotherDict["first"] = 1
anotherDict["first"] = 2
print(anotherDict)


