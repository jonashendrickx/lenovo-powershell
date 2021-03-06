# Settings
[string]$path = 'C:\ProgramData\Lenovo\ImController\Plugins\ThinkKeyboardPlugin\x86\';
[int]$level = 2; # Backlight level: 0 - Off, 1 - Dim, 2 - On

# Don't modify below
[string]$core = $path + 'Keyboard_Core.dll';
[string]$contract = $path + 'Contract_Keyboard.dll';

Add-Type -Path $core;
Add-Type -Path $contract;

[Keyboard_Core.KeyboardControl]$control =  New-Object -TypeName  'Keyboard_Core.KeyboardControl';

$control.SetKeyboardBackLightStatus($level, $null);