protocol Driver {
    var name: String { get }
    func driveToDestination(_ destination: String, with food: String)
}

class DeliveryDriver: Driver {
    let name: String
    init(name: String) {
        self.name = name
    }
    func driveToDestination(_ destination: String, with food: String) {
        print("\(name) is driving to \(destination) to deliver \(food).")
    }
}

class FastFood {
    var deliveryDriver: Driver?
    func deliverFood(_ food: String, to destination: String) {
        if let deliveryDriver = deliveryDriver {
            deliveryDriver.driveToDestination(
                destination,
                with: food
            )
        } else {
            print("No delivery driver.")
        }
    }
}

let bob = DeliveryDriver(name: "Bob")
let fastFood = FastFood()
fastFood.deliverFood(
    "Super Spaghetti",
    to: "1 Spaghetti Lane"
)
fastFood.deliveryDriver = bob
fastFood.deliverFood(
    "Super Spaghetti",
    to: "1 Spaghetti Lane"
)
