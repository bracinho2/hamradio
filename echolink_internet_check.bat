:: Script criado para automatizar a gestão de Estações
:: Echolink para Radioamadores Licenciados;
:: A automação deve ser salva em um arquivo .bat
@echo off

:: Faz o teste se há conexão de internet na máquina;
:: No caso de ausência de Internet a máquina é reiniciada;
Echo Internet de Check 

@echo off

:: Estamos apontando o HOST para o DNS da Google;
set host=8.8.8.8

ping %host%

ping 8.8.8.8 -n 4 >nul && goto good || goto bad

:good
echo Sucess
exit

:bad
echo Unsucess

:: Força o fechamento do Echolink na máquina;
taskkill -f -im echolink.exe /T

:: Força o fechamento do script de auto-conexão nativo do Echolink;
taskkill -f -im cscript.exe /T

:: Envia o comando para reiniciar o computador após 2 minutos;
shutdown -r -t 120 -c "Echolink será REINICIADO em 2 minutos!"

Exit

:: PY5TH
:: Sulina - Parana Brasil