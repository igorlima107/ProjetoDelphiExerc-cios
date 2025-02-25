unit uFrmEscolha03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls, DateUtils,
  Vcl.StdCtrls;

type
  TfrmEscolha03 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    edtData: TEdit;
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
  frmEscolha03: TfrmEscolha03;

implementation

{$R *.dfm}

procedure TfrmEscolha03.btnCalcularClick(Sender: TObject);
var data : integer;
    mens : string;
begin
  try
   data := StrToInt(edtData.Text);

   case data of
     0..4: mens:= 'Idade indispon�vel';
     5..7: mens:= 'Sua categoria � infantil A';
     8..10: mens:= 'Sua categoria � infantil B';
     11..13: mens:= 'Sua categoria � juvenil A';
     14..17: mens:= 'Sua categoria � juvenil B';
     else
     mens := 'Sua categoria � adulto';
   end;
     Application.MessageBox(PWideChar(Mens), 'Resultado', MB_ICONINFORMATION);
  except
     Application.MessageBox('Informe apenas valores v�lidos', 
       'Problemas ao calcular', MB_ICONWARNING);
  end;
end;

procedure TfrmEscolha03.btnLimparClick(Sender: TObject);
begin
  edtData.Clear;
  edtData.SetFocus;
end;

end.
