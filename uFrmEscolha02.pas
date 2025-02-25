unit uFrmEscolha02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TfrmEscolha02 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    edtCod: TEdit;
    Label4: TLabel;
    edtQuant: TEdit;
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
  frmEscolha02: TfrmEscolha02;

implementation

{$R *.dfm}

procedure TfrmEscolha02.btnCalcularClick(Sender: TObject);
var codigo, quantidade: integer;
    valor, final: real;
    mens: string;
begin
  try
   codigo := StrToInt(edtCod.Text);
   quantidade := StrToInt(edtQuant.Text);

   case codigo of
     100: begin
          valor := 5.50;
          final := valor * quantidade;
          mens := 'O seu pedido � ' + IntToStr(quantidade) + ' Cachorro-quente' +
                   ' no valor de: R$' + FormatFloat('#0.00', final);
     end;

     101: begin
          valor := 6.50;
          final := valor * quantidade;
          mens := 'O seu pedido � ' + IntToStr(quantidade) + ' Bauru Simples' +
                   ' no valor de: R$' + FormatFloat('#0.00', final);
     end;

     102: begin
          valor := 7.50;
          final := valor * quantidade;
          mens := 'O seu pedido � ' + IntToStr(quantidade) + ' Bauru com ovo' +
                   ' no valor de: R$' + FormatFloat('#0.00', final);
     end;

     103: begin
          valor := 6.00;
          final := valor * quantidade;
          mens := 'O seu pedido � ' + IntToStr(quantidade) + ' Hamb�rguer' +
                   ' no valor de: R$' + FormatFloat('#0.00', final);
     end;

     104: begin
          valor := 6.30;
          final := valor * quantidade;
          mens := 'O seu pedido � ' + IntToStr(quantidade) + ' Cheeseburguer' +
                   ' no valor de: R$' + FormatFloat('#0.00', final);
     end;

     105: begin
          valor := 5.00;
          final := valor * quantidade;
          mens := 'O seu pedido � ' + IntToStr(quantidade) + ' Refrigerante' +
                   ' no valor de: R$' + FormatFloat('#0.00', final);
     end;
   end;
   Application.MessageBox(PWideChar(mens), 'Resultado', MB_ICONINFORMATION);
  except
   Application.MessageBox('Informe apenas valores v�lidos',
     'Problemas ao calcular', MB_ICONWARNING);
  end;
end;

procedure TfrmEscolha02.btnLimparClick(Sender: TObject);
begin
  edtCod.Clear;
  edtQuant.Clear;
  edtCod.SetFocus;
end;

end.
