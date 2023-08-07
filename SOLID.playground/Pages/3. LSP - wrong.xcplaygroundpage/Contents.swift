//: [Previous](@previous)

// O Princípio da Substituição de Liskov (Liskov Substitution Principle - LSP) é mais um dos princípios do SOLID. Ele estabelece que objetos de uma classe derivada devem poder ser substituídos por objetos da classe base sem afetar a corretude do programa. Em outras palavras, se uma classe B é uma subclasse de uma classe A, então os objetos da classe B devem poder ser usados no lugar dos objetos da classe A sem causar problemas.

// Um exemplo ruim que viola o LSP em Swift seria o seguinte:

class Bird {
    func fly() {
        print("Flying")
    }
}

class Ostrich: Bird {
    override func fly() {
        fatalError("Ostriches can't fly")
    }
}

// Neste exemplo, a classe Ostrich é derivada da classe Bird, mas ela substitui o método fly() com uma implementação que gera um erro. Isso viola o LSP, pois você não pode substituir um objeto da classe base (Bird) por um objeto da classe derivada (Ostrich) sem causar problemas, já que a chamada do método fly() na classe derivada resultaria em um erro.

//: [Next](@next)
