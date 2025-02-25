unit uFrmRepita02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmRepita02 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtNumero: TEdit;
    btnCalcular: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepita02: TfrmRepita02;

implementation

{$R *.dfm}

procedure TfrmRepita02.btnCalcularClick(Sender: TObject);
var num, i : integer;
    mens : string;
    fatorial : real;
begin
  try
    num := StrToInt(edtNumero.Text);
    i := 1;
    fatorial := 1;
    repeat
      fatorial := fatorial * i;
      i := i + 1;
    until (i > num);
    mens := 'A fatorial do n�mero ' + IntToStr(num) + ' �: ' + FormatFloat('#0', fatorial);
    Application.MessageBox(PwideChar(Mens), 'Resultado', MB_ICONINFORMATION);
  except
    Application.MessageBox('Informe um valor menor',
      'Problemas ao calcular', MB_ICONWARNING);
  end;
end;

procedure TfrmRepita02.Button1Click(Sender: TObject);
begin
  edtNumero.Clear;
  edtNumero.SetFocus;
end;

end.
