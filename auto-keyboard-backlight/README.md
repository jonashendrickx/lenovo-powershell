# auto-keyboard-backlight.ps1
Enables or disables the keyboard backlight

## Requirements
- [Lenovo System Interface Foundation](https://pcsupport.lenovo.com/es/es/downloads/ds105970-lenovo-system-interface-foundation-for-windows-10-32-bit-64-bit-thinkpad-thinkcentre-ideapad-ideacentre-thinkstation)

## Usage:
- Run script with Powershell 32-bit (x86) located 'C:\Windows\syswow64\WindowsPowerShell\v1.0\powershell.exe'

## Installation
If you want to schedule the script, we'll need to do this with task scheduler. This will cover:
- Boot
- Sleep & wakeup
- Hibernation & wakeup

To schedule with Task Scheduler:
1. Click 'Create Task'.
2. Choose 'Run whether user is logged in or not'. (Make use sure user that executes script has permissions to run on this machine.)
3. Triggers 'At startup', 'On an event'. Choose 'On an event' for sleep and hibernation compatibility.
4. Add an action with 'Program/script' location set to 'C:\Windows\syswow64\WindowsPowerShell\v1.0\powershell.exe' and parameters '-file "path\to\script\auto-keyboard-backlight.ps1"'