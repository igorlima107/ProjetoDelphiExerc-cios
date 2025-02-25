unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    Exerccios1: TMenuItem;
    Exerccios021: TMenuItem;
    Exerccios031: TMenuItem;
    Condicionais1: TMenuItem;
    Sobre1: TMenuItem;
    Se1: TMenuItem;
    Escolha1: TMenuItem;
    Exerccio041: TMenuItem;
    pnlGeral: TImage;
    Exerccio051: TMenuItem;
    Exerccio061: TMenuItem;
    Exerccio011: TMenuItem;
    Exerccio021: TMenuItem;
    Exerccio031: TMenuItem;
    Exerccio042: TMenuItem;
    Exerccio012: TMenuItem;
    Exerccio022: TMenuItem;
    Exerccio032: TMenuItem;
    Exerccio043: TMenuItem;
    Repetio1: TMenuItem;
    Para1: TMenuItem;
    Para2: TMenuItem;
    Repita1: TMenuItem;
    Exerccio013: TMenuItem;
    Exerccio023: TMenuItem;
    Exerccio033: TMenuItem;
    Exerccio014: TMenuItem;
    Exerccio024: TMenuItem;
    Exerccio034: TMenuItem;
    Exerccio015: TMenuItem;
    Exerccio025: TMenuItem;
    Exerccio035: TMenuItem;
    Exerccio044: TMenuItem;
    Exerccio045: TMenuItem;
    Exerccio046: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exerccios1Click(Sender: TObject);
    procedure Exerccios021Click(Sender: TObject);
    procedure Exerccios031Click(Sender: TObject);
    procedure Exerccio041Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Exerccio051Click(Sender: TObject);
    procedure Exerccio061Click(Sender: TObject);
    procedure Exerccio011Click(Sender: TObject);
    procedure Exerccio021Click(Sender: TObject);
    procedure Exerccio031Click(Sender: TObject);
    procedure Exerccio042Click(Sender: TObject);
    procedure Exerccio012Click(Sender: TObject);
    procedure Exerccio022Click(Sender: TObject);
    procedure Exerccio032Click(Sender: TObject);
    procedure Exerccio043Click(Sender: TObject);
    procedure Exerccio013Click(Sender: TObject);
    procedure Exerccio014Click(Sender: TObject);
    procedure Exerccio015Click(Sender: TObject);
    procedure Exerccio023Click(Sender: TObject);
    procedure Exerccio033Click(Sender: TObject);
    procedure Exerccio024Click(Sender: TObject);
    procedure Exerccio034Click(Sender: TObject);
    procedure Exerccio025Click(Sender: TObject);
    procedure Exerccio035Click(Sender: TObject);
    procedure Exerccio044Click(Sender: TObject);
    procedure Exerccio045Click(Sender: TObject);
    procedure Exerccio046Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uFrmOpMat01, uFrmOpMat02, uFrmOpMat03, uFrmOpMat04, uFrmOpMat05,
  uFrmOpMat06, uFrmSep01, uFrmSep02, uFrmSep03, uFrmSep04, uFrmEscolha01,
  uFrmEscolha02, uFrmEscolha03, uFrmEscolha04, uFrmPara01, uFrmEnquanto01,
  uFrmRepita01, uFrmPara02, uFrmPara03, uFrmEnquanto02, uFrmEnquanto03,
  uFrmRepita02, uFrmRepita03, uFrmPara04, uFrmEnquanto04, uFrmRepita04;

procedure TfrmPrincipal.Exerccio011Click(Sender: TObject);
begin
  frmSep01.ShowModal;
end;

procedure TfrmPrincipal.Exerccio012Click(Sender: TObject);
begin
  frmEscolha01.ShowModal;
end;

procedure TfrmPrincipal.Exerccio013Click(Sender: TObject);
begin
  frmPara01.ShowModal;
end;

procedure TfrmPrincipal.Exerccio014Click(Sender: TObject);
begin
  frmEnquanto01.ShowModal;
end;

procedure TfrmPrincipal.Exerccio015Click(Sender: TObject);
begin
  frmRepita01.ShowModal;
end;

procedure TfrmPrincipal.Exerccio021Click(Sender: TObject);
begin
  frmSep02.ShowModal;
end;

procedure TfrmPrincipal.Exerccio022Click(Sender: TObject);
begin
  frmEscolha02.ShowModal;
end;

procedure TfrmPrincipal.Exerccio023Click(Sender: TObject);
begin
  frmPara02.ShowModal;
end;

procedure TfrmPrincipal.Exerccio024Click(Sender: TObject);
begin
  frmEnquanto02.ShowModal;
end;

procedure TfrmPrincipal.Exerccio025Click(Sender: TObject);
begin
  frmRepita02.ShowModal;
end;

procedure TfrmPrincipal.Exerccio031Click(Sender: TObject);
begin
  frmSep03.ShowModal;
end;

procedure TfrmPrincipal.Exerccio032Click(Sender: TObject);
begin
  frmEscolha03.ShowModal;
end;

procedure TfrmPrincipal.Exerccio033Click(Sender: TObject);
begin
  frmPara03.ShowModal;
end;

procedure TfrmPrincipal.Exerccio034Click(Sender: TObject);
begin
  frmEnquanto03.ShowModal;
end;

procedure TfrmPrincipal.Exerccio035Click(Sender: TObject);
begin
  frmRepita03.ShowModal;
end;

procedure TfrmPrincipal.Exerccio041Click(Sender: TObject);
begin
  frmOpMat04.ShowModal;
end;

procedure TfrmPrincipal.Exerccio042Click(Sender: TObject);
begin
  frmSep04.ShowModal;
end;

procedure TfrmPrincipal.Exerccio043Click(Sender: TObject);
begin
  frmEscolha04.ShowModal;
end;

procedure TfrmPrincipal.Exerccio044Click(Sender: TObject);
begin
  frmPara04.ShowModal;
end;

procedure TfrmPrincipal.Exerccio045Click(Sender: TObject);
begin
  frmEnquanto04.ShowModal;
end;

procedure TfrmPrincipal.Exerccio046Click(Sender: TObject);
begin
  frmRepita04.ShowModal;
end;

procedure TfrmPrincipal.Exerccio051Click(Sender: TObject);
begin
  frmOpMat05.ShowModal;
end;

procedure TfrmPrincipal.Exerccio061Click(Sender: TObject);
begin
  frmOpMat06.ShowModal;
end;

procedure TfrmPrincipal.Exerccios021Click(Sender: TObject);
begin
  frmOpMat02.ShowModal;
end;

procedure TfrmPrincipal.Exerccios031Click(Sender: TObject);
begin
  frmOpMat03.ShowModal;
end;

procedure TfrmPrincipal.Exerccios1Click(Sender: TObject);
begin
  frmOpMat01.ShowModal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Confirma o Encerramento da Aplica��o ?',
    'Projeto Escola - Sair', MB_ICONQUESTION + MB_YESNO) = mrNo then
    Abort;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  pnlGeral.Left := Round((Screen.Width - pnlGeral.Width) / 2);
  pnlGeral.Top := Round((Screen.Height - pnlGeral.Height) / 2);
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

end.
