unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Unit2;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private 宣言 }
  public
    { Public 宣言 }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Edit1.Text = '' then
    Exit;

  ListBox1.Items.Add(Edit1.Text);
  Edit1.Text := '';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  // if-elseはelseまでで1文、else前でセミコロン使わない
  if CheckBox1.Checked then
    Form2.ShowModal
  else
    Form2.Show;
end;

end.
