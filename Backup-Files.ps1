$files =
(
    "\\pc-kharper2\c$\Temp\Test",
    "\\pc-kharper2\c$\Temp\FIDAC Tools"
)

$backupDir = "\\nyprodfs01\profiles$\kharper\Backup"

if (!(Test-Path $backupDir))
{
    mkdir $backupDir
}

foreach ($file in $files)
{
    cp -Force -Recurse $file $backupDir
}
