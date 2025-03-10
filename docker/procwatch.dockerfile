FROM mcr.microsoft.com/windows:20H2
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

COPY  
RUN reg add "HKCU\SOFTWARE\Sysinternals\Process Monitor" /v EulaAccepted /t REG_DWORD /d 1
ADD https://live.sysinternals.com/procmon.exe procmon.exe
ADD https://github.com/hakaioffsec/coffee/releases/download/1.0/coffee-gnu.exe coffee-gnu.exe
#RUN procmon.exe /AcceptEula /Quiet /Minimized /BackingFile c:\temp\log.pml


