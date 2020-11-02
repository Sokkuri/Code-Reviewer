#!/usr/bin/env bash

echo "Starting review ..."
echo "Workspace:" ${WORKSPACE}

node node_modules/editorconfig-checker/dist/index.js -config ./.ecrc ${WORKSPACE}
node node_modules/eslint/bin/eslint.js --ext .ts,.vue --no-eslintrc -c ./.eslintrc.json ${WORKSPACE}
