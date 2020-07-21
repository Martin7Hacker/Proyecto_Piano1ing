Attribute VB_Name = "funciones"
Option Explicit

'funciones de la Libreria de MIDI winmm.dll

Public Declare Function midiOutOpen Lib "winmm.dll" (lphMidiOut As Long, ByVal uDeviceID _
As Long, ByVal dwCallback As Long, ByVal dwInstance As Long, ByVal dwFlags As Long) As Long
Public Declare Function midiOutShortMsg Lib "winmm.dll" (ByVal hMidiOut As Long, ByVal dwMsg As Long) As Long
Public Declare Function midiOutClose Lib "winmm.dll" (ByVal hMidiOut As Long) As Long

'funcion para poder ir a Web

Public Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" _
(ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, _
ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long

'**************[ MEMORIA VARIABLE ]**********************
Public hMidiSalida As Long
Public NotaDeBase As Long
Public Canal As Long
Public Velocidad As Long
Public lNota As Long
Public Reproducir As Long
Public Temporizadores As Long
Public MapaDeTeclado(255) As Long
Public Grabar As String
Public ReproducirEntrada() As String
'********************************************************


