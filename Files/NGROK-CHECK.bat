@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" >nul
del /f "C:\Users\Public\Desktop\R 4.2.1.lnk" >nul
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" >nul
echo All done! Connect your VM using RDP. When RDP expired and VM shutdown, Re-run jobs to get a new RDP.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't get NGROK tunnel, be sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret. Maybe your previous VM still running: https://dashboard.ngrok.com/status/tunnels " 
echo User: runneradmin
sc start audiosrv >nul
sc config Audiosrv start=auto >nul
ping -n 10 127.0.0.1 >nul
