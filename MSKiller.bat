@echo off

 :BEGIN
   echo Program Microsoft Outlook zaraz zostanie wylaczony
  timeout 5 >nul
   taskkill /im OUTLOOK.exe /t /f
   echo Gotowe! Mozesz ponownie uruchomic Outlook
  timeout 5 >nul
 :END

EXIT