@echo off
:: Navigate to the repository folder
cd /d "I:\checker-daily"

:: Get the current date
for /f "tokens=1-3 delims=/ " %%a in ("%date%") do set date=%%c-%%b-%%a

:: Append a new line followed by the date to README.md
(echo. & echo *  %date%) >> README.md

:: Git commands to add, commit, and push the changes
git add README.md
git commit -m "Daily update: %date%"
git push origin main