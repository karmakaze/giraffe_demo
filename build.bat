IF NOT EXIST paket.lock (
    START /WAIT .paket/paket.exe install
)
dotnet restore src/giraffe_demo
dotnet build src/giraffe_demo

dotnet restore tests/giraffe_demo.Tests
dotnet build tests/giraffe_demo.Tests
dotnet test tests/giraffe_demo.Tests
