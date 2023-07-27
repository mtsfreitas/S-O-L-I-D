//: [Previous](@previous)

// Exemplo do SRP: Uma classe com única responsabilidade de somar números.

class Calculator {
    func add(_ num1: Int, _ num2: Int) -> Int {
        return num1 + num2
    }
    
    func subtract(_ num1: Int, _ num2: Int) -> Int {
        return num1 - num2
    }
    
    func multiply(_ num1: Int, _ num2: Int) -> Int {
        return num1 * num2
    }
    
    func divide(_ num1: Int, _ num2: Int) -> Int {
        if num2 != 0 {
            return num1 / num2
        } else {
            fatalError("Division by zero is not allowed.")
        }
    }
}

let calculator = Calculator()
let addResult = calculator.add(5, 3)
let subtractResult = calculator.subtract(5, 3)
let multiplyResult = calculator.multiply(5, 3)
let divideResult = calculator.divide(15, 3)

print(addResult) // Output: 8
print(subtractResult) // Output: 2
print(multiplyResult) // Output: 15
print(divideResult) // Output: 5


// Neste exemplo, adicionamos o método logOperation(_:) à classe Calculator, o que não tem relação com a responsabilidade principal da classe, que é realizar operações matemáticas. Isso viola o princípio da responsabilidade única, pois a classe Calculator agora tem duas responsabilidades distintas: operações matemáticas e registro de operações em um log.

/*

class Calculator {
 func add(_ num1: Int, _ num2: Int) -> Int {
     return num1 + num2
 }
 
 func logOperation(_ operation: String) {
     // Código para registrar a operação em um arquivo de log, por exemplo.
 }
}

let calculator = Calculator()
let result = calculator.add(5, 3)
calculator.logOperation("Added 5 and 3") // Logging unrelated operation
print(result) // Output: 8

 */
//: [Next](@next)
