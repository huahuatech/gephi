; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{51722911-C391-4118-97BF-B50100D2AB15}
AppName=Gephi
AppVerName=${gephi.menu.app.name}
AppPublisher=Gephi
AppPublisherURL=http://gephi.org
AppSupportURL=http://gephi.org
AppUpdatesURL=http://gephi.org
DefaultDirName={pf}\Gephi-${project.version}
DefaultGroupName=Gephi
LicenseFile=COPYING.txt
OutputDir=.
OutputBaseFilename=${project.artifactId}-${project.version}-${gephi.bundle.arch}.setup
SetupIconFile=gephi.ico
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes
PrivilegesRequired=admin
PrivilegesRequiredOverridesAllowed=dialog
UsePreviousAppDir=false
UsePreviousGroup=false
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; Flags: checkedonce
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; Flags: checkedonce
Name: "associategephi"; Description: "&Associate .gephi files"; Flags: checkedonce
Name: "associategexf"; Description: "&Associate .gexf files"; Flags: checkedonce
Name: "associategdf"; Description: "&Associate .gdf files"; Flags: unchecked
Name: "associategraphml"; Description: "&Associate .graphml files"; Flags: unchecked
Name: "associatenet"; Description: "&Associate .net files"; Flags: unchecked
Name: "cleanuserdir"; Description: "&Clean previous user preferences"; Flags: checkedonce

[Dirs]
Name: "{app}\etc"; Permissions: users-modify
Name: "{app}\extra"; Permissions: users-modify
Name: "{app}\gephi"; Permissions: users-modify
Name: "{app}\platform"; Permissions: users-modify

[Files]
Source: "gephi\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Gephi"; Filename: "{app}\bin\gephi.exe"; AppUserModelID: "Gephi"; Check: not Is64BitInstallMode
Name: "{userdesktop}\Gephi"; Filename: "{app}\bin\gephi.exe"; Tasks: desktopicon; AppUserModelID: "Gephi"; Check: not Is64BitInstallMode
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Gephi"; Filename: "{app}\bin\gephi.exe"; Tasks: quicklaunchicon; AppUserModelID: "Gephi"; Check: not Is64BitInstallMode

Name: "{group}\Gephi"; Filename: "{app}\bin\gephi64.exe"; AppUserModelID: "Gephi"; Check: Is64BitInstallMode
Name: "{userdesktop}\Gephi"; Filename: "{app}\bin\gephi64.exe"; Tasks: desktopicon; AppUserModelID: "Gephi"; Check: Is64BitInstallMode
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Gephi"; Filename: "{app}\bin\gephi64.exe"; Tasks: quicklaunchicon; AppUserModelID: "Gephi"; Check: Is64BitInstallMode

Name: "{group}\Startup settings"; Filename: "{app}\etc\gephi.conf"

[Run]
Filename: "{app}\bin\gephi.exe"; Description: "{cm:LaunchProgram,Gephi}"; Flags: nowait postinstall skipifsilent; Check: not Is64BitInstallMode
Filename: "{app}\bin\gephi64.exe"; Description: "{cm:LaunchProgram,Gephi}"; Flags: nowait postinstall skipifsilent; Check: Is64BitInstallMode

