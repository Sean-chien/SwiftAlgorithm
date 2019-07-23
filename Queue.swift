//
//  Quene.swift
//  SwiftAlgorithm
//
//  Created by Sean Chien on 2019-06-25.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

import Foundation

protocol Queue {
    associatedtype Element
    var isEmpty: Bool { get }
    var peek: Element? { get }
    mutating func enqueue(_ element: Element)
    mutating func dequeue() -> Element?
}

struct QueueArray<T>: Queue {
    
    private var arr: [T] = []
    
    var isEmpty: Bool {
        return arr.isEmpty
    }
    
    var peek: T? {
        return arr.first
    }
    
    mutating func enqueue(_ element: T) {
        arr.append(element)
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        return isEmpty ? nil : arr.removeFirst()
    }
}

struct QueueStack<T>: Queue {
    private var dequeueStack: [T] = []
    private var enqueueStack: [T] = []
    
    var isEmpty: Bool {
        return dequeueStack.isEmpty && enqueueStack.isEmpty
    }
    
    var peek: T? {
        return !dequeueStack.isEmpty ? dequeueStack.last : enqueueStack.first
    }
    
    mutating func enqueue(_ element: T) {
        enqueueStack.append(element)
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        if dequeueStack.isEmpty {
            dequeueStack = enqueueStack.reversed()
            enqueueStack.removeAll()
        }
        return dequeueStack.popLast()
    }
}





