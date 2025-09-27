// 3 - Criar as ações da page 

/// <reference types="cypress" />
export default{
    acessaLogin(){
        cy.visit("/")
            .get("#top_header")

        cy.get(".fa-user")
            .click()
    }
}