//: [Previous](@previous)

// Aqui está um exemplo melhor que segue o LSP:

protocol Bird {
    func fly()
}

class Sparrow: Bird {
    func fly() {
        print("Flying like a sparrow")
    }
}

class Ostrich: Bird {
    func fly() {
        print("I can't fly")
    }
}

// Neste exemplo, usamos um protocolo Bird para definir um contrato que todas as aves devem seguir. As classes Sparrow e Ostrich implementam esse protocolo, fornecendo suas próprias implementações para o método fly(). Agora, você pode substituir objetos da classe base (Bird) por objetos das classes derivadas (Sparrow e Ostrich) sem problemas, já que ambos seguem o contrato definido pelo protocolo. Isso adere ao LSP, garantindo que a substituição de objetos não cause problemas no programa.

//: [Next](@next)
