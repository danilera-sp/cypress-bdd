Feature: Cadastro de usuário


    Eu como cliente 
    Quero fazer cadastro na aplicação 
    Para fazer um pedido de compra 

    Scenario: Campo nome vazio
        Given Estou na tela de cadastro de usuário
        When Eu clico no botão cadastrar 
        Then Eu vejo a mensagem "O campo nome deve ser prenchido"

    Scenario: Campo e-mail vazio
        Given Estou na tela de cadastro de usuário
        And Preencho o campo  NOME com as credenciais "validas"
        When Eu clico no botão cadastrar 
        Then Eu vejo a mensagem "O campo e-mail deve ser prenchido corretamente"

    Scenario: Campo e-mail inválido
        Given Estou na tela de cadastro de usuário
        And Preencho o campo  NOME com as credenciais "validos"
        And Preencho o campo  E-MAIL com as credenciais "invalidas"
        When Eu clico no botão cadastrar 
        Then Eu vejo a mensagem "O campo e-mail deve ser prenchido corretamente"

    Scenario: Campo senha vazio
        Given Estou na tela de cadastro de usuário
        And Preencho o campo  NOME com as credenciais "validos"
        And Preencho o campo  E-MAIL com as credenciais "valida"
        When Eu clico no botão cadastrar 
        Then Eu vejo a mensagem "O campo senha deve ter pelo menos 6 dígitos"

    Scenario: Campo senha inválida
        Given Estou na tela de cadastro de usuário
        And Preencho o campo  NOME com as credenciais "validos"
        And Preencho o campo  E-MAIL com as credenciais "valida"
        And Preencho o campo  SENHA com as credenciais "invalidas"
        When Eu clico no botão cadastrar 
        Then Eu vejo a mensagem "O campo senha deve ter pelo menos 6 dígitos"

    Scenario: Cadastro de usuário realizado com sucesso
        Given Estou na tela de cadastro de usuário
        And Preencho o campo  NOME com as credenciais "validos"
        And Preencho o campo  E-MAIL com as credenciais "valida"
        And Preencho o campo  SENHA com as credenciais "invalidas"
        When Eu clico no botão cadastrar 
        Then Eu vejo a mensagem de sucesso "Cadastro realizado!"