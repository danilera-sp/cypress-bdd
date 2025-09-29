/// <reference types="cypress" />
import { faker } from "@faker-js/faker";

export default{

    btnCadUser(){
        cy.get("#btnRegister")
            .should('be.enabled')
            .click()
    },

    errMsg(msg){
        cy.get(".errorLabel")
            .should("be.visible")
            .and('have.text', msg)
    },

    nomeUsuario(nome){
        cy.get("#user")
            .type(nome)
    }, 

    emailUsuario(mail){
        cy.get("#email")
            .type(mail)
    }, 

    senhaUsuario(key){
        cy.get("#password")
            .type(key)
    }, 

    sucessMsg(msg){
        cy.get("#swal2-title")
            .should('be.visible')
            .and('have.text', msg)
    }
}