# 🚀 Projeto de Testes Automatizados com Cypress + BDD (Gherkin)

Este projeto tem fins de **aprendizado** e segue uma estrutura organizada para facilitar a evolução dos estudos e a avaliação por profissionais de QA, líderes técnicos e recrutadores.  

A proposta é aplicar **Cypress** em conjunto com **BDD (Behavior Driven Development)**, utilizando **Gherkin** para descrever cenários de teste de forma clara e legível.

---

## 📂 Estrutura do Projeto
📦 cypress-bdd-treinamento
┣ 📂 cypress
┃ ┣ 📂 e2e
┃ ┣ 📂 fixtures
┃ ┣ 📂 support
┃ ┗ 📂 features # arquivos .feature em Gherkin
┣ 📂 reports # relatórios de execução (em breve)
┣ 📜 cypress.config.js
┣ 📜 package.json
┗ 📜 README.md



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

📈 Próximos Passos

 Adicionar cenários básicos de login/logout

 Implementar geração de relatórios (Allure ou Mochawesome)

 Incluir testes de API

 Configurar pipeline de CI/CD

✨ Status

🚧 Em desenvolvimento – este projeto está em fase inicial de treinamento e será atualizado com novos cenários e funcionalidades ao longo do tempo.