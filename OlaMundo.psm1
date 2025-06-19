#criando meu primeiro modulo
function Show-OlaMundo {
    Write-Host "Olá, Mundo! Seu primeiro módulo foi carregado com sucesso!" -ForegroundColor Yellow
}

Export-ModuleMember -Function Show-OlaMundo
