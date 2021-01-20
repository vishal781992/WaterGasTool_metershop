; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=SimAutomation
AppVersion=0.0.2
DefaultDirName={pf}\WaterGasTool
; Since no icons will be created in "{group}", we don't need the wizard
; to ask for a Start Menu folder name:
DisableProgramGroupPage=yes
UninstallDisplayIcon={app}\WaterGasTool.exe
AppPublisher=Vision Metering
;OutputDir=userdocs:Inno Setup Examples Output

OutputBaseFilename=WaterGasTool 0.0.2 Beta Setup

[Files]
Source: "C:\Project\WaterGasTool\bin\Release\WaterGasTool.exe"; DestDir: "{app}"

[Icons]
Name: "{commonprograms}\WaterGasTool"; Filename: "{app}\WaterGasTool.exe"
Name: "{commondesktop}\WaterGasTool"; Filename: "{app}\WaterGasTool.exe"

[Run]
Filename: "{tmp}\dotNetFx40_Full_x86_x64.exe"; Check: FrameworkIsNotInstalled

[code]
function FrameworkIsNotInstalled: Boolean;
begin
  Result := not RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\.NETFramework\policy\v4.0');
end;
