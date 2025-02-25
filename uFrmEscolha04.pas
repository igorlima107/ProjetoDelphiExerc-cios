unit uFrmEscolha04;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TfrmEscolha04 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    edtSaldo: TEdit;
    btnCalcular: TButton;
    btnLimpar: TButton;
    procedure btnLimparClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEscolha04: TfrmEscolha04;

implementation

{$R *.dfm}

procedure TfrmEscolha04.btnCalcularClick(Sender: TObject);
var saldo, final : real;
    mens : string;
begin
  try
   saldo := StrToFloat(edtSaldo.Text);

   case Round(saldo) of
     0..200: mens:= 'O seu saldo m�dio � de: R$' + FormatFloat('#0.00', saldo) +
             ' voc� n�o tem direito a cr�dito';
     201..400: begin
       final := (20*saldo)/100;
       mens := 'O seu saldo m�dio � de: R$' + FormatFloat('#0.00', saldo) +
        ' e o seu valor do cr�dito � de: R$' + FormatFloat('#0.00', final);
     end;
     401..600: begin
       final := (30*saldo)/100;
       mens := 'O seu saldo m�dio � de: R$' + FormatFloat('#0.00', saldo) +
        ' e o seu valor do cr�dito � de: R$' + FormatFloat('#0.00', final);
     end;
     else
     begin
       final := (40*saldo)/100;
       mens := 'O seu saldo m�dio � de: R$' + FormatFloat('#0.00', saldo) +
        ' e o seu valor do cr�dito � de: R$' + FormatFloat('#0.00', final);
     end;
   end;
   Application.MessageBox(PWideChar(Mens), 'Resultado', MB_ICONINFORMATION);
  except
   Application.MessageBox('Informe apenas valores v�lidos',
     'Problemas ao calcular', MB_ICONWARNING);
  end;
end;

procedure TfrmEscolha04.btnLimparClick(Sender: TObject);
begin
  edtSaldo.Clear;
  edtSaldo.SetFocus;
end;

end.
