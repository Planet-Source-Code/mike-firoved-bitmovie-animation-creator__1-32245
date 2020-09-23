VERSION 5.00
Begin VB.Form frmLoad 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Load File"
   ClientHeight    =   4755
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   2745
   Icon            =   "frmLoad.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4755
   ScaleWidth      =   2745
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   375
      Left            =   1380
      TabIndex        =   4
      Top             =   4260
      Width           =   1200
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   4260
      Width           =   1155
   End
   Begin VB.FileListBox filLoad 
      Height          =   1455
      Left            =   120
      Pattern         =   "*.bmv"
      TabIndex        =   2
      Top             =   2700
      Width           =   2475
   End
   Begin VB.DirListBox dirLoad 
      Height          =   2115
      Left            =   120
      TabIndex        =   1
      Top             =   540
      Width           =   2475
   End
   Begin VB.DriveListBox drvLoad 
      Height          =   315
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2475
   End
End
Attribute VB_Name = "frmLoad"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cmdCancel_Click()
    Me.Hide
End Sub

Private Sub cmdOK_Click()

    On Error Resume Next
    'load
    If isSaved = False Then
        If MsgBox("Are you sure you want to discard any unsaved data and load this file?", vbExclamation + vbDefaultButton2 + vbYesNoCancel, "Warning") <> vbYes Then Exit Sub
    End If
    Open filLoad.Path & "\" & filLoad.FileName For Input As #3
        frmdisplay.txtMovie.Text = Input(LOF(3), 3)
    Close #3
    tlp = 0: pgn = 0
    
    mvt = frmdisplay.txtMovie.Text
    vtm = Split(mvt, vbCrLf)
    For xa = 0 To UBound(vtm) - 1
        sdt = vtm(xa)
        If Not sdt = "" Then
            dts = Split(sdt, "|")
            pgn = CInt(dts(0))
            If pgn > tlp Then
                tlp = pgn
            End If
        End If
    Next

    totPage = tlp + 1
    curPage = 1
    frmdisplay.wipeCurPage
    frmdisplay.loadCurPage
    frmdisplay.txtPage.Text = "PG " & CStr(curPage) & " of " & CStr(totPage)
    isSaved = True
    
    Me.Hide
End Sub





Private Sub dirLoad_Click()
    filLoad.Path = dirLoad.Path
    
End Sub


Private Sub drvLoad_Click()
    dirLoad.Path = drvLoad.Drive
    
End Sub



Private Sub filLoad_DblClick()
    cmdOK_Click
End Sub







Private Sub Form_Load()
    drvLoad.Drive = App.Path
    dirLoad.Path = App.Path
    filLoad.Path = App.Path
End Sub

'Just hide the form when you click the X button
Private Sub Form_Terminate()
    Me.Hide
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Cancel = 2
    Me.Hide
End Sub
Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    Cancel = 2
    Me.Hide
End Sub

