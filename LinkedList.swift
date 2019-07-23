//
//  LinkedList.swift
//  SwiftAlgorithm
//
//  Created by Sean Chien on 2019-06-25.
//  Copyright © 2019 Sean Chien. All rights reserved.
// node 節點 交叉點

import Foundation
// class is reference
public class Node {
    var value: String
    var next: Node?
    init(value :String) {
        self.value = value
    }
}

// public, open: libraries, frameworks 結構
// internal (default)
// fileprivate - same file
// private - same
// linkin == connect
// node 

public class SingleLinkedList {
    var head: Node? // head is nil when list is empty
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    var first: Node? {
        return head
    }
    
    // append
    public func append(value: String) {
        // 1. create a new note with the value
        let newNode = Node(value: value)
        // 2. look for the last node
        if var h = head {
            while h.next != nil {
                h = h.next!
            }
            // 3. add the new node at the end
            h.next = newNode
        } else {
            // if head == nil, add newNode at the begining
            head = newNode
        }
    }
    
    //   remove at a certain postion
    public func removeNode (at postion: Int) {
        if head == nil {return}
        var h = head
        if postion == 0 {
            head = h?.next
            return
        }
        for _ in 0..<postion - 1 where h != nil {
            h = h?.next
        }
        
        if h == nil || h?.next == nil {
            return
        }
        
        let nextToNextNode = h?.next?.next
        h?.next = nextToNextNode
    }
}
