exports.config = {
  specs: ["./test/**/*.js"],
  maxInstances: 10,
  capabilities: [
    {
      maxInstances: 5,
      browserName: "chrome"
    }
  ],
  sync: true,
  logLevel: "command",
  coloredLogs: true,
  deprecationWarnings: true,
  bail: 0,
  screenshotPath: "./errorShots/",
  baseUrl: "https://getlabor.com.br/",
  waitforTimeout: 9999999999,
  connectionRetryTimeout: 90000,
  connectionRetryCount: 3,
  services: ["selenium-standalone"],
  framework: "mocha",
  reporters: ["dot", "spec"],
  mochaOpts: {
    ui: "bdd",
    timeout: 9999999
  }
};
