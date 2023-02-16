//
//  Iterator.swift
//  DesignPatternsSwift
//
//  Created by Alireza Zahedi on 2023-02-14.
//

import Foundation

class AbstractClass {
    func step1() { print("AbstractClass step 1 method")}
    func step2() {print("AbstractClass step 2 method")}
    func step3() {print("AbstractClass step 3 method")}
    
    func executeSteps(){
        self.step1()
        self.step2()
        self.step3()
    }
}

class ConcreteClass: AbstractClass {
    override func step1() {
        print("overriden step 1 method in ConcreteClass")
    }
    
    override func step3(){
        print("overriden step 3 method in ConcreteClass")
    }
}

func test(){
    let object = ConcreteClass()
    object.executeSteps()
}
