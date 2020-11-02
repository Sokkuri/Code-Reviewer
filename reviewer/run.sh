#!/usr/bin/env bash

echo "Starting review ..."
echo "Workspace:" ${WORKSPACE}

node node_modules/editorconfig-checker/dist/index.js -config ./.ecrc ${WORKSPACE}
echo "Exit: " $?

node node_modules/eslint/bin/eslint.js --ext .ts, .vue --no-eslintrc --no-error-on-unmatched-pattern -c ./.eslintrc.json ${WORKSPACE}
echo "Exit: " $?
