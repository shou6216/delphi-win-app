unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, FireDAC.DApt, Vcl.Grids,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Controls,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Bind.Navigator, Data.Bind.Grid, Data.Bind.DBScope,
  FireDAC.Comp.DataSet;

type
  TForm4 = class(TForm)
    FDConnection1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    StringGrid1: TStringGrid;
    FDTable1: TFDTable;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    NavigatorBindSourceDB1: TBindNavigator;
    BindingsList1: TBindingsList;
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}


end.
