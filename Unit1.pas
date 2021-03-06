unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Unit2, Unit3, Unit4, SubModule;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
    if (Form2.ShowModal = mrOk) and (Form2.Edit1.Text <> '') then
      ListBox1.Items.Add(Form2.Edit1.Text)
    else

  else
    Form3.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  message: String;
begin
  message := getMessage(50, 200);
  ShowMessage(message);
end;

end.
