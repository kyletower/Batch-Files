@ECHO OFF
ECHO Security Policy Reset to default
secedit /configure /cfg %windir%\inf\defltbase.inf /db defltbase.sdb /verbose

ECHO Group Policy Reset to Default
RD /S /Q "%WinDir%\System32\GroupPolicyUsers"
RD /S /Q "%WinDir%\System32\GroupPolicy"
gpupdate /force
