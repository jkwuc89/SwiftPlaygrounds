// A Swift Introduction to Swift Playground
// Error Handling
// Does not involve unwinding the call stack,
// a process that can be expensive.
// The performance of a throw statement are comparable
// to a return statement.

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

func readFile(filename: String) throws -> Data? {
    guard exists(filename) else {
        // Executed file file does not exist
        throw FileError.doesNotExist
    }
    
    // Executed last before readFile returns
    defer {
        file?.closeFile()
    }
    
    let file = FileHandle(forReadingAtPath: filename)
    let data = file?.readDataToEndOfFile()
    
    return data;
}

let filename = "data.txt"
var data: Data?
do {
    try data = readFile(filename: filename)
} catch FileError.doesNotExist {
    print("\(filename) does not exist")
}
