
//
//  Factory.swift
//  DesignPatternsSwift
//
//  Created by Alireza Zahedi on 2023-02-14.
//

import Foundation

protocol Product { }
class ConcreteProductA: Product {}
class ConcreteProductB: Product {}

class Factory {
    func createProduct(type: String) -> Product {
        switch type{
        case "A":
            print("Creating product A")
            return ConcreteProductA()
        case "B":
            print("Creating product B")
            return ConcreteProductB()
        default:
            fatalError("Invalid type")
        }
    }
}

func test(){
    // Usage example
    let factory = Factory()
    let productA = factory.createProduct(type: "A")
    print(productA is ConcreteProductA)
    let productB = factory.createProduct(type: "B")
    print(productB is ConcreteProductB)
}
