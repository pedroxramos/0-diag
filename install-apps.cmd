@echo off
REM Run as administrator: right-click this file, Run as administrator
echo === TeamViewer (full version, not QuickSupport) ===
winget install --id TeamViewer.TeamViewer -e --source winget --silent --accept-package-agreements --accept-source-agreements

echo === Google Chrome ===
winget install --id Google.Chrome -e --source winget --silent --accept-package-agreements --accept-source-agreements

echo === iCloud for Windows (Microsoft Store package) ===
winget install --id 9PKTQ5699M62 -e --source msstore --accept-package-agreements --accept-source-agreements
if errorlevel 1 (
  echo Store install failed. Opening the Store page instead.
  start ms-windows-store://pdp/?productid=9PKTQ5699M62
)

echo.
echo === Done. Installed versions: ===
winget list --id TeamViewer.TeamViewer
winget list --id Google.Chrome
winget list iCloud
pause
