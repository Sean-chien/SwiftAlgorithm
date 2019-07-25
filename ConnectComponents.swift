//
//  ConnectComponents.swift
//  SwiftAlgorithm
//
//  Created by Sean Chien on 2019-07-15.
//  Copyright © 2019 Sean Chien. All rights reserved.
//

import Foundation

func connectedComponents ()
{
    let firstLine = readLine()!.split(separator: " ")
    let n = Int(firstLine[0])! // # of nodes
    let m = Int(firstLine[1])! // # of edges
    
    var adjList = [[Int]](repeating: [], count: n + 1)
    for _ in 0..<m
    {
        let edge = readLine()!.split(separator: " ")
        let u = Int(edge[0])! // u -> v
        let v = Int(edge[1])!
        adjList[u].append(v)
        adjList[v].append(u) // undirected
    }
    
    var check: [Bool] = [Bool](repeating: false, count: n + 1)
    var count = 0
    
    for node in 1..<adjList.count
    {
        if !check[node]
        {
            dfs(start: node, adjList: &adjList, check: &check)
            count += 1
        }
    }
    
    print("Connected Components: \(count)")
    
}
