unit uFrmEnquanto03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmEnquanto03 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    memNumeros: TMemo;
    btnCalcular: TButton;
    btnLimpar: TButton;
    Label3: TLabel;
    procedure btnLimparClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEnquanto03: TfrmEnquanto03;

implementation

{$R *.dfm}

procedure TfrmEnquanto03.btnCalcularClick(Sender: TObject);
var i : integer;
    graus : real;
begin
  i := 1;
  while (i <= 50) do
  begin
    graus := (5 / 9) * (i - 32);
    memNumeros.Lines.Add(IntToStr(i) + ' = ' + 'C=5/9 * (' + IntToStr(i) + '-32)' + ' = ' + FormatFloat('#0.0000�', graus));
    i := i + 1;
  end;
end;

procedure TfrmEnquanto03.btnLimparClick(Sender: TObject);
begin
  memNumeros.Clear;
end;

end.
