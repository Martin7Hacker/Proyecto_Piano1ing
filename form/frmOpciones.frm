VERSION 5.00
Begin VB.Form frmOpciones 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Opciones"
   ClientHeight    =   2265
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   2730
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2265
   ScaleWidth      =   2730
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00400040&
      BorderStyle     =   0  'None
      Height          =   135
      Left            =   0
      ScaleHeight     =   135
      ScaleWidth      =   10575
      TabIndex        =   8
      Top             =   0
      Width           =   10575
   End
   Begin Proyecto.ChameleonBtn volumen 
      Height          =   480
      Index           =   72
      Left            =   480
      TabIndex        =   0
      Top             =   600
      Width           =   435
      _ExtentX        =   767
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "+"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      COLTYPE         =   2
      FOCUSR          =   -1  'True
      BCOL            =   128
      BCOLO           =   255
      FCOL            =   16777215
      FCOLO           =   16777215
      MCOL            =   12632256
      MPTR            =   1
      MICON           =   "frmOpciones.frx":0000
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin Proyecto.ChameleonBtn volumen 
      Height          =   480
      Index           =   0
      Left            =   1800
      TabIndex        =   1
      Top             =   600
      Width           =   435
      _ExtentX        =   767
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "-"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   16.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      COLTYPE         =   2
      FOCUSR          =   -1  'True
      BCOL            =   16384
      BCOLO           =   65280
      FCOL            =   16777215
      FCOLO           =   16777215
      MCOL            =   12632256
      MPTR            =   1
      MICON           =   "frmOpciones.frx":001C
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin Proyecto.ChameleonBtn volumen 
      Height          =   480
      Index           =   1
      Left            =   480
      TabIndex        =   4
      Top             =   1560
      Width           =   435
      _ExtentX        =   767
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "+"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      COLTYPE         =   2
      FOCUSR          =   -1  'True
      BCOL            =   128
      BCOLO           =   255
      FCOL            =   16777215
      FCOLO           =   16777215
      MCOL            =   12632256
      MPTR            =   1
      MICON           =   "frmOpciones.frx":0038
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin Proyecto.ChameleonBtn volumen 
      Height          =   480
      Index           =   2
      Left            =   1800
      TabIndex        =   5
      Top             =   1560
      Width           =   435
      _ExtentX        =   767
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "-"
      ENAB            =   -1  'True
      BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   16.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      COLTYPE         =   2
      FOCUSR          =   -1  'True
      BCOL            =   16384
      BCOLO           =   65280
      FCOL            =   16777215
      FCOLO           =   16777215
      MCOL            =   12632256
      MPTR            =   1
      MICON           =   "frmOpciones.frx":0054
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "---"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   1200
      TabIndex        =   7
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "REC"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   1200
      TabIndex        =   6
      Top             =   1200
      Width           =   735
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "keyboard"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   960
      TabIndex        =   3
      Top             =   240
      Width           =   1455
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "---"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   1200
      TabIndex        =   2
      Top             =   720
      Width           =   615
   End
End
Attribute VB_Name = "frmOpciones"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'teclado y velocidad de grabado y reproducción de Virtual Martin Piano v1.0

Private Sub Form_Load()
 Me.Picture = frmPrograma.Picture
 Me.Icon = frmPrograma.Icon
 Label1.Caption = frmPrograma.sldKeyboard.Value
 Label4.Caption = frmPrograma.tmrRec.Interval
End Sub

Private Sub volumen_click(Index As Integer)
Select Case Index

 Case 72
 
 If frmPrograma.sldKeyboard.Value < 4 Then
  frmPrograma.sldKeyboard.Value = frmPrograma.sldKeyboard.Value + 1
  Label1.Caption = frmPrograma.sldKeyboard.Value
 End If
 
 Case 0
 
 If frmPrograma.sldKeyboard.Value > 0 Then
  frmPrograma.sldKeyboard.Value = frmPrograma.sldKeyboard.Value - 1
  Label1.Caption = frmPrograma.sldKeyboard.Value
 End If
 
 Case 1
 
 If frmPrograma.tmrRec.Interval < 7000 Then
  frmPrograma.tmrRec.Interval = frmPrograma.tmrRec.Interval + 1
  Label4.Caption = frmPrograma.tmrRec.Interval
 End If
 
 Case 2
 
 If frmPrograma.tmrRec.Interval > 0 Then
  frmPrograma.tmrRec.Interval = frmPrograma.tmrRec.Interval - 1
  Label4.Caption = frmPrograma.tmrRec.Interval
 End If
 
 End Select
 
End Sub
