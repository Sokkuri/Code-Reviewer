$dockerImageName = "registry.gitlab.com/sokkuri/code-reviewer:latest";

Set-Location (Join-Path $PSScriptRoot "../" -Resolve);

docker image rm $dockerImageName
docker build --pull -t $dockerImageName .
