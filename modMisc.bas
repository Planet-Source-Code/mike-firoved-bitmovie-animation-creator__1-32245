Attribute VB_Name = "modMisc"
Public curPage As Long  'the current page
Public totPage As Long  'the total number of pages
Public curColor As Long 'the current mouse color
Public isSaved As Boolean
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)



'START compile template constants
Public Const strVbp As String = "Type=Exe" & vbCrLf & "Form=FRMDISPLAY.FRM" & vbCrLf & "Module=modMain; modMain.bas" & vbCrLf & "IconForm=""frmdisplay""" & vbCrLf & "Startup=""frmdisplay""" & vbCrLf & "ExeName32=""compile.exe""" & _
vbCrLf & "Command32=""""" & vbCrLf & "Name=""compile""" & vbCrLf & "HelpContextID=""0""" & vbCrLf & "CompatibleMode=""0""" & vbCrLf & "MajorVer=1" & vbCrLf & "MinorVer=0" & vbCrLf & "RevisionVer=0" & vbCrLf & "AutoIncrementVer=0" & vbCrLf & "ServerSupportFiles=0" & vbCrLf & "VersionCompanyName=""Netstar""" & vbCrLf & "CompilationType=0" & vbCrLf & "OptimizationType=0" & vbCrLf & "FavorPentiumPro(tm)=0" & vbCrLf & "CodeViewDebugInfo=0" & vbCrLf & "NoAliasing=0" & vbCrLf & "BoundsCheck=0" & vbCrLf & "OverflowCheck=0" & vbCrLf & "FlPointCheck=0" & vbCrLf & "FDIVCheck=0" & vbCrLf & "UnroundedFP=0" & vbCrLf & "StartMode=0" & vbCrLf & "Unattended=0" & vbCrLf & "Retained=0" & vbCrLf & "ThreadPerObject=0" & vbCrLf & "MaxNumberOfThreads=1" & vbCrLf & "" & vbCrLf & "[MS Transaction Server]" & vbCrLf & "AutoRefresh=1"

Public Const strVbw As String = "frmdisplay = 44, 44, 564, 409, , 22, 22, 542, 387, C" & vbCrLf & "modMain = 66, 66, 586, 430, "

Public Const strBas As String = "Attribute VB_Name = ""modMain""" & vbCrLf & "Public curPage As Long" & vbCrLf & "Public totPage As Long " & vbCrLf & "Public curColor As Long" & vbCrLf & "Public isSaved As Boolean" & vbCrLf & "Public Declare Sub Sleep Lib ""kernel32"" (ByVal dwMilliseconds As Long)"

Public Const frmHdrA As String = "VERSION 5.00" & vbCrLf & "Begin VB.Form frmdisplay " & vbCrLf & "   BorderStyle     =   3  'Fixed Dialog" & vbCrLf & "   Caption         =   ""Bitmovie""" & vbCrLf & "   ClientHeight    =   2595" & vbCrLf & "   ClientLeft      =   45" & vbCrLf & "   ClientTop       =   330" & vbCrLf & "   ClientWidth     =   2325" & vbCrLf & "   FillColor       =   &H00FFFFFF&" & vbCrLf & "   LinkTopic       =   ""Form1""" & vbCrLf & "   MaxButton       =   0   'False" & vbCrLf & "   MinButton       =   0   'False" & vbCrLf & "   ScaleHeight     =   2595" & vbCrLf & "   ScaleWidth      =   2325" & vbCrLf & "   StartUpPosition =   2  'CenterScreen" & vbCrLf & "   Begin VB.TextBox txtTot " & vbCrLf & "      Height          =   315" & vbCrLf & "      Left            =   4680" & vbCrLf & "      MultiLine       =   -1  'True" _
& vbCrLf & "      TabIndex        =   2" & vbCrLf & "      Text            =   ""<TOT>""" & vbCrLf & "      Top             =   540" & vbCrLf & "      Width           =   915" & vbCrLf & "   End" & vbCrLf & "   Begin VB.TextBox txtMovie " & vbCrLf & "      Height          =   1935" & vbCrLf & "      Left            =   2640" & vbCrLf & "      MultiLine       =   -1  'True" & vbCrLf & "      TabIndex        =   1" & vbCrLf

Public Const frmHdrB As String = "      Text            =   ""<MOV>""" & vbCrLf & "      Top             =   180" & vbCrLf & "      Width           =   1755" & vbCrLf & "   End"
'END


Public Declare Function RegOpenKey Lib "advapi32.dll" Alias "RegOpenKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
Public Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
Public Declare Function RegQueryValueEx Lib "advapi32.dll" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long

Public Const HKEY_CLASSES_ROOT = &H80000000
Public Const HKEY_CURRENT_USER = &H80000001
Public Const HKEY_LOCAL_MACHINE = &H80000002
Public Const HKEY_USERS = &H80000003
Public Const HKEY_CURRENT_CONFIG = &H80000005
Public Const HKEY_DYN_DATA = &H80000006
