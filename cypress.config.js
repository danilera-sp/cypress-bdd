const { defineConfig } = require("cypress");
const cypressOnFix = require('cypress-on-fix');

const createBundler = require("@bahmutov/cypress-esbuild-preprocessor")
const { addCucumberPreprocessorPlugin } = require("@badeball/cypress-cucumber-preprocessor")
const {createEsbuildPlugin} = require("@badeball/cypress-cucumber-preprocessor/esbuild")

module.exports = defineConfig({


  video: true,
  retries: 1,
  
  e2e: {
    projectId: "jxodqi",
    baseUrl:"https://automationpratice.com.br/", 
    specPattern: "**/*.feature",
    reporter: 'cypress-mochawesome-reporter',
    reporterOptions: {
        charts: true,
        reportPageTitle: 'custom-title',
        embeddedScreenshots: true,
        inlineAssets: true,
        saveAllAttempts: false,
        ignoreVideos: true,
        videoOnFailOnly: true,
      },

    
    async setupNodeEvents(on, config) {
      on = cypressOnFix(on);
      require('cypress-mochawesome-reporter/plugin')(on);

      await addCucumberPreprocessorPlugin(on,config);
        on(
        "file:preprocessor",
        createBundler({
          plugins: [createEsbuildPlugin(config)],
        })
      );
      

      return config;
    },
  },
});