[Registry]
Root: HKA; Subkey: "Software\Classes\.gephi\OpenWithProgids"; ValueType: string; ValueName: "GephiProject"; ValueData: ""; Flags: uninsdeletevalue; Tasks: associategephi
Root: HKA; Subkey: "Software\Classes\GephiProject"; ValueType: string; ValueName: ""; ValueData: "Gephi Project File"; Flags: uninsdeletekey; Tasks: associategephi
Root: HKA; Subkey: "Software\Classes\GephiProject\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\bin\GEPHI.EXE,1"; Tasks: associategephi
Root: HKA; Subkey: "Software\Classes\GephiProject\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\GEPHI.EXE"" ""%1"""; Tasks: associategephi; Check: not Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\GephiProject\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\GEPHI64.EXE"" ""%1"""; Tasks: associategephi; Check: Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\Applications\gephi64.exe\SupportedTypes"; ValueType: string; ValueName: ".gephi"; ValueData: ""; Tasks: associategephi; Check: Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\Applications\gephi.exe\SupportedTypes"; ValueType: string; ValueName: ".gephi"; ValueData: ""; Tasks: associategephi; Check: not Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\.gexf\OpenWithProgids"; ValueType: string; ValueName: "GexfGraphFile"; ValueData: ""; Flags: uninsdeletevalue; Tasks: associategexf
Root: HKA; Subkey: "Software\Classes\GexfGraphFile"; ValueType: string; ValueName: ""; ValueData: "GEXF Graph File"; Flags: uninsdeletekey; Tasks: associategexf
Root: HKA; Subkey: "Software\Classes\GexfGraphFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\bin\GEPHI.EXE,1"; Tasks: associategexf
Root: HKA; Subkey: "Software\Classes\GexfGraphFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\GEPHI.EXE"" ""%1"""; Tasks: associategexf; Check: not Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\GexfGraphFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\GEPHI64.EXE"" ""%1"""; Tasks: associategexf; Check: Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\Applications\gephi64.exe\SupportedTypes"; ValueType: string; ValueName: ".gexf"; ValueData: ""; Tasks: associategexf; Check: Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\Applications\gephi.exe\SupportedTypes"; ValueType: string; ValueName: ".gexf"; ValueData: ""; Tasks: associategexf; Check: not Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\.gdf\OpenWithProgids"; ValueType: string; ValueName: "GdfGraphFile"; ValueData: ""; Flags: uninsdeletevalue; Tasks: associategdf
Root: HKA; Subkey: "Software\Classes\GdfGraphFile"; ValueType: string; ValueName: ""; ValueData: "GDF Graph File"; Flags: uninsdeletekey; Tasks: associategdf
Root: HKA; Subkey: "Software\Classes\GdfGraphFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\bin\GEPHI.EXE,1"; Tasks: associategdf
Root: HKA; Subkey: "Software\Classes\GdfGraphFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\GEPHI.EXE"" ""%1"""; Tasks: associategdf; Check: not Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\GdfGraphFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\GEPHI64.EXE"" ""%1"""; Tasks: associategdf; Check: Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\Applications\gephi64.exe\SupportedTypes"; ValueType: string; ValueName: ".gdf"; ValueData: ""; Tasks: associategdf; Check: Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\Applications\gephi.exe\SupportedTypes"; ValueType: string; ValueName: ".gdf"; ValueData: ""; Tasks: associategdf; Check: not Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\.graphml\OpenWithProgids"; ValueType: string; ValueName: "GraphmlGraphFile"; ValueData: ""; Flags: uninsdeletevalue; Tasks: associategraphml
Root: HKA; Subkey: "Software\Classes\GraphmlGraphFile"; ValueType: string; ValueName: ""; ValueData: "GraphML Graph File"; Flags: uninsdeletekey; Tasks: associategraphml
Root: HKA; Subkey: "Software\Classes\GraphmlGraphFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\bin\GEPHI.EXE,1"; Tasks: associategraphml
Root: HKA; Subkey: "Software\Classes\GraphmlGraphFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\GEPHI.EXE"" ""%1"""; Tasks: associategraphml; Check: not Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\GraphmlGraphFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\GEPHI64.EXE"" ""%1"""; Tasks: associategraphml; Check: Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\Applications\gephi64.exe\SupportedTypes"; ValueType: string; ValueName: ".graphml"; ValueData: ""; Tasks: associategraphml; Check: Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\Applications\gephi.exe\SupportedTypes"; ValueType: string; ValueName: ".graphml"; ValueData: ""; Tasks: associategraphml; Check: not Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\.net\OpenWithProgids"; ValueType: string; ValueName: "PajekGraphFile"; ValueData: ""; Flags: uninsdeletevalue; Tasks: associatenet
Root: HKA; Subkey: "Software\Classes\PajekGraphFile"; ValueType: string; ValueName: ""; ValueData: "Pajek Graph File"; Flags: uninsdeletekey; Tasks: associatenet
Root: HKA; Subkey: "Software\Classes\PajekGraphFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\bin\GEPHI.EXE,1"; Tasks: associatenet
Root: HKA; Subkey: "Software\Classes\PajekGraphFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\GEPHI.EXE"" ""%1"""; Tasks: associatenet; Check: not Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\PajekGraphFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\bin\GEPHI64.EXE"" ""%1"""; Tasks: associatenet; Check: Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\Applications\gephi64.exe\SupportedTypes"; ValueType: string; ValueName: ".net"; ValueData: ""; Tasks: associatenet; Check: Is64BitInstallMode
Root: HKA; Subkey: "Software\Classes\Applications\gephi.exe\SupportedTypes"; ValueType: string; ValueName: ".net"; ValueData: ""; Tasks: associatenet; Check: not Is64BitInstallMode


[InstallDelete]
Type: filesandordirs; Name: "{userappdata}\gephi\${gephi.minor.version}\config\Modules"; Tasks: cleanuserdir
Type: filesandordirs; Name: "{userappdata}\gephi\${gephi.minor.version}\config\Preferences"; Tasks: cleanuserdir
Type: filesandordirs; Name: "{userappdata}\gephi\${gephi.minor.version}\config\Windows2Local"
Type: filesandordirs; Name: "{userappdata}\gephi\${gephi.minor.version}\config\Windows2Local-datalab"
Type: filesandordirs; Name: "{userappdata}\gephi\${gephi.minor.version}\config\Windows2Local-overview"
Type: filesandordirs; Name: "{userappdata}\gephi\${gephi.minor.version}\config\Windows2Local-preview"
Type: filesandordirs; Name: "{userappdata}\gephi\${gephi.minor.version}\config\Preferences.properties"; Tasks: cleanuserdir
Type: filesandordirs; Name: "{userappdata}\gephi\${gephi.minor.version}\modules"; Tasks: cleanuserdir
Type: filesandordirs; Name: "{userappdata}\gephi\${gephi.minor.version}\update_tracking"; Tasks: cleanuserdir
Type: filesandordirs; Name: "{userappdata}\gephi\${gephi.minor.version}\var"
Type: filesandordirs; Name: "{userappdata}\gephi\${gephi.minor.version}\lock"
Type: filesandordirs; Name: "{userappdata}\gephi\${gephi.minor.version}\update"
Type: filesandordirs; Name: "{localappdata}\gephi\Cache\${gephi.minor.version}"
