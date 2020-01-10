#!/bin/sh
if [ ! -e "paket.lock" ]
then
    exec mono .paket/paket.exe install
fi
dotnet restore src/giraffe_demo
dotnet build src/giraffe_demo

dotnet restore tests/giraffe_demo.Tests
dotnet build tests/giraffe_demo.Tests
dotnet test tests/giraffe_demo.Tests
