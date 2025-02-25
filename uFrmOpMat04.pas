unit uFrmOpMat04;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmOpMat04 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    prestacao: TEdit;
    Label4: TLabel;
    juro: TEdit;
    Label5: TLabel;
    atraso: TEdit;
    bucalc: TButton;
    bulimp: TButton;
    procedure bulimpClick(Sender: TObject);
    procedure bucalcClick(Sender: TObject);
    procedure prestacaoKeyPress(Sender: TObject; var Key: Char);
    procedure juroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpMat04: TfrmOpMat04;

implementation

{$R *.dfm}

procedure TfrmOpMat04.bucalcClick(Sender: TObject);
var presta, jur, resultado : real;
    atras : integer;
    mens : string;
begin
  presta := StrToFloat(prestacao.Text);
  jur := StrToFloat(juro.Text);
  atras := StrToInt(atraso.Text);
  resultado := presta + (presta * (jur/100) * atras);
  mens := 'O valor da presta��o em atraso � de: ' + 'R$ ' + FormatFloat('#0.00', resultado);
  Application.MessageBox(PWideChar(mens), 'Resultado', MB_ICONINFORMATION);
end;

procedure TfrmOpMat04.bulimpClick(Sender: TObject);
begin
  prestacao.Clear;
  juro.Clear;
  atraso.Clear;
  prestacao.SetFocus;
end;

procedure TfrmOpMat04.juroKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', '.',',',#08]) then
     Key := #0;
end;

procedure TfrmOpMat04.prestacaoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', '.',',',#08]) then
     Key := #0;
end;

end.
