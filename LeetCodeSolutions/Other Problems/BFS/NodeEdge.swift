//
//  NodeEdge.swift
//  LeetCodeSolutions
//
//  Created by kuanhuachen on 2018/1/17.
//  Copyright © 2018年 D.O. Information Technology Corp. All rights reserved.
//

import Foundation
// MARK: - Edge

public class Edge: Equatable {
    public var neighbor: Node
    
    public init(neighbor: Node) {
        self.neighbor = neighbor
    }
}

public func == (lhs: Edge, rhs: Edge) -> Bool {
    return lhs.neighbor == rhs.neighbor
}

// MARK: - Node

public class Node: CustomStringConvertible, Equatable {
    public var neighbors: [Edge]
    
    public private(set) var label: String
    public var distance: Int?
    public var visited: Bool
    
    public init(label: String) {
        self.label = label
        neighbors = []
        visited = false
    }
    
    public var description: String {
        if let distance = distance {
            return "Node(label: \(label), distance: \(distance))"
        }
        return "Node(label: \(label), distance: infinity)"
    }
    
    public var hasDistance: Bool {
        return distance != nil
    }
    
    public func remove(edge: Edge) {
        neighbors.remove(at: neighbors.index { $0 === edge }!)
    }
}

public func == (lhs: Node, rhs: Node) -> Bool {
    return lhs.label == rhs.label && lhs.neighbors == rhs.neighbors
}

