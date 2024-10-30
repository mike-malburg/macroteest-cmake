$buildDir = "builddir"
Write-Host $buildDir
if(Test-Path $buildDir) {
   Write-Host "Removing: $buildDir..."
   Remove-Item -Recurse -Force $buildDir
}
$dir = (New-Item $buildDir -ItemType Directory).FullName
Write-Host "Building to: $dir"
Push-Location $dir
cmake ..
cmake --build .
Pop-Location
