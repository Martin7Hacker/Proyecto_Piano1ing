Attribute VB_Name = "escripta"
'***************************************************************************
'*                                                                         *
'*                                                                         *
'* Encripta y Descripta con Virtual Martin Piano v1.0                      *
'*                                                                         *
'*                                                                         *
'***************************************************************************

Option Explicit

Dim login, pass1 As Integer
Dim ctr As Integer

Function escriptar(valor As String) As String
 On Error Resume Next
 Dim PassNew As String
 Dim Passtemp As String
 pass1 = Len(Trim(valor))
 ctr = 1
 Do While ctr <= pass1
 PassNew = CStr(PassNew) & Chr((Asc(Mid(Trim(valor), ctr, 1)) + 121))
 ctr = ctr + 1
 Loop
 escriptar = PassNew
End Function

Function desescriptar(valor As String) As String
 On Error Resume Next
 Dim Passlength As Integer, Cntr As Integer
 Dim tempChar As String
 Dim OldPass As String
 Cntr = 1
 Passlength = Len(valor)
 Do While Cntr <= Passlength
 OldPass = OldPass + Chr((Asc(Mid(Trim(valor), Cntr, 1)) - 121))
 Cntr = Cntr + 1
 Loop                  'escripta.cls
 desescriptar = OldPass
End Function


