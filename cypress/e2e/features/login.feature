Feature: Login


    Eu como cliente 
    Quero fazer login na aplicação 
    Para fazer um pedido de compra 

    Scenario: Login com campo email vazio 
        Given Estou na tela de login
        When Eu clico no login
        Then Eu vejo a mensagem "E-mail inválido."

    Scenario: Login com campo senha vazio 
        Given Estou na tela de login
        And Preencho e-mail
        When Eu clico no login 
        Then Eu vejo a mensagem "Senha inválida."

    Scenario: Login com sucesso
        Given Estou na tela de login
        And Preencho com as credenciais validas
        When Eu clico no login 
        Then Eu vejo a mensagem de sucesso
