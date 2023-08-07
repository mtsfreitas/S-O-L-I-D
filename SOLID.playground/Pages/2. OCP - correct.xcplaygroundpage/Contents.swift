//: [Previous](@previous)

// Aqui está um exemplo melhor que segue o OCP:

protocol Shape {
    func area() -> Double
}

class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return Double.pi * radius * radius
    }
}

class Rectangle: Shape {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func area() -> Double {
        return width * height
    }
}

// Neste exemplo, utilizamos protocolos em Swift para definir um contrato para formas geométricas. As classes Circle e Rectangle implementam esse protocolo, fornecendo suas próprias implementações do método area(). Agora, se você quiser adicionar um novo tipo de forma, basta criar uma nova classe que implemente o protocolo Shape, sem modificar as classes existentes. Isso adere ao OCP, permitindo a extensão do sistema sem modificar o código já existente.

//: [Next](@next)
