//
//  orderTraversals.swift
//  LeetCodeSolutions
//
//  Created by kuanhuachen on 2018/1/17.
//  Copyright © 2018年 D.O. Information Technology Corp. All rights reserved.
//

import Foundation

class orderTraversal{
    
    /*
     
     
     preOrder = [ROOT][LeftTree][RightTree]
     postOrder = [LeftTree][RightTree][ROOT]
     inOrder = [LeftTree][ROOT][RightTree]
     
     
     */
    
    /*
     
     Course Example One
     
     
     50
     /     \
     30     70
     /  \    /  \
     20   40 60  80
     /  /   / \
     35 65  75  85
     \
     90
     
     Course Example Two
     
     50
     /  \
     40  70
     /   / \
     35  60 80
     / \
     75 85
     \
     90
     \
     97
     
     */
    
    
    
    // Exercise 1
    
    //Pre-order: 50 30 20 40 35 70 60 65 80 75 85 90
    //In-order: 20 30 35 40 50 60 65 70 75 80 85 90
    
    
    
    class Node {
        var value: Int
        var left: Node?
        var right: Node?
        
        init (value: Int) {
            self.value = value
        }
    }
    
    class BTree {
        
        var preIndex = 0
        var postIndex = 10
        
        func buildTree(inorder: [Int], preorder: [Int], inStart: Int, inEnd: Int) -> Node? {
            
            if inStart > inEnd {
                return nil
            }
            
            let tNode = Node(value: preorder[preIndex])
            preIndex += 1
            
            if inStart == inEnd {
                return tNode
            } else {
                let inIndex = search(arr: inorder, start: inStart, end: inEnd, value: tNode.value)
                tNode.left = buildTree(inorder: inorder, preorder: preorder, inStart: inStart, inEnd: inIndex - 1)
                tNode.right = buildTree(inorder: inorder, preorder: preorder, inStart: inIndex + 1, inEnd: inEnd)
                return tNode
            }
        }
        
        func buildTree(inorder: [Int], postorder: [Int], inStart: Int, inEnd: Int) -> Node? {
            if inStart > inEnd {
                return nil
            }
            
            let tNode = Node(value: postorder[postIndex])
            postIndex -= 1
            
            if inStart == inEnd {
                return tNode
            } else {
                let inIndex = searchback(arr: inorder, start: inStart, end: inEnd, value: tNode.value)
                //            tNode.left = buildTree(inorder: inorder, postorder: postorder, inStart: inStart, inEnd: inIndex - 1)
                //            tNode.right = buildTree(inorder: inorder, postorder: postorder, inStart: inIndex + 1, inEnd: inEnd )
                tNode.right = buildTree(inorder: inorder, postorder: postorder, inStart: inStart, inEnd: inIndex - 1)
                tNode.left = buildTree(inorder: inorder, postorder: postorder, inStart: inIndex + 1, inEnd: inEnd )
                
                return tNode
            }
        }
        
        func search(arr: [Int], start: Int, end: Int, value: Int) -> Int {
            for i in start...end {
                if arr[i] == value {
                    return i
                }
            }
            return start
        }
        
        func searchback(arr: [Int], start: Int, end: Int, value: Int) -> Int {
            for i in start...end {
                if arr[i] == value {
                    return i
                }
            }
            return end
        }
        
        
        func printOrder(node: Node?) {
            if let n = node {
                print ("===",n.value)
                printOrder(node: n.left)
                printOrder(node: n.right)
            }
        }
        
    }
    
    let bTree = BTree()
    
    //let preOrder: [Int] = [50, 30, 20, 40, 35, 70, 60, 65, 80, 75, 85, 90]
    //let inorder: [Int] = [20, 30, 35, 40, 50, 60, 65, 70, 75, 80, 85, 90]
    
    
    let inorder: [Int] = [35, 40, 50, 60, 70, 75, 80, 85, 90, 95, 97 ]
    let postorder: [Int] = [35, 40, 60, 75, 97, 95, 90, 85, 80, 70, 50]
    
//    let count: Int = inorder.count
    
    
    //let root = bTree.buildTree(inorder: inorder, preorder: preOrder, inStart: 0, inEnd: count - 1)
    //bTree.printOrder(node: root)
    
    //let root = bTree.buildTree(inorder: inorder, postorder: postorder, inStart: 0, inEnd: count - 1)
//    let root = bTree.buildTree(inorder: inorder.reversed(), postorder: postorder, inStart: 0, inEnd: count - 1)
//    bTree.printOrder(node: root)

}
