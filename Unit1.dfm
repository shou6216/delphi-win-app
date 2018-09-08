object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 203
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 128
    Top = 8
    Width = 75
    Height = 25
    Caption = #23455#34892
    TabOrder = 1
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 48
    Width = 195
    Height = 97
    ItemHeight = 13
    TabOrder = 2
  end
  object Button2: TButton
    Left = 312
    Top = 8
    Width = 75
    Height = 25
    Caption = #30011#38754#36983#31227
    TabOrder = 3
    OnClick = Button2Click
  end
  object CheckBox1: TCheckBox
    Left = 393
    Top = 10
    Width = 97
    Height = 17
    Caption = #12514#12540#12480#12523
    TabOrder = 4
  end
  object Button3: TButton
    Left = 312
    Top = 64
    Width = 105
    Height = 25
    Caption = 'FireDAC(SQLite)'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 312
    Top = 120
    Width = 129
    Height = 25
    Caption = #12469#12502#12514#12472#12517#12540#12523#21628#12403#20986#12375
    TabOrder = 6
    OnClick = Button4Click
  end
end
