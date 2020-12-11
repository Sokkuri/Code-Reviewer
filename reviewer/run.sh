#!/usr/bin/env bash

if [ -z "${WORKSPACE}" ]
then
    echo "Workspace variable is not set! Exiting ..."
    exit 1
fi

echo "Starting review ..."
echo "Workspace:" ${WORKSPACE}

# EditorConfig
node node_modules/editorconfig-checker/dist/index.js -config ./.ecrc ${WORKSPACE}
editorconfig_status=$?
echo "Exit:" $editorconfig_status

# ESLint
if [ -f ${WORKSPACE}/package.json ]
then
    (cd ${WORKSPACE}; npm install --silent)
fi

node node_modules/eslint/bin/eslint.js --ext .ts, .vue --no-eslintrc --no-error-on-unmatched-pattern -c ${WORKSPACE}/.eslintrc.* ${WORKSPACE}
eslint_status=$?
echo "Exit:" $eslint_status

# Summary
if [ $editorconfig_status != 0 ] || [ $eslint_status != 0 ]
then
    echo "Violations found! Exiting ..."
    exit 1
fi
