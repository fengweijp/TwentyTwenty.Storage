#!/bin/bash
# dotnet restore
# for path in src/*/project.json; do
#     dirname="$(dirname "${path}")"
#     dotnet build ${dirname} -c Release
# done

for path in test/*/project.json; do
    dirname="$(dirname "${path}")"
    cd ${dirname}
    dotnet build -f netcoreapp1.0 -c Release
    dotnet test -f netcoreapp1.0  -c Release
    cd ../..
done