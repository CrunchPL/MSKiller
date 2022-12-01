@echo off
 chcp 65001>nul

   echo Wybierz, który program MS Office chcesz wyłączyć
   echo ================================================
   echo 1) Outlook
   echo 2) Excel
   echo 3) Word
   echo 4) Wyjdź z programu
   echo ================================================
   goto opSelect

   :opSelect
   set /p op=Wybierz opcje: 
   if "%op%"=="1" goto op1
   if "%op%"=="2" goto op2
   if "%op%"=="3" goto op3
   if "%op%"=="4" (
     echo Żegnaj!
     timeout 2 >nul
     goto exit
    )

   if not "%op%"=="1-4" (
     echo Podana została zła wartość, spróbuj ponownie
     timeout 2 >nul
     goto opSelect
    )

   :op1
   echo Wybrałeś Outlook!
   taskkill /im OUTLOOK.EXE /t /f
   timeout 3 >nul
   echo Gotowe! Możesz ponownie uruchomić Outlook
   timeout 5 >nul 
   goto exit

   :op2
   echo Wybrałeś Excel!
   taskkill /im EXCEL.EXE /t /f
   timeout 3 >nul
   echo Gotowe! Możesz ponownie uruchomić Excel
   timeout 5 >nul
   goto exit

   :op3
   echo Wybrałeś Word!
   taskkill /im WINWORD.EXE /t /f
   timeout 3 >nul
   echo Gotowe! Możesz ponownie uruchomić Word
   timeout 5 >nul
   goto exit

:exit
EXIT