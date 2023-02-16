//
//  Proxy.swift
//  DesignPatternsSwift
//
//  Created by Alireza Zahedi on 2023-02-14.
//

import Foundation

protocol Image {
    func display()
}

class RealImage: Image {
    private let fileName: String
    
    init(fileName: String) {
        self.fileName = fileName
        loadFromDisk()
    }
    
    func display() {
        print("Displaying image: \(fileName)")
    }
    
    private func loadFromDisk() {
        print("Loading image from disk: \(fileName)")
    }
}

class ImageProxy: Image {
    private let fileName: String
    private var realImage: RealImage?
    
    init(fileName: String) {
        self.fileName = fileName
    }
    
    func display() {
        if realImage == nil {
            realImage = RealImage(fileName: fileName)
        }
        realImage?.display()
    }
}

func test(){
    // Usage
    let image = ImageProxy(fileName: "test.jpg")
    // The RealImage is not loaded until the "display" method is called on the proxy
    image.display()
}
