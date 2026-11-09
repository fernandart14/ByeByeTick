@echo off
title Bye Bye Tick - Servidor Local
color 0A
echo ========================================================
echo         🐮 BYE BYE TICK - ALERTA GANADERA
echo          Iniciando Servidor Web Local (HTTP)
echo ========================================================
echo.
echo 1. Abriendo la aplicacion en tu navegador...
start http://localhost:8000

echo.
echo 2. Para probarla en tu CELULAR (conectado al mismo Wi-Fi):
echo    Abre el navegador de tu celular e ingresa la direccion:
python -c "import socket; s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM); s.connect(('8.8.8.8', 80)); print('   --> http://' + s.getsockname()[0] + ':8000'); s.close()"
echo.
echo ========================================================
echo Presiona Ctrl + C en esta ventana cuando desees detener el servidor.
echo ========================================================
echo.
python -m http.server 8000
pause
