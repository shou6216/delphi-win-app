unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, FireDAC.DApt, Vcl.Grids;

type
  TForm4 = class(TForm)
    connectButton: TButton;
    executeButton: TButton;
    FDConnection1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    StringGrid1: TStringGrid;
    Memo1: TMemo;
    procedure connectButtonClick(Sender: TObject);
    procedure executeButtonClick(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.connectButtonClick(Sender: TObject);
begin
  Memo1.Text := '';
  FDConnection1.DriverName := 'SQLITE';
  FDConnection1.Params.Values['Database'] := 'C:\\Development\\rcs\\git\\delphi-win-app\\fusion-rize.db';
  try
    FDConnection1.Open;
    executeButton.Enabled := True;
    Memo1.Lines.Add('Connection established!');
  except
    on E: EDatabaseError do
      Memo1.Lines.Add('Exception raised with message' + E.Message);
  end;
end;

procedure TForm4.executeButtonClick(Sender: TObject);
var
  query: TFDQuery;
  rowIndex: Integer;
begin
  query := TFDQuery.Create(nil);

  try
    query.Connection := FDConnection1;
    query.SQL.Text := 'SELECT fullName, productName FROM capsule';
    query.Open();


    StringGrid1.Cells[0, 0] := 'ñºëO'  ;
    StringGrid1.Cells[1, 0] := 'îÃîÑå≥';

    rowIndex := 1;
    while not query.Eof do
    begin
      StringGrid1.Cells[0, rowIndex] := query.FieldByName('fullName').AsString;
      StringGrid1.Cells[1, rowIndex] := query.FieldByName('productName').AsString;
      Inc(rowIndex);
      query.Next;
    end;

  finally
    query.Close;
    query.DisposeOf;
  end;

end;

end.
