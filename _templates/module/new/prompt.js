module.exports = {
  prompt: ({ prompter }) => {
    return new Promise((resolve, reject) => {
      prompter
        .prompt([
          {
            type: "input",
            name: "name",
            message: "Module Name?",
          },
          {
            type: "confirm",
            name: "packageJson",
            message: "Need a package.json?",
          },
        ])
        .then(({ name, packageJson }) => {
          resolve({
            name,
            packageJson,
          });
        });
    });
  },
};