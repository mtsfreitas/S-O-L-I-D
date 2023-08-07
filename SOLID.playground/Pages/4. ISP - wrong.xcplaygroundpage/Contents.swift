//: [Previous](@previous)

// O Princípio da Segregação de Interfaces (Interface Segregation Principle - ISP) é outro princípio do SOLID. Ele sugere que uma classe não deve ser forçada a implementar interfaces que não utiliza. Em vez disso, as interfaces devem ser segregadas em conjuntos menores e mais específicos que são relevantes para as necessidades da classe.

// Um exemplo ruim que viola o ISP em Swift seria o seguinte:

protocol Worker {
    func work()
    func eat()
    func sleep()
}

class Engineer: Worker {
    func work() {
        print("Engineer is working")
    }
    
    func eat() {
        print("Engineer is eating")
    }
    
    func sleep() {
        print("Engineer is sleeping")
    }
}

// Neste exemplo, a classe Engineer implementa a interface Worker, que contém métodos para work, eat e sleep. No entanto, nem todas as classes que implementam Worker podem ter a necessidade de todos esses métodos. Isso viola o ISP, pois a classe Engineer é forçada a implementar métodos que não são relevantes para sua função.

//: [Next](@next)
