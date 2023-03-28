class Dish {
    private let name: String
    private var ingredients: [String]
    init(name: String, ingredients: [String]) {
        self.name = name
        self.ingredients = ingredients
    }
    func printInfo() {
        print(name)
        print(ingredients)
    }
}

final class AppetizerDish: Dish {
    override func printInfo() {
        print("Appetizer")
        super.printInfo()
    }
}

final class MainDish: Dish {
}

for _ in 0..<5 {
    let randomNumber = Int.random(in: 0...1)
    let dish: Dish
    if randomNumber == 0 {
        dish = AppetizerDish(
            name: "Margherita Flatbread",
            ingredients: [
                "Margherita",
                "Flatbread",
            ]
        )
    } else {
        dish = MainDish(
            name: "Super Spaghetti",
            ingredients: [
                "Spaghetti",
                "Tomato sauce",
            ]
        )
    }
    if let appetizerDish = dish as? AppetizerDish {
        appetizerDish.printInfo()
    }
    if dish is MainDish {
        print("Main Dish!")
    }
}
