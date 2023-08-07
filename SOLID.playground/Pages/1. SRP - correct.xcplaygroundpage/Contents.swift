//: [Previous](@previous)

// Aqui está um exemplo melhor que segue o SRP:

class User {
    var name: String
    var email: String
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
}

class UserRepository {
    func saveUser(_ user: User) {
        // Lógica para salvar o usuário no banco de dados
    }
}

class EmailService {
    func sendEmail(to recipient: String, subject: String, body: String) {
        // Lógica para enviar um e-mail
    }
}

// Neste exemplo, a classe User tem a única responsabilidade de representar um usuário. As responsabilidades de salvar o usuário no banco de dados e enviar e-mails foram movidas para as classes UserRepository e EmailService, respectivamente. Isso adere ao SRP, facilitando a manutenção e evitando que mudanças em uma área afetem indevidamente as outras.

//: [Next](@next)
