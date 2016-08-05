// A Swift Introduction to Swift Playground
// Error Handling
// Does not involve unwinding the call stack, a process that can be expensive.
// The performance of a throw statement are comparable to a return statement.

import UIKit

//-------------------------------------------------------------------
// Define new errors using enum and Error (was ErrorProtocol)
//-------------------------------------------------------------------
enum FileError: Error {
    case doesNotExist
    case accessDenied
    case readError
    case writeError
}

func exists(_: String) -> Bool {
    return true
}

func readFile(filename: String) throws -> String {
    guard exists(filename) else {
        // Executed file file does not exist
        throw FileError.doesNotExist
    }
    
    let file = open(filename)
    let data = read(file)
    return data;
    
    // Executed last before readFile returns
    defer {
        close(file)
    }
}

let filename = "data.txt"
var data: String
do {
    try data = readFile(filename: filename)
} catch FileError.doesNotExist {
    print("\(filename) does not exist")
}
