/// <reference types="cypress" />

import {Given, When, Then} from"@badeball/cypress-cucumber-preprocessor"
import home_page from "../pages/home_page"
import cadUser_page from "../pages/cadUser_page"
import login_page from "../pages/login_page"



        Given ('Estou na tela de cadastro de usuário', ()=>{
            home_page.acessaCadUser()

        })

        Given ('Preencho o campo  NOME com as credenciais {string}', (username)=>{
            cadUser_page.nomeUsuario(username)
        })
        
        Given ('Preencho o campo  E-MAIL com as credenciais {string}', (mail)=>{
            cadUser_page.emailUsuario(mail)
        })

        Given ('Preencho o campo  SENHA com as credenciais {string}', (passwd)=>{
            cadUser_page.senhaUsuario(passwd)
        })

        When ('Eu clico no botão cadastrar', ()=>{
            cadUser_page.btnCadUser()
        })

        Then ('Eu vejo a mensagem de erro {string}', (msg) => {
            cadUser_page.errMsg(msg)
        })

        Then ('Eu vejo a mensagem de sucesso {string}', (sucessMsg) => {
            cadUser_page.sucessMsg(sucessMsg)
        })