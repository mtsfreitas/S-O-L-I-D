//: [Previous](@previous)

// O Single Responsibility Principle (SRP), em português Princípio da Responsabilidade Única, é um dos cinco princípios do SOLID, um conjunto de diretrizes que visam melhorar a qualidade e a manutenibilidade do código em programação orientada a objetos. O SRP estabelece que uma classe deve ter uma única responsabilidade e motivo para mudar. Em outras palavras, uma classe deve ter apenas uma razão para ser alterada.

// Um exemplo ruim que viola o SRP em Swift seria o seguinte:

class User {
    var name: String
    var email: String
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
    
    func saveToDatabase() {
        // Lógica para salvar o usuário no banco de dados
    }
    
    func sendEmail() {
        // Lógica para enviar um e-mail para o usuário
    }
}

// Neste exemplo, a classe User está lidando com duas responsabilidades distintas: salvar o usuário no banco de dados e enviar e-mails. Isso viola o SRP, porque se houver mudanças nas regras de envio de e-mails, por exemplo, a classe User precisará ser modificada, mesmo que a mudança não esteja diretamente relacionada à sua representação e armazenamento.

//: [Next](@next)
