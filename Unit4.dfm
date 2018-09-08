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
  object StringGrid1: TStringGrid
    Tag = 5
    Left = 0
    Top = 25
    Width = 447
    Height = 170
    Align = alClient
    DefaultColWidth = 85
    FixedCols = 0
    RowCount = 90
    TabOrder = 0
  end
  object NavigatorBindSourceDB1: TBindNavigator
    Left = 0
    Top = 0
    Width = 447
    Height = 25
    DataSource = BindSourceDB1
    Align = alTop
    Orientation = orHorizontal
    TabOrder = 1
    ExplicitLeft = 112
    ExplicitTop = 104
    ExplicitWidth = 240
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
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'capsule'
    TableName = 'capsule'
    Left = 272
    Top = 56
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDTable1
    ScopeMappings = <>
    Left = 216
    Top = 104
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = #12463#12452#12483#12463' '#12496#12452#12531#12487#12451#12531#12464
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <>
    end
  end
end
