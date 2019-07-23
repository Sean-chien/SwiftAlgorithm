//
//  Stack.swift
//  SwiftAlgorithm
//
//  Created by Sean Chien on 2019-06-25.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

import Foundation

struct Stack<Element: Equatable>: Equatable {
    private var storage: [Element] = []
    // isEmpty?
    var isEmpty: Bool {
        return storage.isEmpty
    }
    
    init() {}
    
    init(_ elements: [Element]) {
        self.storage = elements
    }
    
    // peek()
    func peek() -> Element? {
        return storage.last
    }
    // push()
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    // pop()
    @discardableResult // we don't have to use the return value
    mutating func pop() -> Element? {
        return storage.popLast()
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        return storage.map { "|\($0)|\n" }
            .reversed()
            .joined(separator: "---\n")
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        self.storage = elements
    }
}

