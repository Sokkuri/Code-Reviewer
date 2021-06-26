# Code Reviewer

This action runs the in the project installed ESLint with the project specific config to check if the rules have been respected.

## How to use
### Github Action
```yml
jobs:
  example:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@vx.x.x
      - uses: sokkuri/code-reviewer@vx.x.x
```
