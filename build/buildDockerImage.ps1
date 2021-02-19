$dockerImageName = "sokkuri/code-reviewer";

Set-Location (Join-Path $PSScriptRoot "../" -Resolve);

docker image rm $dockerImageName
docker build --pull -t $dockerImageName .
