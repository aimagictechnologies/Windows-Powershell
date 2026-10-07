Set WshShell = CreateObject("WScript.Shell")
WshShell.CurrentDirectory = "c:\Users\MSI-USER\Desktop\deepfake\Deep-Live-Cam"
WshShell.Run """c:\Users\MSI-USER\Desktop\deepfake\Deep-Live-Cam\venv\Scripts\pythonw.exe"" run.py --execution-provider cuda", 0, False
