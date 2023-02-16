//
//  Composite.swift
//  DesignPatternsSwift
//
//  Created by Alireza Zahedi on 2023-02-14.
//

import Foundation

protocol Component {
    func operate();
}
class Leaf: Component {
    func operate(){
        print("Leaf visited")
    }
}
class Composite: Component {
    private var components = [Component]()
    
    func addComponent(component: Component) {
        self.components.append(component)
    }
    
    func operate() {
        print("Component visited")
        for comp in components {
            comp.operate()
        }
    }
}

func test(){
    let c1 = Leaf()
    let c2 = Composite()
    
    let composite = Composite()
    composite.addComponent(component: c1)
    composite.addComponent(component: c2)
    
    composite.operate()
}
