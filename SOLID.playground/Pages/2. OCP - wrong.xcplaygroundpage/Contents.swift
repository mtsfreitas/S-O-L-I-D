//: [Previous](@previous)

// O Princípio Aberto-Fechado (Open-Closed Principle - OCP) é outro princípio do SOLID e sugere que as entidades de software, como classes, módulos ou funções, devem ser abertas para extensão, mas fechadas para modificação. Isso significa que você deve ser capaz de adicionar novos comportamentos ou funcionalidades a um sistema sem modificar o código existente.

// Um exemplo ruim que viola o OCP em Swift seria o seguinte:

class Shape {
    var type: String
    
    init(type: String) {
        self.type = type
    }
    
    func area() -> Double {
        fatalError("Subclasses must implement this method")
    }
}

// Neste exemplo, a classe Shape é uma classe base para várias formas geométricas. No entanto, se você quiser adicionar um novo tipo de forma, precisará modificar a classe Shape e criar uma nova implementação para o método area(), violando o OCP.

//: [Next](@next)
