//2 - transformo gherkin em metodo 
/// <reference types="cypress" />

import {Given, When, Then} from"@badeball/cypress-cucumber-preprocessor"
import home_page from "../pages/home_page"
import login_page from "../pages/login_page"

Given ("Estou na tela de login", ()=>{
    home_page.acessaLogin()
})

Given ("Preencho e-mail", () =>{
    login_page.preencheMail()
})

Given("Preencho com as credenciais validas", ()=>{
    login_page.validCredentials()
})

When ("Eu clico no login", ()=>{
    login_page.acaoLogin()
})

Then ("Eu vejo a mensagem {string}", (errMsg)=>{
    login_page.errMsg(errMsg)
})

Then("Eu vejo a mensagem de sucesso", ()=>{
    login_page.sucessMsg()
})
