VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "mscomctl.OCX"
Begin VB.Form frmPrograma 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Virtual Martin Piano v1.0"
   ClientHeight    =   6720
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10335
   Icon            =   "frmPrograma.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Picture         =   "frmPrograma.frx":0CCA
   ScaleHeight     =   6720
   ScaleWidth      =   10335
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   4200
      Top             =   0
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   1
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmPrograma.frx":186CD0
            Key             =   "EFFECTS"
         EndProperty
      EndProperty
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   3720
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Timer Timer2 
      Interval        =   7
      Left            =   3360
      Top             =   0
   End
   Begin VB.Timer tmrPlayBack 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   2280
      Top             =   0
   End
   Begin VB.Timer tmrRec 
      Enabled         =   0   'False
      Interval        =   77
      Left            =   2640
      Top             =   0
   End
   Begin VB.PictureBox Picture3 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Height          =   495
      Left            =   120
      Picture         =   "frmPrograma.frx":18C4C2
      ScaleHeight     =   495
      ScaleWidth      =   1935
      TabIndex        =   107
      Top             =   2040
      Width           =   1935
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Act."
         ForeColor       =   &H00FFC0FF&
         Height          =   195
         Left            =   1560
         TabIndex        =   112
         Top             =   30
         Width           =   285
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "00:00:00"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   600
         TabIndex        =   108
         Top             =   170
         Width           =   735
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H000000FF&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H000000FF&
         Height          =   135
         Left            =   120
         Shape           =   2  'Oval
         Top             =   177
         Width           =   135
      End
   End
   Begin VB.Timer recTime 
      Enabled         =   0   'False
      Interval        =   170
      Left            =   3000
      Top             =   0
   End
   Begin VB.PictureBox picPared 
      BackColor       =   &H00400040&
      BorderStyle     =   0  'None
      Height          =   135
      Left            =   0
      ScaleHeight     =   135
      ScaleWidth      =   10575
      TabIndex        =   102
      Top             =   0
      Width           =   10575
   End
   Begin VB.PictureBox Picture2 
      BorderStyle     =   0  'None
      Height          =   2895
      Left            =   -120
      Picture         =   "frmPrograma.frx":2537A4
      ScaleHeight     =   2895
      ScaleWidth      =   10455
      TabIndex        =   20
      Top             =   3840
      Width           =   10455
      Begin Proyecto.ChameleonBtn volumen 
         Height          =   480
         Index           =   5
         Left            =   8760
         TabIndex        =   111
         Top             =   2230
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   847
         BTYPE           =   3
         TX              =   "&Actualizar  &versión"
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
         MICON           =   "frmPrograma.frx":31AA86
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin VB.Timer Test2 
         Enabled         =   0   'False
         Interval        =   50
         Left            =   8880
         Top             =   2280
      End
      Begin VB.Timer Test1 
         Enabled         =   0   'False
         Interval        =   50
         Left            =   9360
         Top             =   2280
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   70
         Left            =   9970
         TabIndex        =   21
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AAA2
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   68
         Left            =   9730
         TabIndex        =   22
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AABE
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   66
         Left            =   9500
         TabIndex        =   23
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AADA
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   63
         Left            =   9030
         TabIndex        =   24
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AAF6
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   61
         Left            =   8790
         TabIndex        =   25
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AB12
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   58
         Left            =   8310
         TabIndex        =   26
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AB2E
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   56
         Left            =   8070
         TabIndex        =   27
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AB4A
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   54
         Left            =   7800
         TabIndex        =   28
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AB66
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   51
         Left            =   7350
         TabIndex        =   29
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AB82
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   49
         Left            =   7090
         TabIndex        =   30
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AB9E
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   46
         Left            =   6630
         TabIndex        =   31
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31ABBA
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   44
         Left            =   6370
         TabIndex        =   32
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31ABD6
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   42
         Left            =   6140
         TabIndex        =   33
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31ABF2
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   39
         Left            =   5690
         TabIndex        =   34
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AC0E
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   37
         Left            =   5430
         TabIndex        =   35
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AC2A
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   34
         Left            =   4970
         TabIndex        =   36
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AC46
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   32
         Left            =   4720
         TabIndex        =   37
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AC62
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   30
         Left            =   4470
         TabIndex        =   38
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AC7E
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   27
         Left            =   4000
         TabIndex        =   39
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AC9A
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   25
         Left            =   3750
         TabIndex        =   40
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31ACB6
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   22
         Left            =   3270
         TabIndex        =   41
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31ACD2
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   20
         Left            =   3030
         TabIndex        =   42
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31ACEE
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   18
         Left            =   2790
         TabIndex        =   43
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AD0A
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   15
         Left            =   2300
         TabIndex        =   44
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AD26
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   13
         Left            =   2070
         TabIndex        =   45
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AD42
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   10
         Left            =   1590
         TabIndex        =   46
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AD5E
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   8
         Left            =   1350
         TabIndex        =   47
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AD7A
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   6
         Left            =   1100
         TabIndex        =   48
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AD96
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   3
         Left            =   630
         TabIndex        =   49
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31ADB2
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   1200
         Index           =   1
         Left            =   370
         TabIndex        =   50
         Top             =   0
         Width           =   195
         _ExtentX        =   344
         _ExtentY        =   2117
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   0
         BCOLO           =   0
         FCOL            =   16777215
         FCOLO           =   16777215
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31ADCE
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   0
         Left            =   240
         TabIndex        =   51
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   14215660
         BCOLO           =   14215660
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31ADEA
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   2
         Left            =   480
         TabIndex        =   52
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   14215660
         BCOLO           =   14215660
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AE06
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   4
         Left            =   720
         TabIndex        =   53
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   14215660
         BCOLO           =   14215660
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AE22
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   5
         Left            =   960
         TabIndex        =   54
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   14215660
         BCOLO           =   14215660
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AE3E
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   7
         Left            =   1200
         TabIndex        =   55
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AE5A
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   9
         Left            =   1440
         TabIndex        =   56
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AE76
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   11
         Left            =   1680
         TabIndex        =   57
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AE92
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   12
         Left            =   1920
         TabIndex        =   58
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AEAE
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   14
         Left            =   2160
         TabIndex        =   59
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AECA
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   16
         Left            =   2400
         TabIndex        =   60
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AEE6
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   17
         Left            =   2640
         TabIndex        =   61
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AF02
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   19
         Left            =   2880
         TabIndex        =   62
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AF1E
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   21
         Left            =   3120
         TabIndex        =   63
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AF3A
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   23
         Left            =   3360
         TabIndex        =   64
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AF56
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   24
         Left            =   3600
         TabIndex        =   65
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AF72
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   26
         Left            =   3840
         TabIndex        =   66
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AF8E
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   28
         Left            =   4080
         TabIndex        =   67
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AFAA
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   29
         Left            =   4320
         TabIndex        =   68
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AFC6
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   31
         Left            =   4560
         TabIndex        =   69
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AFE2
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   33
         Left            =   4800
         TabIndex        =   70
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31AFFE
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   35
         Left            =   5040
         TabIndex        =   71
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B01A
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   36
         Left            =   5280
         TabIndex        =   72
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B036
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   38
         Left            =   5520
         TabIndex        =   73
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B052
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   40
         Left            =   5760
         TabIndex        =   74
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B06E
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   41
         Left            =   6000
         TabIndex        =   75
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B08A
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   43
         Left            =   6240
         TabIndex        =   76
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B0A6
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   45
         Left            =   6480
         TabIndex        =   77
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B0C2
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   47
         Left            =   6720
         TabIndex        =   78
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B0DE
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   48
         Left            =   6960
         TabIndex        =   79
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B0FA
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   50
         Left            =   7200
         TabIndex        =   80
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B116
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   52
         Left            =   7440
         TabIndex        =   81
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B132
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   53
         Left            =   7680
         TabIndex        =   82
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B14E
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   55
         Left            =   7920
         TabIndex        =   83
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B16A
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   57
         Left            =   8160
         TabIndex        =   84
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B186
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   59
         Left            =   8400
         TabIndex        =   85
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B1A2
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   60
         Left            =   8640
         TabIndex        =   86
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B1BE
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   62
         Left            =   8880
         TabIndex        =   87
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B1DA
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   64
         Left            =   9120
         TabIndex        =   88
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B1F6
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   65
         Left            =   9360
         TabIndex        =   89
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B212
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   67
         Left            =   9600
         TabIndex        =   90
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B22E
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   69
         Left            =   9840
         TabIndex        =   91
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B24A
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin Proyecto.ChameleonBtn tecla 
         Height          =   2055
         Index           =   71
         Left            =   10080
         TabIndex        =   92
         Tag             =   "1"
         Top             =   0
         Width           =   255
         _ExtentX        =   450
         _ExtentY        =   3625
         BTYPE           =   3
         TX              =   ""
         ENAB            =   -1  'True
         BeginProperty FONT {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         COLTYPE         =   2
         FOCUSR          =   -1  'True
         BCOL            =   16777215
         BCOLO           =   16777215
         FCOL            =   0
         FCOLO           =   0
         MCOL            =   12632256
         MPTR            =   1
         MICON           =   "frmPrograma.frx":31B266
         UMCOL           =   -1  'True
         SOFT            =   0   'False
         PICPOS          =   0
         NGREY           =   0   'False
         FX              =   0
         HAND            =   0   'False
         CHECK           =   0   'False
         VALUE           =   0   'False
      End
      Begin VB.Label lblPed 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BackStyle       =   0  'Transparent
         Caption         =   "&Pedal"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   300
         Left            =   120
         TabIndex        =   110
         Top             =   2280
         Visible         =   0   'False
         Width           =   1185
      End
      Begin VB.Image pedal 
         Height          =   720
         Left            =   1080
         Picture         =   "frmPrograma.frx":31B282
         Top             =   2160
         Visible         =   0   'False
         Width           =   720
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "|"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   2640
         TabIndex        =   109
         Top             =   2520
         Width           =   4935
      End
      Begin VB.Label labDecPitch 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "-"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FF00&
         Height          =   240
         Left            =   7680
         TabIndex        =   106
         Top             =   2400
         Width           =   90
      End
      Begin VB.Label labPlusPitch 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "+"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   240
         Left            =   2400
         TabIndex        =   105
         Top             =   2400
         Width           =   135
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "PITCH"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   195
         Left            =   2640
         TabIndex        =   104
         Top             =   2280
         Width           =   570
      End
      Begin VB.Line Line1 
         BorderColor     =   &H000000FF&
         X1              =   7560
         X2              =   2640
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Shape shpMiddleC 
         BackColor       =   &H000000FF&
         BorderColor     =   &H0000FFFF&
         BorderStyle     =   0  'Transparent
         FillColor       =   &H008080FF&
         FillStyle       =   0  'Solid
         Height          =   375
         Left            =   240
         Top             =   2280
         Width           =   135
      End
   End
   Begin VB.PictureBox Panel 
      Height          =   255
      Left            =   10560
      Picture         =   "frmPrograma.frx":320A64
      ScaleHeight     =   195
      ScaleWidth      =   195
      TabIndex        =   8
      Top             =   2880
      Width           =   255
   End
   Begin Proyecto.ChameleonBtn volumen 
      Height          =   480
      Index           =   0
      Left            =   1560
      TabIndex        =   0
      Top             =   480
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
      MICON           =   "frmPrograma.frx":3223F6
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
      Left            =   120
      TabIndex        =   2
      Top             =   1200
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
      MCOL            =   0
      MPTR            =   1
      MICON           =   "frmPrograma.frx":322412
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
      Left            =   1560
      TabIndex        =   3
      Top             =   1200
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
      MICON           =   "frmPrograma.frx":32242E
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
      Index           =   3
      Left            =   120
      TabIndex        =   7
      Top             =   2640
      Width           =   795
      _ExtentX        =   1402
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "&Load"
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
      BCOL            =   4210688
      BCOLO           =   12632064
      FCOL            =   16777215
      FCOLO           =   16777215
      MCOL            =   12632256
      MPTR            =   1
      MICON           =   "frmPrograma.frx":32244A
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
      Index           =   7
      Left            =   1200
      TabIndex        =   11
      Top             =   2640
      Width           =   795
      _ExtentX        =   1402
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "&Play"
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
      BCOL            =   16448
      BCOLO           =   65535
      FCOL            =   16777215
      FCOLO           =   16777215
      MCOL            =   12632256
      MPTR            =   1
      MICON           =   "frmPrograma.frx":322466
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
      Index           =   4
      Left            =   120
      TabIndex        =   12
      Top             =   3240
      Width           =   795
      _ExtentX        =   1402
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "&Save"
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
      BCOL            =   4210688
      BCOLO           =   12632064
      FCOL            =   16777215
      FCOLO           =   16777215
      MCOL            =   12632256
      MPTR            =   1
      MICON           =   "frmPrograma.frx":322482
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
      Index           =   8
      Left            =   1200
      TabIndex        =   13
      Top             =   3240
      Width           =   795
      _ExtentX        =   1402
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "&Rec"
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
      MICON           =   "frmPrograma.frx":32249E
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
      Index           =   9
      Left            =   2280
      TabIndex        =   14
      Top             =   3240
      Width           =   1035
      _ExtentX        =   1826
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "&keyboard &Invisible"
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
      BCOLO           =   16711935
      FCOL            =   16777215
      FCOLO           =   16777215
      MCOL            =   12632256
      MPTR            =   1
      MICON           =   "frmPrograma.frx":3224BA
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
      Index           =   10
      Left            =   3360
      TabIndex        =   15
      Top             =   3240
      Width           =   795
      _ExtentX        =   1402
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "&Test 1"
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
      BCOLO           =   16711935
      FCOL            =   16777215
      FCOLO           =   16777215
      MCOL            =   12632256
      MPTR            =   1
      MICON           =   "frmPrograma.frx":3224D6
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
      Index           =   11
      Left            =   4200
      TabIndex        =   16
      Top             =   3240
      Width           =   795
      _ExtentX        =   1402
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "&Test 2"
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
      MICON           =   "frmPrograma.frx":3224F2
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
      Index           =   12
      Left            =   6960
      TabIndex        =   17
      Top             =   3240
      Width           =   1635
      _ExtentX        =   2884
      _ExtentY        =   847
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
      MICON           =   "frmPrograma.frx":32250E
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
      Index           =   13
      Left            =   5040
      TabIndex        =   18
      Top             =   3240
      Width           =   1875
      _ExtentX        =   3307
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "&Options"
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
      MICON           =   "frmPrograma.frx":32252A
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
      Index           =   14
      Left            =   8640
      TabIndex        =   19
      Top             =   3240
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   847
      BTYPE           =   3
      TX              =   "&About"
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
      MICON           =   "frmPrograma.frx":322546
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin MSComctlLib.Slider sldVol 
      Height          =   300
      Left            =   11445
      TabIndex        =   93
      Top             =   465
      Width           =   885
      _ExtentX        =   1561
      _ExtentY        =   529
      _Version        =   393216
      LargeChange     =   25
      Max             =   127
      SelStart        =   100
      TickStyle       =   3
      TickFrequency   =   10
      Value           =   100
      TextPosition    =   1
   End
   Begin MSComctlLib.Slider sldPitch 
      Height          =   300
      Left            =   12330
      TabIndex        =   94
      Top             =   465
      Width           =   885
      _ExtentX        =   1561
      _ExtentY        =   529
      _Version        =   393216
      LargeChange     =   12
      Min             =   -12
      Max             =   12
      TickStyle       =   3
      TextPosition    =   1
   End
   Begin MSComctlLib.Slider sldInst 
      Height          =   300
      Left            =   10560
      TabIndex        =   95
      Top             =   1560
      Width           =   3045
      _ExtentX        =   5371
      _ExtentY        =   529
      _Version        =   393216
      LargeChange     =   1
      Max             =   128
      TickStyle       =   3
      TextPosition    =   1
   End
   Begin MSComctlLib.Slider sldKeyboard 
      Height          =   300
      Left            =   10560
      TabIndex        =   96
      Top             =   480
      Width           =   885
      _ExtentX        =   1561
      _ExtentY        =   529
      _Version        =   393216
      LargeChange     =   1
      Min             =   1
      Max             =   4
      SelStart        =   1
      TickStyle       =   3
      TickFrequency   =   10
      Value           =   1
      TextPosition    =   1
   End
   Begin Proyecto.ChameleonBtn volumen 
      Height          =   480
      Index           =   72
      Left            =   120
      TabIndex        =   100
      Top             =   480
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
      MICON           =   "frmPrograma.frx":322562
      UMCOL           =   -1  'True
      SOFT            =   0   'False
      PICPOS          =   0
      NGREY           =   0   'False
      FX              =   0
      HAND            =   0   'False
      CHECK           =   0   'False
      VALUE           =   0   'False
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   2655
      Left            =   2280
      TabIndex        =   101
      TabStop         =   0   'False
      Top             =   480
      Width           =   7905
      _ExtentX        =   13944
      _ExtentY        =   4683
      View            =   2
      Arrange         =   1
      LabelEdit       =   1
      LabelWrap       =   0   'False
      HideSelection   =   0   'False
      PictureAlignment=   5
      _Version        =   393217
      Icons           =   "ImageList1"
      SmallIcons      =   "ImageList1"
      ForeColor       =   16777215
      BackColor       =   8388736
      Appearance      =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   3
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "ID"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "EFECTS"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "EFECTS"
         Object.Width           =   2540
      EndProperty
      Picture         =   "frmPrograma.frx":32257E
   End
   Begin VB.Label lblInstrument 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Left            =   6480
      TabIndex        =   103
      Top             =   225
      Width           =   3255
   End
   Begin VB.Label lblInfo 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Volume"
      Height          =   225
      Index           =   0
      Left            =   11445
      TabIndex        =   99
      Top             =   240
      Width           =   825
   End
   Begin VB.Label lblInfo 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Pitch"
      Height          =   225
      Index           =   2
      Left            =   12330
      TabIndex        =   98
      Top             =   240
      Width           =   825
   End
   Begin VB.Label lblInfo 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Keyboard"
      Height          =   225
      Index           =   1
      Left            =   10560
      TabIndex        =   97
      Top             =   240
      Width           =   825
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "rec time"
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
      Height          =   195
      Left            =   720
      TabIndex        =   10
      Top             =   1800
      Width           =   690
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "EFFECTS:"
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
      Height          =   195
      Left            =   5520
      TabIndex        =   9
      Top             =   240
      Width           =   885
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Pitch"
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
      Height          =   195
      Left            =   840
      TabIndex        =   6
      Top             =   1065
      Width           =   450
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Volumen"
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
      Height          =   195
      Left            =   660
      TabIndex        =   5
      Top             =   240
      Width           =   735
   End
   Begin VB.Label Label2 
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
      Left            =   960
      TabIndex        =   4
      Top             =   1440
      Width           =   615
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
      Left            =   960
      TabIndex        =   1
      Top             =   600
      Width           =   615
   End
End
Attribute VB_Name = "frmPrograma"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim recCon As Boolean: Dim recId As Long
Dim idx As Byte: Dim x As String
Dim arranque As Byte

Private Sub cmdRec_Click()
If tmrPlayBack.Enabled Then
 cmdPlay_Click
 recTime.Enabled = False
End If
If tmrRec.Enabled Then
 tmrRec.Enabled = False
 volumen(8).BackColor = &H40&
 Shape1.BackColor = &H40&
 Label7.ForeColor = &H40&
 recTime.Enabled = False
Else
 Grabar = ""
 Temporizadores = 0
 tmrRec.Enabled = True
 volumen(8).BackColor = &HFF&
 Shape1.BackColor = &HFF&
 Label7.ForeColor = &HFF&
 recTime.Enabled = True
End If
End Sub

Private Sub cmdPlay_Click()
 Dim x As Long
  If tmrRec.Enabled Then cmdRec_Click
  If tmrPlayBack.Enabled Then
  tmrPlayBack.Enabled = False
  volumen(7).BackColor = &H4040&
  Sustain False
   For x = 1 To 71
   domusicstop x
   Next x
  Else
  ReproducirEntrada = Split(Grabar, " ")
  Reproducir = 0
  tmrPlayBack.Interval = 50
  tmrPlayBack.Enabled = True
 End If
End Sub

Private Sub cmdSave_Click()
 Dim ff As Long
  If tmrRec.Enabled Then cmdRec_Click
  If tmrPlayBack.Enabled Then cmdPlay_Click
  If Grabar = "" Then Exit Sub
  With CommonDialog1
     .DialogTitle = "Save File the Virtual Martin Piano v1.0"
     .Filter = "File Virtual Martin Piano" & "(*.vmp)|*.vmp|" _
     & "All Files" & "(*.*)|*.*|"
     .FilterIndex = 1
     .ShowSave
  End With
  If Not CommonDialog1.FileName = "" Then
  ff = FreeFile
  Open CommonDialog1.FileName For Binary _
  Access Write As #ff
  Put #ff, , escripta.escriptar(Grabar)
  Close #ff
  End If
End Sub

Private Sub cmdLoad_Click()
 Dim ff As Long
 Dim temp As Long
  If tmrRec.Enabled Then cmdRec_Click
  If tmrPlayBack.Enabled Then cmdPlay_Click
  With CommonDialog1
     .DialogTitle = "Open File the Virtual Martin Piano v1.0"
     .Filter = "File Virtual Martin Piano" & "(*.vmp)|*.vmp|" _
     & "All Files" & "(*.*)|*.*|"
     .FilterIndex = 1
     .ShowOpen
  End With
  ff = FreeFile
  If Not CommonDialog1.FileName = "" Then
  Grabar = ""
  Open CommonDialog1.FileName For Input As ff
  Grabar = escripta.desescriptar(Input(LOF(ff), ff))
  Close ff
  volumen(7).BackColor = &HFFFF&
  End If
End Sub

Private Sub Form_Click()
tecladoActivo
End Sub

Private Sub Form_Load()
 Dim nuevo As ListItem
 Dim fx As Integer
 Dim l As Integer
  ListView1.Picture = Panel.Picture
  agregar_registros
  textoTecla
  Label1.Caption = sldVol.Value
  Label2.Caption = sldPitch.Value
   For l = 0 To 700
   Label9.Caption = Label9.Caption + "|"
   Next l
  'registro la estencion del archivo de el programa
  archivoF.CrearAsociacion App.Path & "\" & App.EXEName, _
  "vmp", "Virtual Martin Piano", App.Path & "\" & "util.dll,0"
  'activar teclado
 Timer2.Enabled = True
End Sub

Private Sub labDecPitch_Click()
 volumen_click 2
End Sub

Private Sub Label1_Click()
tecladoActivo
End Sub

Private Sub Label10_Click()
tecladoActivo
End Sub

Private Sub Label2_Click()
tecladoActivo
End Sub

Private Sub Label3_Click()
tecladoActivo
End Sub

Private Sub Label4_Click()
tecladoActivo
End Sub

Private Sub Label5_Click()
tecladoActivo
End Sub

Private Sub Label6_Click()
tecladoActivo
End Sub

Private Sub Label7_Click()
tecladoActivo
End Sub

Private Sub Label8_Click()
tecladoActivo
End Sub

Private Sub Label9_Click()
tecladoActivo
End Sub

Private Sub labPlusPitch_Click()
 volumen_click 1
End Sub

Private Sub lblInstrument_Click()
tecladoActivo
End Sub

Private Sub lblPed_Click()
tecladoActivo
End Sub

Private Sub ListView1_Click()
 If ListView1.SelectedItem.Index = 1 Then
  sldInst.Value = 0
 Else
  sldInst.Value = ListView1.SelectedItem.Index - 1
 End If
 sldInst_Scroll
 tecladoActivo
End Sub

Public Sub tecladoActivo()
picPared.SetFocus
Timer2.Enabled = False
End Sub

Private Sub pedal_Click()
tecladoActivo
End Sub

Private Sub picPared_KeyDown(KeyCode As Integer, Shift As Integer)
 Dim note As Long
 note = MapaDeTeclado(KeyCode)
  If note > 0 Then
   If Not note = lNota And note Then
   crearMusica note
   End If
  End If
End Sub

Private Sub picPared_KeyUp(KeyCode As Integer, Shift As Integer)
 Dim note As Long
 note = MapaDeTeclado(KeyCode)
  If note > 0 Then
  domusicstop (note)
  End If
End Sub

Private Sub Picture2_Click()
tecladoActivo
End Sub

Private Sub Picture3_Click()
tecladoActivo
End Sub

Private Sub recTime_Timer()
 If recCon = False Then
  volumen(8).BackColor = &H40&
  Shape1.BackColor = &H40&
  Shape1.BorderColor = &H40&
  recCon = True
 ElseIf recCon = True Then
  volumen(8).BackColor = &HFF&
  Shape1.BackColor = &HFF&
  Shape1.BorderColor = &HFF&
  recCon = False
 End If
 Label7.Caption = Time
End Sub

Private Sub tecla_click(Index As Integer)
tecladoActivo ' establece el teclado en todos los contrtoles
End Sub

Private Sub tecla_MouseDown(Index As Integer, Button As Integer, Shift _
As Integer, x As Single, Y As Single)
 crearMusica Index + 1
End Sub

Private Sub tecla_MouseUp(Index As Integer, Button As Integer, Shift _
As Integer, x As Single, Y As Single)
 domusicstop Index + 1
End Sub


Private Sub crearMusica(mNote As Long)
 Dim midimsg As Long
  If mNote = 88 Then
   Sustain True
  Else
   midimsg = &H90 + Canal + ((NotaDeBase + mNote) * _
   &H100) + (Velocidad * &H10000)
   midiOutShortMsg hMidiSalida, midimsg
   tecla(mNote - 1).BackColor = vbRed
  End If
   If tmrRec.Enabled Then
    Grabar = Grabar & mNote & "x" & Temporizadores & " "
   Temporizadores = 0
  End If
   lNota = mNote
End Sub

Private Sub domusicstop(mNote As Long)
 Dim midimsg As Long
  If mNote = 88 Then
   Sustain False
  Else
 midimsg = &H80 + ((NotaDeBase + mNote) * &H100) + Canal
 midiOutShortMsg hMidiSalida, midimsg
  If tecla(mNote - 1).Tag = "1" Then
   tecla(mNote - 1).BackColor = vbWhite
  Else
   tecla(mNote - 1).BackColor = vbBlack
   End If
  End If
  If tmrRec.Enabled Then
   Grabar = Grabar & -mNote & "x" & Temporizadores & " "
   Temporizadores = 0
  End If
  If mNote = lNota Then lNota = 0
End Sub

Private Sub Form_Activate()
 Dim rc As Long
 Dim curDevice As Long
 Dim x As Long
  midiOutClose hMidiSalida
  rc = midiOutOpen(hMidiSalida, curDevice, 0, 0, 0)
   If (rc <> 0) Then
    frmMensaje.mensaje "No se pudo abrir el dispositivo MIDI - Error #" _
    & rc, Error, False, True
   End If
    CommonDialog1.InitDir = App.Path
  sldKeyboard_Change
  sldVol_Scroll
  sldPitch_Scroll
  sldInst_Scroll
  Velocidad = 127
End Sub

Private Sub Form_Terminate()
 midiOutClose hMidiSalida
End Sub

Private Sub Form_Unload(Cancel As Integer)
 If Not (volumen(7).BackColor = &H4040&) Then
  frmMensaje.mensaje "Existe una pista MIDI en Memoria ¿Igual quieres Salir? ", _
  "Advertencia", True, True
  midiOutClose hMidiSalida
  Cancel = 1
 End If
End Sub

Private Sub sldInst_Scroll()
 Dim midimsg As Long
 Dim sel As Long
 sel = sldInst.Value
 lblInstrument.Caption = LoadResString(sel)
  If sel = 128 Then
   Canal = 9
  Else
   Canal = 0
   midimsg = (sel * &H100) + &HC0 + Canal
   midiOutShortMsg hMidiSalida, midimsg
  End If
End Sub

Private Sub sldKeyboard_Change()
 Dim temp() As String
 Dim x As Long
  For x = 300 To 347
  temp = Split(LoadResString(x), ",")
  MapaDeTeclado(CLng(temp(0))) _
  = CLng(temp(sldKeyboard.Value))
    Next x
    MapaDeTeclado(16) = 88
End Sub

Private Sub sldPitch_Scroll()
 NotaDeBase = 23 + sldPitch.Value
  shpMiddleC.Left = tecla(36 - sldPitch).Left _
 + tecla(36 - sldPitch).Width / 2 - 60
End Sub

Private Sub sldVol_Scroll()
 Velocidad = sldVol.Value
End Sub

Private Sub Sustain(Activate As Boolean)
 If Activate Then
  midiOutShortMsg hMidiSalida, (&HB0 + Canal + &H4000 + &H7F0000)
  lblPed.Visible = True
  pedal.Visible = True
 Else
  midiOutShortMsg hMidiSalida, (&HB0 + Canal + &H4000)
  lblPed.Visible = False
  pedal.Visible = False
 End If
End Sub

Private Sub Test1_Timer()
 volumen(10).Enabled = False
  If idx = 0 Then
   recId = recId + 1
   crearMusica recId
  If recId = 72 Then
   Test1.Enabled = False
   idx = 1
   End If
  End If
 If idx = 1 Then
  Test1.Enabled = True
  recId = recId - 1
  crearMusica recId
  domusicstop recId
 If recId = 70 Then
  tecla(71).BackColor = &HFFFFFF
 End If
 If recId = 1 Then
  recId = 0
  Test1.Enabled = False
  volumen(10).Enabled = True
  idx = 0
 End If
End If
End Sub

Private Sub Test2_Timer()
 volumen(11).Enabled = False
  If idx = 0 Then
  If recId > 0 Then
   crearMusica recId
   recId = recId - 1
  End If
  If recId = 1 Then
   crearMusica recId
   Test2.Enabled = False
   idx = 1
  End If
 End If
 If idx = 1 Then
 Test2.Enabled = True
 recId = recId + 1
 crearMusica recId
 domusicstop recId
 If recId = 3 Then
  tecla(0).BackColor = &HD8E9EC
 End If
 If recId = 72 Then
  Test2.Enabled = False
  volumen(11).Enabled = True
  idx = 0
  End If
 End If
End Sub

Private Sub Timer2_Timer()
 On Error GoTo nose
  arranque = arranque + 1
  tecladoActivo
  If arranque = 7 Then
   arranque = 0
   Timer2.Enabled = False
  End If
nose:
End Sub

Private Sub tmrPlayBack_Timer()
 Dim getnote() As String
 Dim temp As Long
  On Error GoTo Errs
  getnote = Split(ReproducirEntrada(Reproducir), "x")
  temp = getnote(0)
   If temp < 0 Then
    domusicstop Abs(temp)
     Else
    crearMusica temp
    volumen(7).BackColor = &H4040&
   End If
    Reproducir = Reproducir + 1
    getnote = Split(ReproducirEntrada(Reproducir), "x")
    volumen(7).BackColor = &HFFFF&
    temp = getnote(1) * 50
     If temp = 0 Then
      tmrPlayBack_Timer
      Exit Sub
     End If
 tmrPlayBack.Enabled = False
 tmrPlayBack.Interval = temp + 50
 tmrPlayBack.Enabled = True
    Exit Sub
Errs:
    cmdPlay_Click
End Sub

Private Sub tmrRec_Timer()
 Temporizadores = Temporizadores + 1
End Sub

Private Sub agregar_registros()
 Dim fx As Integer
  With ListView1
   ListView1.ColumnHeaders.Clear
   .ColumnHeaders.Add , , "#ID"
   .ColumnHeaders.Add , , "Effects"
   fx = 1
  Open "effects.sys" For Input As 1
  Dim etiqueta As String
  Do While Not EOF(1)
  Line Input #1, etiqueta
  Set nuevo = ListView1.ListItems.Add(, , fx & ") " & _
  etiqueta, "EFFECTS", "EFFECTS")
   fx = fx + 1
  Loop
   Close #1
   fx = 1
  End With
 End Sub

Private Sub volumen_click(Index As Integer)
 tecladoActivo ' establece el teclado en todos los contrtoles
 sldVol_Scroll
 sldKeyboard_Change
 sldPitch_Scroll
 Label1.Caption = sldVol.Value
 Label2.Caption = sldPitch.Value
  Select Case Index
   Case 0
    sldVol.Value = sldVol.Value - 1
   Case 1
    sldPitch.Value = sldPitch.Value + 1
   Case 2
    sldPitch.Value = sldPitch.Value - 1
   Case 3
    cmdLoad_Click
   Case 4
    recTime.Enabled = False
    cmdSave_Click
   Case 5
    x = ShellExecute(Me.hwnd, "Open" _
    , "http://virtualmartinpiano.blogspot.com.uy/p/actualizar.html", _
    &O0, &O0, 0)
   Case 7
    cmdPlay_Click
   Case 8
    cmdRec_Click
   Case 9
    Dim tec As Byte
    If tecla(0).Visible = True Then
     For tec = 0 To 71
      tecla(tec).Visible = False
     Next tec
    volumen(9).Caption = "keyboard Visible"
     ElseIf tecla(0).Visible = False Then
      For tec = 0 To 71
       tecla(tec).Visible = True
      Next tec
     volumen(9).Caption = "keyboard Invisible"
    End If
   Case 10
    If Not (volumen(10).Enabled = True) Or (volumen(11).Enabled = True) Then
     recId = 0
     If Test1.Enabled = True Then
     Test1.Enabled = False
     ElseIf Test1.Enabled = False Then
     Test1.Enabled = True
     End If
    End If
   Case 11
    If Not (volumen(11).Enabled = True) Or (volumen(10).Enabled = True) Then
     recId = 72
    If Test2.Enabled = True Then
     Test2.Enabled = False
    ElseIf Test2.Enabled = False Then
     Test2.Enabled = True
    End If
   End If
   Case 12
    x = ShellExecute(Me.hwnd, "Open" _
    , "http://virtualmartinpiano.blogspot.com.uy/2017/03/colaborarcontribuirdonarproyectos.html", _
    &O0, &O0, 0)
   Case 13
    frmOpciones.Show 1
   Case 14
    frmAcercade.Show 1
   Case 72
    sldVol.Value = sldVol.Value + 1
  End Select
End Sub

Private Sub textoTecla()
 Dim tec As Byte
  For tec = 0 To 71
   tecla(tec).ToolTipText = "Key:" & tec
   Next tec
End Sub
'fin del programa
