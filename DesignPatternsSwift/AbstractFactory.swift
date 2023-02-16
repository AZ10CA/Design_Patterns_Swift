//
//  AbstractFactory.swift
//  DesignPatternsSwift
//
//  Created by Alireza Zahedi on 2023-02-14.
//

import Foundation

protocol AbstractProductA {}
protocol AbstractProductB {}

class ConcreteProductA: AbstractProductA {}
class ConcreteProductB: AbstractProductB {}

class ConcreteProductA1: AbstractProductA {}
class ConcreteProductA2: AbstractProductA {}
class ConcreteProductB1: AbstractProductB {}
class ConcreteProductB2: AbstractProductB {}

protocol AbstractFactory {}

class ConcreteFactory1: AbstractFactory {
    func createProductA() -> AbstractProductA { ConcreteProductA1() }
    func createProductB() -> AbstractProductB { ConcreteProductB1() }
}

class ConcreteFactory2: AbstractFactory {
    func createProductA() -> AbstractProductA { ConcreteProductA2() }
    func createProductB() -> AbstractProductB { ConcreteProductB2() }
}

func test(){
    // Usage example
    let factory1 = ConcreteFactory1()
    let productA1 = factory1.createProductA()
    let productB1 = factory1.createProductB()
    print(productA1 is ConcreteProductA1)
    print(productB1 is ConcreteProductB1)
    
    let factory2 = ConcreteFactory2()
    let productA2 = factory2.createProductA()
    let productB2 = factory2.createProductB()
    print(productA2 is ConcreteProductA2)
    print(productB2 is ConcreteProductB2)
}
