//
//  ExhaustiveSearch .swift
//  SwiftAlgorithm
//
//  Created by Sean Chien on 2019-06-28.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

import Foundation

// Print all possible binary representations
// ex) printBinary(digits: 2)
// - 00
// - 01
// - 10
// - 11
func printBinary(digits: Int, prefix: String = "", indent: String = "") {
    print(indent + "printBinary(digits:\(digits), prefix:\(prefix))")
    if digits == 0 {
        // no more choices
        print(prefix)
    } else {
        // how to accumulate our answer? - prefix!
        // choose one possibility
        printBinary(digits: digits - 1, prefix: prefix + "0", indent: indent + "  ") // 0, 1
        printBinary(digits: digits - 1, prefix: prefix + "1", indent: indent + "  ") // 0, 1
    }
}

func printDecimal(_ digits: Int, prefix: String = "") {
    if digits == 0 {
        print(prefix)
    } else {
        // for each choice (0 ~ 9)
        for i in 0..<10 {
            //   - choose one and explore (search)
            printDecimal(digits - 1, prefix: prefix + String(i))
        }
    }
}

// Permutation: lists (order matters)
// Combination: groups (order does not matter)s
func permutation(_ word: String, soFar: String = "") {
    if word.count == 0 {
        // no more choices
        print(soFar)
    } else {
        // for each choice
       // for i in 0..<word.count {
//            //    - choose one
//            let ch = word[i]
//            //    - explore
//            permutation(word[0, i] + word[(i+1), word.count], soFar: soFar + ch)
        //}
    }
}
