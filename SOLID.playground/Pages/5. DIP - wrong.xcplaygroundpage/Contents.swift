//: [Previous](@previous)

// O Princípio da Inversão de Dependência (Dependency Inversion Principle - DIP) é o último dos cinco princípios do SOLID. Ele sugere que as classes de alto nível não devem depender das classes de baixo nível, mas ambas devem depender de abstrações. Além disso, abstrações não devem depender de detalhes, mas detalhes devem depender de abstrações. Em outras palavras, o DIP promove o uso de interfaces ou abstrações para reduzir o acoplamento entre componentes do sistema.

// Um exemplo ruim que viola o DIP em Swift seria o seguinte:

class LightBulb {
    private var state = false
    
    func turnOn() {
        state = true
        print("Light bulb turned on")
    }
    
    func turnOff() {
        state = false
        print("Light bulb turned off")
    }
    
    func isOn() -> Bool {
        return state
    }
}

class LightSwitch {
    private let bulb = LightBulb()
    
    func toggle() {
        if bulb.isOn() {
            bulb.turnOff()
        } else {
            bulb.turnOn()
        }
    }
}


// Neste exemplo, a classe LightSwitch depende diretamente da classe LightBulb, o que viola o DIP. Isso cria um alto acoplamento entre as duas classes, tornando difícil a alteração de uma sem afetar a outra.

//: [Next](@next)
