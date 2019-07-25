//
//  BFS.swift
//  SwiftAlgorithm
//
//  Created by Sean Chien on 2019-07-12.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

import Foundation
// BFS (Breath First Search)
func bfs(start: Int, check: inout [Bool], adjList: inout [[Int]]) {
    var queue = QueueArray<Int>()
    check[start] = true
    queue.enqueue(start)
    while !queue.isEmpty {
        let first = queue.dequeue()!
        for next in adjList[first] {
            if check[next] == false {
                 check[next] = true
                queue.enqueue(next)
            }
        }
    }
}
