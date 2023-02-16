//
//  Observer.swift
//  DesignPatternsSwift
//
//  Created by Alireza Zahedi on 2023-02-14.
//

import Foundation


class Observer<T> {
    func update(newValue: T){};
}

class Subject<T> {
    private var observers: [Observer<T>];
    private var value: T {
        didSet {
            self.notify()
        }
    };
    
    init(value: T) {
        self.observers = []
        self.value = value
    }
    
    func attach(observer: Observer<T>){
        self.observers.append(observer)
    }
        
    func setValue(newValue: T){
        self.value = newValue
    }
    
    private func notify(){
        for observer in self.observers {
            observer.update(newValue: self.value)
        }
    }
}


class ConcreteObserver<T>: Observer<T> {
    let name: String;
    
    override func update(newValue: T) {
        print("notified \(self.name) with value \(newValue)")
    }
    
    init(name: String) {
        self.name = name
    }
}

func test(){
    let o1 = ConcreteObserver<Int>(name: "first")
    let o2 = ConcreteObserver<Int>(name: "second")
    let subject = Subject<Int>(value: 0)
    
    subject.attach(observer: o1)
    subject.attach(observer: o2)
    
    subject.setValue(newValue: 10)
    
    
}
