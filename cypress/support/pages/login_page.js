/// <reference types="cypress" />
import { faker } from "@faker-js/faker";
export default {
    acaoLogin(){
        cy.get("#btnLogin")
            .click()
    },


    errMsg(msg){
        cy.get(".invalid_input")
            .should("be.visible")
            .and("have.text", msg)
    },

    preencheMail(){
        cy.get("#user")
            .type(faker.internet.email())
        
    }, 

    validCredentials(){
        const mail = faker.internet.email()
        cy.get("#user")
        .type(mail)
        cy.get("#password")
        .type(faker.internet.password())
    }, 

    sucessMsg(){
        cy.get("#swal2-title")
            .should("be.visible")
            .and("have.text", "Login realizado")
    }

}