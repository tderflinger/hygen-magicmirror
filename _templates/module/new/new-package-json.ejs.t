---
to: ./modules/<%= name %>/package.json
skip_if: <%= !packageJson %>
---
{
  "name": "<%= name %>",
  "version": "1.0.0",
  "description": "",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "",
  "license": "MIT"
}