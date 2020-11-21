# Code Reviewer
[![ci](https://gitlab.com/sokkuri/Code-Reviewer/badges/master/pipeline.svg?style=flat)](https://gitlab.com/sokkuri/Code-Reviewer/-/commits/master)

A linter docker image with preconfigured rules and excludes.

## How to use
To use this as a step in **GitLab CI**, you can use this image like in [this configuration](https://gitlab.com/sokkuri/CI/-/blob/master/.gitlab/ci/linter.gitlab-ci.yml).

In other environments, you could use this command: `docker run --rm -e WORKSPACE=/lint -v /PATH_TO_FOLDER:/lint registry.gitlab.com/sokkuri/code-reviewer:latest`

## Build image locally
To build this image locally there is the `buildDockerImage.ps1` script in the `build` folder.

## Used Linters
| Linter                                                                               |
| ------------------------------------------------------------------------------------ |
| [Editorconfig Checker](https://github.com/editorconfig-checker/editorconfig-checker) |
| [Eslint](https://github.com/eslint/eslint)                                           |
