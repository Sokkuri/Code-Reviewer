# Code Reviewer

A customized Super-Linter docker image with included rules and unused linters disabled.

## How to use
To use this as a step in **GitLab CI**, you could use the config in: `.gitlab/ci/linter.gitlab-ci.yml`.

In other environments, you could use this command: `docker run -e GITHUB_WORKSPACE=/tmp/lint -v /PATH_TO_FOLDER:/tmp/lint registry.gitlab.com/sokkuri/code-reviewer:latest`

## Build image locally
To build this image locally there is the `buildDockerImage.ps1` script in the `build` folder.
