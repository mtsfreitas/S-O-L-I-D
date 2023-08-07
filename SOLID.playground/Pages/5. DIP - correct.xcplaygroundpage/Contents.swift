//: [Previous](@previous)

// Aqui está um exemplo melhor que segue o DIP:

protocol Switchable {
    func turnOn()
    func turnOff()
    func isOn() -> Bool
}

class LightBulb: Switchable {
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
    private let device: Switchable
    
    init(device: Switchable) {
        self.device = device
    }
    
    func toggle() {
        if device.isOn() {
            device.turnOff()
        } else {
            device.turnOn()
        }
    }
}


// Neste exemplo, introduzimos a interface Switchable, que define os métodos turnOn(), turnOff() e isOn(). A classe LightBulb implementa essa interface, e a classe LightSwitch agora recebe um dispositivo Switchable através do construtor, eliminando a dependência direta. Isso adere ao DIP, pois as classes de alto nível (LightSwitch) dependem de abstrações (Switchable) em vez de detalhes de implementação específicos (LightBulb). Isso reduz o acoplamento e facilita a manutenção e extensão do sistema.

//: [Next](@next)
