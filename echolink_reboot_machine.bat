:: Script criado para automatizar a gestão de Estações
:: Echolink para Radioamadores Licenciados;
:: A automação deve ser salva em um arquivo .bat
@echo off

:: Força o fechamento do Echolink na máquina;
taskkill -f -im echolink.exe /T

:: Força o fechamento do script de auto-conexão nativo do Echolink;
taskkill -f -im cscript.exe /T

:: Envia o comando para reiniciar o computador após 2 minutos;
shutdown -r -t 120 -c "Echolink será REINICIADO em 2 minutos!"

:: PY5TH
:: Sulina - Parana Brasil