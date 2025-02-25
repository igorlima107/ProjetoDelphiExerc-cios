unit uFrmSep01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmSep01 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNome: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtNota1: TEdit;
    edtNota2: TEdit;
    edtNota3: TEdit;
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
  frmSep01: TfrmSep01;

implementation

{$R *.dfm}

procedure TfrmSep01.btnCalcularClick(Sender: TObject);
var nota1, nota2, nota3, media : real;
    mens : string;
begin
  try
   nota1 := StrToFloat(edtNota1.Text);
   nota2 := StrToFloat(edtNota2.Text);
   nota3 := StrToFloat(edtNota3.Text);
   media := ((nota1 * 4) + (nota2 * 3) + (nota3 * 3)) / 10;
   mens := 'A m�dia do aluno ' + edtNome.Text + ' � '
         + FormatFloat('#0.0', media);
    if (media >= 7) then
       mens := mens + #13 + 'Aluno APROVADO'
    else
    if (media >= 5) then
       mens := mens + #13 + 'Aluno EM RECUPERA��O'
     else
       mens := mens + #13 + 'Aluno REPROVADO';
   Application.MessageBox(PWideChar(mens), 'Resultado', MB_ICONINFORMATION);
  except
  Application.MessageBox('Por favor, informe apenas valores v�lidos',
   'Problemas ao Calcular', MB_ICONWARNING);
  end;
end;

procedure TfrmSep01.btnLimparClick(Sender: TObject);
begin
  edtNome.Clear;
  edtNota1.Clear;
  edtNota2.Clear;
  edtNota3.Clear;
  edtNome.SetFocus;
end;

end.
