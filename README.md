# 🚀 Projeto de Testes Automatizados com Cypress + BDD (Gherkin)

Este projeto tem fins de **aprendizado** e segue uma estrutura organizada para facilitar a evolução dos estudos e a avaliação por profissionais de QA, líderes técnicos e recrutadores.  

A proposta é aplicar **Cypress** em conjunto com **BDD (Behavior Driven Development)**, utilizando **Gherkin** para descrever cenários de teste de forma clara e legível.

---

## 📁 Estrutura do Projeto

```plaintext
CYPRESS-BDD/
├── cypress/
│   ├── e2e/
│   │   └── features/          # Arquivos .feature do Cucumber
│   │       ├── cad_user.feature
│   │       └── login.feature
│   ├── support/
│   │   ├── pages/             # Page Objects
│   │   │   ├── home_page.js
│   │   │   └── login_page.js
│   │   └── step_definitions/  # Definições dos steps
│   │       └── login_steps.js
│   ├── commands.js            # Comandos customizados do Cypress
│   └── e2e.js                 # Configuração de execução de testes
├── node_modules/              # Dependências do projeto
├── cypress.config.js          # Configuração do Cypress
├── package.json               # Dependências e scripts
├── package-lock.json          # Controle de versões das dependências
├── .gitignore                 # Arquivos ignorados pelo git
└── README.md                  # Documentação do projeto
```



---

## 🛠️ Tecnologias Utilizadas
- [Cypress](https://www.cypress.io/) – Testes end-to-end
- [Cucumber Preprocessor](https://github.com/badeball/cypress-cucumber-preprocessor) – Integração BDD
- [Gherkin](https://cucumber.io/docs/gherkin/) – Escrita de cenários

---

## ▶️ Como Executar
1. Clone este repositório:
   ```bash
   git clone https://github.com/SEU-USUARIO/cypress-bdd-treinamento.git
   cd cypress-bdd-treinamento

2. Instale as dependências:
    ```bash
    npm install

3. Execute os testes em modo grafico:
    ```bash
    npx cypress open
    ```

    ou em modo headless:
    ```bash
    npx cypress run

4. Objetivo do Projeto

Praticar automação de testes web.
Exercitar a escrita de cenários com Gherkin.
Consolidar boas práticas de organização de testes.
Evoluir gradualmente, adicionando relatórios, testes de API, entre outros. 

