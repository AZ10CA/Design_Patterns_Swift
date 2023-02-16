//
//  Strategy.swift
//  DesignPatternsSwift
//
//  Created by Alireza Zahedi on 2023-02-14.
//

import Foundation

protocol Strategy {
    func execute();
}

class Strategy1: Strategy {
    func execute(){
        print("Strategy1 executed")
    }
}

class Strategy2: Strategy {
    func execute(){
        print("Strategy2 executed")
    }
}

class Context {
    private var strategy: Strategy;
    
    init(strategy: Strategy) {
        self.strategy = strategy
    }
    
    func executeStrategy() {
        strategy.execute()
    }
    
    func set(strategy: Strategy){
        self.strategy = strategy
    }
    
    
}

func test(){
    let context = Context(strategy: Strategy1())
    context.executeStrategy()
    context.set(strategy: Strategy2())
    context.executeStrategy()
}
