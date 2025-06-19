# Liberar execução do script
# Set-ExecutionPolicy Bypass -Scope Process

Import-Module ActiveDirectory

# Encontra o usuário cujo nome de login é exatamente "filipe.bermudes"
Get-ADUser -Filter 'SamAccountName -eq "filipe.bermudes"' -Properties DisplayName | Select-Object SamAccountName, DisplayName, Enabled