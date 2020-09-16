#!/usr/bin/env bash

cp -f /reviewer/.editorconfig ${GITHUB_WORKSPACE}
cp -f /reviewer/.ecrc ${GITHUB_WORKSPACE}

./action/lib/linter.sh
