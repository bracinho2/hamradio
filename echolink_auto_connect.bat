:: Script criado para automatizar a gestão de Estações
:: Echolink para Radioamadores Licenciados;
:: A automação deve ser salva em um arquivo .bat

@echo off

:: Força o fechamento do Echolink na máquina;
taskkill -f -im echolink.exe /T

:: Força o fechamento do script de auto-conexão nativo do Echolink;
taskkill -f -im cscript.exe /T

::Abre Echolink
@echo       ***Inicializando Echolink e Autoconecta***

::Permanecer conectado a uma estacao com o Script Nativo do Echolink;
cscript StayConnected.vbs *PARANA*

:: PY5TH
:: Sulina - Parana Brasil