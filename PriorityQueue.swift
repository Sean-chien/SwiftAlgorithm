//
//  PriorityQueue.swift
//  SwiftAlgorithm
//
//  Created by Sean Chien on 2019-07-23.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

import Foundation


struct PriorityQueue<T: Comparebale> {
    private var elements: Heap<E>
    
    init(order: @escaping (E,E) -> Bool) {
        self.elements = Heap<E>(order: order)
    }
    
    var isEmpty: Bool {
        return self.elements.isEmpty
    }
    
    var count: Int {
        return self.elements.count
    }
    var peek() -> E? {
    return self.elements.peek()
    }
    
    mutating func enqueue (_ elements: E) {
        return self.elements.extractFirst()
    }
    mutating func updateKey(at index: Int, with value: E) {
        self.elements.replace(at: index, with: value)
    }
}
