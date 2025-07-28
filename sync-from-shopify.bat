@echo off
echo ====================================
echo  SINCRONIZZAZIONE DA SHOPIFY
echo ====================================
echo.
echo Scaricamento modifiche da Shopify...
shopify theme pull
echo.
echo File modificati:
git status --short
echo.
set /p conferma="Vuoi salvare su GitHub? (s/n): "
if /i "%conferma%" neq "s" exit
echo.
git add .
git commit -m "Sync da Shopify Theme Editor - %date% %time%"
git push
echo.
echo ✓ Sincronizzazione completata!
echo.
echo IMPORTANTE: Ricorda di refreshare il repository in Claude!
echo.
pause