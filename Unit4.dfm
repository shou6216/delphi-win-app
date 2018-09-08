object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 195
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object connectButton: TButton
    Left = 0
    Top = 160
    Width = 217
    Height = 41
    Align = alCustom
    Caption = 'Connect'
    TabOrder = 0
    OnClick = connectButtonClick
  end
  object executeButton: TButton
    Left = 216
    Top = 160
    Width = 233
    Height = 41
    Align = alCustom
    Caption = 'Execute'
    Enabled = False
    TabOrder = 1
    OnClick = executeButtonClick
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 449
    Height = 129
    Align = alCustom
    ColCount = 2
    DefaultColWidth = 225
    FixedCols = 0
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 0
    Top = 128
    Width = 449
    Height = 34
    Align = alCustom
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Development\rcs\git\delphi-win-app\fusion-rize.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 128
    Top = 48
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 232
    Top = 56
  end
end
