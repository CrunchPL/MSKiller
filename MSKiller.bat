@echo off

   echo Wybierz, ktory program MS Office chcesz wylaczyc
   echo ================================================
   echo 1) Outlook
   echo 2) Excel
   echo 3) Word
   echo ================================================
   goto opSelect

   :opSelect
   set /p op=Wybierz opcje: 
   if "%op%"=="1" goto op1
   if "%op%"=="2" goto op2
   if "%op%"=="3" goto op3
   if not "%op%"=="1-3" goto opError

   :op1
   echo Wybrales Outlook!
   taskkill /im OUTLOOK.EXE /t /f
   timeout 3 >nul
   echo Gotowe! Mozesz ponownie uruchomic Outlook
   timeout 5 >nul 
   goto exit

   :op2
   echo Wybrales Excel!
   taskkill /im EXCEL.EXE /t /f
   timeout 3 >nul
   echo Gotowe! Mozesz ponownie uruchomic Excel
   timeout 5 >nul
   goto exit

   :op3
   echo Wybrales Word!
   taskkill /im WINWORD.EXE /t /f
   timeout 3 >nul
   echo Gotowe! Mozesz ponownie uruchomic Word
   timeout 5 >nul
   goto exit

   :opError
   echo Podana zostala zla zawartosc, sporboj ponownie
   timeout 2 >nul
   goto opSelect

:exit
EXIT