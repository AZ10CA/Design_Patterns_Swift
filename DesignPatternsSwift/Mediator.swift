//
//  Mediator.swift
//  DesignPatternsSwift
//
//  Created by Alireza Zahedi on 2023-02-14.
//

import Foundation


protocol Mediator {
    func notify(sender: Person, message: String)
}

class Person {
    let name: String;
    let mediator: Mediator;
    
    func receive(sender: Person, message: String){
        print("\(name) received \"\(message)\" from \"\(sender.name)\"")
    }
    
    func send(message: String){
        self.mediator.notify(sender: self, message: message)
    }
    
    init(name: String, mediator: Mediator) {
        self.name = name
        self.mediator = mediator
    }
}

class ChatRoom: Mediator {
    var participants: [Person];
    
    init() {
        self.participants = []
    }
    func notify(sender: Person, message: String) {
        for person in self.participants {
            if person !== sender {
                person.receive(sender: sender, message: message)
            }
        }
    }
    
    func addParticipant(person: Person){
        self.participants.append(person)
    }
}


func test(){
    let room = ChatRoom()
    let p1 = Person(name: "first", mediator: room)
    let p2 = Person(name: "second", mediator: room)
    let p3 = Person(name: "third", mediator: room)
    
    room.addParticipant(person: p1)
    room.addParticipant(person: p2)
    room.addParticipant(person: p3)
    
    p1.send(message: "Hey guys!")
    
}
