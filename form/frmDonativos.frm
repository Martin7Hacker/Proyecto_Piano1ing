VERSION 5.00
Begin VB.Form frmDonativos 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Donate $"
   ClientHeight    =   3465
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   4050
   Icon            =   "frmDonativos.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3465
   ScaleWidth      =   4050
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00400040&
      BorderStyle     =   0  'None
      Height          =   135
      Left            =   0
      ScaleHeight     =   135
      ScaleWidth      =   10575
      TabIndex        =   7
      Top             =   0
      Width           =   10575
   End
   Begin Proyecto.ChameleonBtn cmdcolaborar 
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Top             =   2880
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   873
      BTYPE           =   3
      TX              =   "&Donate"
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
      BCOL            =   4194368
      BCOLO           =   12583104
      FCOL            =   16777215
      FCOLO           =   16777215
      MCOL            =   12632256
      MPTR            =   1
      MICON           =   "frmDonativos.frx":57E2
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin Proyecto.ChameleonBtn cmdAceptar 
      Height          =   495
      Left            =   2400
      TabIndex        =   5
      Top             =   2880
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   873
      BTYPE           =   3
      TX              =   "&Ok"
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
      BCOL            =   4194368
      BCOLO           =   12583104
      FCOL            =   16777215
      FCOLO           =   16777215
      MCOL            =   12632256
      MPTR            =   1
      MICON           =   "frmDonativos.frx":57FE
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin VB.PictureBox pdonar 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   1185
      Left            =   600
      MouseIcon       =   "frmDonativos.frx":581A
      Picture         =   "frmDonativos.frx":5B24
      ScaleHeight     =   1155
      ScaleWidth      =   2925
      TabIndex        =   3
      Top             =   970
      Width           =   2955
   End
   Begin VB.PictureBox ptargeta 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   225
      Left            =   960
      Picture         =   "frmDonativos.frx":10C42
      ScaleHeight     =   225
      ScaleWidth      =   2175
      TabIndex        =   0
      Top             =   2520
      Width           =   2175
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "For Projects and Dreams*"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   315
      Left            =   1080
      TabIndex        =   4
      Top             =   360
      Width           =   7125
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "with own*"
      ForeColor       =   &H00FF00FF&
      Height          =   195
      Left            =   720
      TabIndex        =   2
      Top             =   720
      Width           =   2745
   End
   Begin VB.Label lblcard 
      BackStyle       =   0  'Transparent
      Caption         =   "Credit card*"
      ForeColor       =   &H00FF00FF&
      Height          =   195
      Left            =   960
      TabIndex        =   1
      Top             =   2280
      Width           =   2985
   End
End
Attribute VB_Name = "frmDonativos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'***************************************************************************
'*                                                                         *
'*                                                                         *
'* Para realizar donacíones para el proyecto Virtual Martin Piano v1.0     *
'*                                                                         *
'*                                                                         *
'***************************************************************************
Private Sub cmdAceptar_Click()
 Unload Me
End Sub

Private Sub cmdcolaborar_Click()
 ptargeta_Click
End Sub

Private Sub Form_Load()
 Me.Picture = frmPrograma.Picture
End Sub

Private Sub Form_Unload(Cancel As Integer)
frmPrograma.tecladoActivo
End Sub

Private Sub Label1_Click()
 ptargeta_Click
End Sub

Private Sub lblcard_Click()
 ptargeta_Click
End Sub

Private Sub pdonar_Click()
 ptargeta_Click
End Sub

Private Sub ptargeta_Click()
 Dim x As String
 x = ShellExecute(Me.hwnd, "Open" _
 , "http://martinsoft0.blogspot.com/p/donar.html", _
 &O0, &O0, 0)
 Unload Me
End Sub


