//: [Previous](@previous)

// Exemplo do OCP: Extensão de funcionalidade usando herança e protocolos.

protocol Shape {
    func area() -> Double
}

class Circle: Shape {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return Double.pi * radius * radius
    }
}

class Square: Shape {
    let side: Double
    
    init(side: Double) {
        self.side = side
    }
    
    func area() -> Double {
        return side * side
    }
}

// Agora podemos estender a funcionalidade sem modificar as classes existentes
class Rectangle: Shape {
    let width: Double
    let height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func area() -> Double {
        return width * height
    }
}

let circle = Circle(radius: 5)
let square = Square(side: 4)
let rectangle = Rectangle(width: 6, height: 8)

let shapes: [Shape] = [circle, square, rectangle]

for shape in shapes {
    print(shape.area())
}

//: [Next](@next)
