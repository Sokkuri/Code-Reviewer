# Code Reviewer
[![ci](https://github.com/Sokkuri/Code-Reviewer/workflows/CI/badge.svg)](https://github.com/Sokkuri/Code-Reviewer/commits/master)

Linter docker image

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

### GitLab CI
To use this as a step in **GitLab CI**, you can use this image like in [this configuration](https://gitlab.com/sokkuri/CI/-/blob/master/.gitlab/ci/linter.gitlab-ci.yml).

### Other
In other environments, you could use this command: `docker run --rm -e WORKSPACE=/lint -v /PATH_TO_FOLDER:/lint sokkuri/code-reviewer`

## Build image locally
To build this image locally there is the `buildDockerImage.ps1` script in the `build` folder.

## Used Linters
| Linter                                                                               |
| ------------------------------------------------------------------------------------ |
| [Editorconfig Checker](https://github.com/editorconfig-checker/editorconfig-checker) |
| [Eslint](https://github.com/eslint/eslint)                                           |
