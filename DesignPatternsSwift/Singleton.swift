//
//  Singleton.swift
//  DesignPatternsSwift
//
//  Created by Alireza Zahedi on 2023-02-14.
//

import Foundation

class Singleton {
    private init() {}
    
    static let shared = Singleton()
}


func test(){
    let shared = Singleton.shared // OK
//    let shared = Singleton() // --> Compile Error
}
