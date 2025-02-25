unit uFrmEscolha01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmEscolha01 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    edtPeso: TEdit;
    Label4: TLabel;
    edtAltura: TEdit;
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
  frmEscolha01: TfrmEscolha01;

implementation

{$R *.dfm}

procedure TfrmEscolha01.btnCalcularClick(Sender: TObject);
var peso, altura, imc: real;
    mens: string;
begin
  try
   peso := StrToFloat(edtPeso.Text);
   altura := StrToFloat(edtAltura.Text);
   imc := peso / sqr(altura);
   mens := 'Seu IMC � ' + IntToStr(Round(imc)) + ' voc� est� ' ;
   case Round(imc) of
     0..20: mens:= mens + 'Abaixo do peso';
     21..25: mens:= mens + 'com Peso Normal';
     26..30: mens:= mens + 'com Sobre Peso';
     31..40: mens:= mens + 'Obeso';
     else
       mens := 'com Obesidade M�rbida';
   end;
    Application.MessageBox(PWideChar(mens), 'Resultado', MB_ICONINFORMATION);
  except 
    Application.MessageBox('Informe apenas valores v�lidos', 
      'Problemas ao calcular', MB_ICONWARNING);
  end;
end;

procedure TfrmEscolha01.btnLimparClick(Sender: TObject);
begin
  edtPeso.Clear;
  edtAltura.Clear;
  edtPeso.SetFocus;
end;

end.
