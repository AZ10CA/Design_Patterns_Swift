import Foundation

// By Alireza Zahedi
// For BTP600NBB
// UML diagram from Builder-Wk4.rtf


protocol Car { } // Role: Product
class SUV: Car { } // Role: ConcreteObject (product)
class Sedan: Car { } // Role: ConcreteObject (product)

// Role: Builder
protocol CarBuilder {
    func addFrontDoor()
    func addBackDoor()
    func addMoonRoof()
    func build() -> Car
}

// Role: Director
class CarDirector {
    private let builder: CarBuilder;
    
    init(builder: CarBuilder) {
        self.builder = builder
    }

    func getCar() -> Car {
        self.builder.addBackDoor()
        self.builder.addMoonRoof()
        self.builder.addFrontDoor()
        return builder.build()
    }
}

// Role: ConcreteBuilder
class SedanBuilder: CarBuilder {
    private var sedanObject = Sedan();
    
    func addFrontDoor() {
        print("Added front door for Sedan")
    }

    func addBackDoor() {
        print("Added back door for Sedan")
    }

    func addMoonRoof() {
        print("Added moon roof for Sedan")
    }
    
    func build() -> Car { return sedanObject; }
}

// Role: ConcreteBuilder
class SUVBuilder: CarBuilder {
    private var SUVObject = SUV();

    func addBackDoor() {
        print("Added back door for SUV")
    }

    func addMoonRoof() {
        print("Added moon roof for SUV")
    }

    func addFrontDoor() {
        print("Added front door for SUV")
    }

    func build() -> Car { return SUVObject; }
}

// Usage example for SUV:
let carDirector = CarDirector(builder: SUVBuilder())
let suvCar: Car = carDirector.getCar()

// Type Check
print("Is it a SUV?")
print(suvCar is SUV) // "is" is a special keyword to type-check an instance
print("Is it a sedan?")
print(suvCar is Sedan)
