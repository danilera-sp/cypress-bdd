Feature: Cadastro de usuário


    Eu como cliente 
    Quero fazer cadastro na aplicação 
    Para fazer um pedido de compra 

    Background: Acesso a tela de Cadastro
        Given Estou na tela de cadastro de usuário

    Scenario: Campo nome vazio
        
        When Eu clico no botão cadastrar 
        Then Eu vejo a mensagem de erro "O campo nome deve ser prenchido"

    Scenario: Campo e-mail vazio
       
        And Preencho o campo  NOME com as credenciais "validas"
        When Eu clico no botão cadastrar 
        Then Eu vejo a mensagem de erro "O campo e-mail deve ser prenchido corretamente"

    Scenario: Campo e-mail inválido
       
        And Preencho o campo  NOME com as credenciais "validos"
        And Preencho o campo  E-MAIL com as credenciais "invalidas"
        When Eu clico no botão cadastrar 
        Then Eu vejo a mensagem de erro "O campo e-mail deve ser prenchido corretamente"

    Scenario: Campo senha vazio
        
        And Preencho o campo  NOME com as credenciais "validos"
        And Preencho o campo  E-MAIL com as credenciais "teste@teste.com"
        When Eu clico no botão cadastrar 
        Then Eu vejo a mensagem de erro "O campo senha deve ter pelo menos 6 dígitos"

    Scenario: Campo senha inválida
        
        And Preencho o campo  NOME com as credenciais "validos"
        And Preencho o campo  E-MAIL com as credenciais "teste@teste.com"
        And Preencho o campo  SENHA com as credenciais "123"
        When Eu clico no botão cadastrar 
        Then Eu vejo a mensagem de erro "O campo senha deve ter pelo menos 6 dígitos"

    Scenario: Cadastro de usuário realizado com sucesso
        
        And Preencho o campo  NOME com as credenciais "Teste"
        And Preencho o campo  E-MAIL com as credenciais "teste@teste.com"
        And Preencho o campo  SENHA com as credenciais "teste123"
        When Eu clico no botão cadastrar 
        Then Eu vejo a mensagem de sucesso "Cadastro realizado!"