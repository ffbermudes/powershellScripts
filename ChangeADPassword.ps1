Import-Module ActiveDirectory

$userName = "filipe.bermudes"

$novaSenha = Read-Host -Prompt "Digite a NOVA senha para o usu�rio '$userName'" -AsSecureString

if ($novaSenha.Length -eq 0) {
    Write-Host "Nenhuma senha foi digitada. Opera��o cancelada." -ForegroundColor Red
    return
}

try {
    Set-ADAccountPassword -Identity $userName -NewPassword $novaSenha -ErrorAction Stop

    Set-ADUser -Identity $userName -ChangePasswordAtLogon $true

    Write-Host "Senha para o usu�rio '$userName' foi alterada com sucesso." -ForegroundColor Green
    Write-Host "O usu�rio precisar� alterar a senha no pr�ximo login."
}
catch {
    Write-Host "Ocorreu um erro ao tentar alterar a senha: $($_.Exception.Message)" -ForegroundColor Red
}