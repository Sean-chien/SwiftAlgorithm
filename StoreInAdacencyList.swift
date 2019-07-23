//
//  StoreInAdacencyList.swift
//  SwiftAlgorithm
//
//  Created by Sean Chien on 2019-07-12.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

import Foundation

func dfs(start: Int, adjList: inout [[Int]], check: inout [Bool]){
    check[start] = true // visited
    print(start)
    for next in adjList[start]{
        if check[next] == false {
            dfs(start: next, adjList: &adjList, check: &check)
        }
    }
    
}


func storeInAdjacencyList() {
    let firstLine = readLine()!.split(separator:" ")
    let n = Int(firstLine[0])! // # of nodes
    let m = Int(firstLine[1])! // # of edges
    
    var adjList = [[Int]](repeating: [], count: n + 1)
    for _ in 0..<m {
        let edge = readLine()!.split(separator:" ")
        let u = Int(edge[0])! // u -> v
        let v = Int(edge[1])!
        adjList[u].append(v)
        adjList[v].append(u) // undifined
    }
    print("adjList: \(adjList)")
    var check: [Bool] = [Bool](repeating: false, count: n + 1)
    dfs(start: 1, adjList: &adjList, check: &check)
}

//func bfs(start: Int, check: inout [Bool], adjList: inout [[Int]]){
//    var queue = QueueArray<Int>()
//    check[start] = true
//    queue.enqueue(start)
//    while !queue.isEmpty {
//        let first = queue.dequeue()!
//        for next in adjList[first]{
//            if(check[next] == false){
//                check[next] = true
//                queue.enqueue(next)
//            }
//        }
//    }
//}
//
//func storeInAdjacencyListBFS() {
//    let firstLine = readLine()!.split(separator:" ")
//    let n = Int(firstLine[0])! // # of nodes
//    let m = Int(firstLine[1])! // # of edges
//
//    var adjList = [[Int]](repeating: [], count: n + 1)
//    for _ in 0..<m {
//        let edge = readLine()!.split(separator:" ")
//        let u = Int(edge[0])! // u -> v
//        let v = Int(edge[1])!
//        adjList[u].append(v)
//        adjList[v].append(u) // undifined
//    }
//    print("adjList: \(adjList)")
//    var check: [Bool] = [Bool](repeating: false, count: n + 1)
//}




