' Deep-Live-Cam -- Silent Launcher
' Runs the app without any CMD or PowerShell window
Dim shell, fso
Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

Dim root
root = fso.GetParentFolderName(WScript.ScriptFullName)

Dim py
py = root & "\venv\Scripts\pythonw.exe"

' Check if pythonw exists
If Not fso.FileExists(py) Then
    MsgBox "Virtual environment not found" & vbCrLf & "Please run INSTALL.bat first.", 16, "Deep-Live-Cam"
    WScript.Quit 1
End If

Dim args
args = "--execution-provider cuda"

Dim cmd
cmd = """" & py & """ """ & root & "\run.py"" " & args

' 1 = normal window, False = don't wait
shell.Run cmd, 1, False

Set shell = Nothing
Set fso = Nothing
