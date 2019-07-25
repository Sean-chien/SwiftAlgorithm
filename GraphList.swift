//
//  GraphList.swift
//  SwiftAlgorithm
//
//  Created by Sean Chien on 2019-06-27.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

import Foundation
// 1. Adjacency Matrix (Exercise (slides)
func adjacencyMatrixWithoutWeight() {
    let firstline = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! } // [n, m]
    let n = firstline[0] // # of nodes
    let m = firstline[1] // # of edges
    
    var matrix = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    
    for _ in 0..<m {
        let edge = readLine()!.split(separator: " ")
        let u = Int(edge[0])! - 1
        let v = Int(edge[1])! - 1
        matrix[u][v] = 1
        matrix[v][u] = 1
    }
    
    // print the matrix
    for row in matrix {
        print(row)
    }
}

// 2. Adjacency Matrix (Exercise (slides)
func adjacencyMatrixWithWeight() {
    let firstline = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! } // [n, m]
    let n = firstline[0] // # of nodes
    let m = firstline[1] // # of edges
    
    var matrix = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    
    for _ in 0..<m {
        let edge = readLine()!.split(separator: " ")
        let u = Int(edge[0])! - 1
        let v = Int(edge[1])! - 1
        let w = Int(edge[2])!
        matrix[u][v] = w
        matrix[v][u] = w
    }
    
    // print the matrix
    for row in matrix {
        print(row)
    }
}


// 2. Adjacency List
func adjacencyListWithoutWeight() {
    let firstLine = readLine()!.split(separator: " ")
    let n = Int(firstLine[0])!
    let m = Int(firstLine[1])!
    
    // [[], [2, 5], [1, 3, 4, 5], ... ]
    var adjList = [[Int]](repeating: [], count: n + 1)
    for _ in 0..<m {
        let edge = readLine()!.split(separator: " ")
        // 1 2
        let u = Int(edge[0])! // 1
        let v = Int(edge[1])! // 2
        adjList[u].append(v)
        adjList[v].append(u)  // undirected-graph
    }
    print(adjList)
}

func adjacencyListWithWeight() {
    let firstLine = readLine()!.split(separator: " ")
    let n = Int(firstLine[0])!
    let m = Int(firstLine[1])!
    
    // [[], [2, 5], [1, 3, 4, 5], ... ]
    // Tuple
    var adjList = [[(Int, Int)]](repeating: [], count: n + 1)
    for _ in 0..<m {
        let edge = readLine()!.split(separator: " ")
        // 1 2
        let u = Int(edge[0])! // 1
        let v = Int(edge[1])! // 2
        let w = Int(edge[2])! // w
        adjList[u].append((v, w))
        adjList[v].append((u, w))  // undirected-graph
    }
    print(adjList)
}

