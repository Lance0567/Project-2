object frmClients: TfrmClients
  Left = 0
  Top = 0
  Cursor = crHandPoint
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'CLIENT/s BILLING MODULE'
  ClientHeight = 580
  ClientWidth = 1000
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnKeyUp = FormKeyUp
  TextHeight = 15
  object PanelMain: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 994
    Height = 574
    Cursor = crHandPoint
    Align = alClient
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    ExplicitTop = -2
  end
end
