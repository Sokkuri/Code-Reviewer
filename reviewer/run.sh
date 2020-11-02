#!/usr/bin/env bash

echo "Starting review ..."
echo "Workspace:" ${WORKSPACE}

node node_modules/editorconfig-checker/dist/index.js -config ./.ecrc ${WORKSPACE}
editorconfig_status=$?
echo "Exit:" $editorconfig_status

node node_modules/eslint/bin/eslint.js --ext .ts, .vue --no-eslintrc --no-error-on-unmatched-pattern -c ./.eslintrc.json ${WORKSPACE}
eslint_status=$?
echo "Exit:" $eslint_status

if [ $editorconfig_status != 0 ] || [ $eslint_status != 0 ]
then
    echo "Violations found! Exiting ..."
    exit 1
fi
