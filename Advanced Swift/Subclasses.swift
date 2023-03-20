class Vegetable{
    var primaryColor :String{
        "Green"
    }
    func sing(){
        print("I'm an awesome vegetable.")
    }
}

class Spinach : Vegetable{
    
}
class Broccli : Vegetable{
    override func sing(){
        super.sing()
        print("I like the sun")
    }
}
class Carrot : Vegetable{
    override var primaryColor : String{
        "Orange"
    }
}

let spinach = Spinach()
let broccli = Broccli()
let carrot = Carrot()


print(spinach.primaryColor)
print(broccli.primaryColor)
print(carrot.primaryColor)

spinach.sing()
broccli.sing()
carrot.sing()
