//
//  Prototype.swift
//  DesignPatternsSwift
//
//  Created by Alireza Zahedi on 2023-02-15.
//

import Foundation

protocol Prototype {
    associatedtype T;
    func clone() -> T;
}

class Person: Prototype {
    var name: String;
    
    init(name: String) {
        self.name = name
    }
    
    func clone() -> Person { Person(name: name) }
}

func test(){
    let person = Person(name: "Alireza")
    let clone = person.clone()
    print(person.name == clone.name)
    
    person.name = "John"
    print(person.name == clone.name)
}
