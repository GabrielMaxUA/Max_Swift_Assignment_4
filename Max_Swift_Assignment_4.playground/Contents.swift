import Cocoa

class Camper: Trailer, WaterSystem {
    var brand: String
    var waterCapacity: Double
    var name: String
    var engine: Bool
    
    init(name: String, brand: String){
        self.name = name
        self.brand = brand
        self.waterCapacity = 100
        self.engine = false
    }
   
    func startEngine() -> Bool {
        if !engine {
            print("the engine is started")
            engine = true // Set engine to true
            return true
        } else {
            print("engine is already running")
            return false
        }
    }

    func stopEngine() -> Bool {
        if engine {
            print("the engine is stopped")
            engine = !engine
            return true
        } else {
            print("engine is already stopped")
            return false
        }
    }
    
    func fillWaterTank() {
        let water = 10.0
        if self.waterCapacity < water * 10 {
            self.waterCapacity += water
        }
        else{
            print("The water tank is full")
        }
    }
    
    func drainWaterTank() {
        let water = 10.0
        if self.waterCapacity >= water {
            self.waterCapacity -= water
        }
        else {
            print("The water tank is empty")
        }
    }
}

protocol Trailer {
    var brand: String { get set }
    func startEngine() -> Bool
    func stopEngine() -> Bool
}

protocol WaterSystem {
    var waterCapacity: Double { get set }
    func fillWaterTank()
    func drainWaterTank()
}

let trailer = Camper(name: "Max", brand: "Toyota")
trailer.startEngine()
trailer.startEngine()
trailer.stopEngine()
trailer.stopEngine()
print("water tank capacity: \(trailer.waterCapacity)")
//draining water
trailer.drainWaterTank()
print("water tank capacity: \(trailer.waterCapacity)")
trailer.drainWaterTank()
print("water tank capacity: \(trailer.waterCapacity)")
//adding water
trailer.fillWaterTank()
trailer.fillWaterTank()
trailer.fillWaterTank()

print("water tank capacity: \(trailer.waterCapacity)")
