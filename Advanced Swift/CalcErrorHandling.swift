enum CalculatorError: Error {
    case divisionByZero
}
class Calculator {
    
    func divide(x: Double, y: Double) throws -> Double {
        
        if y == 0 {
            throw CalculatorError.divisionByZero
        }
        
        return x / y
    }
}
let calculator = Calculator()

do {
    let successfulResult = try calculator.divide(x: 1, y: 2)
    print(successfulResult)
    let invalidResult = try calculator.divide(x: 1, y: 0)
}
catch CalculatorError.divisionByZero {
    print("Division by zero detected and not allowed")
}

