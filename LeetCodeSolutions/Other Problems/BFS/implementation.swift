//
//  implementation.swift
//  LeetCodeSolutions
//
//  Created by kuanhuachen on 2018/1/17.
//  Copyright © 2018年 D.O. Information Technology Corp. All rights reserved.
//

import Foundation

class BFSImplementation {
    func breadthFirstSearch(_ graph: Graph, source: Node) -> [String] {
        /// 创建一个队列并把源Node放入这个队列中
        var queue = Queue<Node>()
        queue.enqueue(source)
        
        /// 创建一个数组用于存放结果
        var nodesResult = [source.label]
        
        /// 设置Node的visited为true，因为我们会把这个当做一个开关
        source.visited = true
        
        /// 开始遍历
        while let node = queue.dequeue() {
            for edge in node.neighbors {
                let neighborNode = edge.neighbor
                if !neighborNode.visited {
                    queue.enqueue(neighborNode)
                    neighborNode.visited = true
                    nodesResult.append(neighborNode.label)
                }
            }
        }
        
        return nodesResult
    }
    
    func implementation (){
        let graph = Graph()
        
        let nodeA = graph.addNode("a")
        let nodeB = graph.addNode("b")
        let nodeC = graph.addNode("c")
        let nodeD = graph.addNode("d")
        let nodeE = graph.addNode("e")
        let nodeF = graph.addNode("f")
        let nodeG = graph.addNode("g")
        let nodeH = graph.addNode("h")
        
        graph.addEdge(nodeA, neighbor: nodeB)
        graph.addEdge(nodeA, neighbor: nodeC)
        graph.addEdge(nodeB, neighbor: nodeD)
        graph.addEdge(nodeB, neighbor: nodeE)
        graph.addEdge(nodeC, neighbor: nodeF)
        graph.addEdge(nodeC, neighbor: nodeG)
        graph.addEdge(nodeE, neighbor: nodeH)
        graph.addEdge(nodeE, neighbor: nodeF)
        graph.addEdge(nodeF, neighbor: nodeG)
        
        let nodesExplored = breadthFirstSearch(graph, source: nodeA)
        print(nodesExplored)
    }
}




