///How to inherit multiple protocols in a class and extend existing class implementations using extensions.
protocol GoodChef {
    func cookGoodFood()
}
protocol GreatChef {
    func cookGreatFood()
}
protocol ExcellentChef {
    func cookExcellentFood()
}

class Person : GoodChef, GreatChef,ExcellentChef  {
    func cookExcellentFood() {
        
    }
    
    func cookGreatFood() {
        
    }
    
    func cookGoodFood() {
        
    }
    
    
}


///One strategy you can use to keep your code consistent and organized is to extend the Person into their respective extension blocks with their conformance methods. An extension block is declared that makes Person adopt and conform to the ExcellentChef protocol. As a rule of thumb, use an extension for each protocol adoption and conformance. This keeps protocol-related code organized in an extension block.
class Person2{
    
}
extension Person2: GoodChef {
    func cookGoodFood() {
    }
}
extension Person2: GreatChef {
    func cookGreatFood() {
    }
}
extension Person2: ExcellentChef {
    func cookExcellentFood() {
    }
}

///how you can make a class inherit three different protocols. Another thing you can do with a protocol is to create a protocol that inherits other protocols. Instead of inheriting each individual protocol, you can have a protocol that encompasses the individual protocol requirements.

protocol BlackBeltChef: GoodChef, GreatChef, ExcellentChef {
    func cookBlackBeltFood()
}

class Person3: BlackBeltChef {
    func cookBlackBeltFood() {
        
    }
    
    func cookGoodFood() {
        
    }
    
    func cookGreatFood() {
        
    }
    
    func cookExcellentFood() {
        
    }
}
