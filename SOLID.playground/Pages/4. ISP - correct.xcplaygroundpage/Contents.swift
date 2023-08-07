//: [Previous](@previous)

// Aqui está um exemplo melhor que segue o ISP:

protocol Workable {
    func work()
}

protocol Feedable {
    func eat()
}

protocol Sleepable {
    func sleep()
}

class Engineer: Workable, Feedable {
    func work() {
        print("Engineer is working")
    }
    
    func eat() {
        print("Engineer is eating")
    }
}

class Sleeper: Sleepable {
    func sleep() {
        print("Sleeper is sleeping")
    }
}

// Neste exemplo, dividimos a interface Worker em três interfaces menores e mais específicas: Workable, Feedable e Sleepable. Agora, a classe Engineer implementa apenas as interfaces relevantes para sua função. A classe Sleeper implementa a interface Sleepable, e outras classes podem implementar as interfaces de acordo com suas necessidades. Isso adere ao ISP, evitando que as classes sejam obrigadas a implementar métodos irrelevantes para suas funcionalidades.

//: [Next](@next)
