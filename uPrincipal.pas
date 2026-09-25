unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDtmConexao, FireDAC.Comp.UI, FireDAC.UI.Intf,
  System.IniFiles;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    CADASTRO1: TMenuItem;
    MOVIMENTAO1: TMenuItem;
    RELATRIOS1: TMenuItem;
    CLIENTE1: TMenuItem;
    N1: TMenuItem;
    CATEGORIA1: TMenuItem;
    PRODUTO1: TMenuItem;
    N2: TMenuItem;
    mnuFechar: TMenuItem;
    VENDAS1: TMenuItem;
    CLIENTE2: TMenuItem;
    N3: TMenuItem;
    PRODUTO2: TMenuItem;
    VENDAPORDATA1: TMenuItem;
    procedure mnuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  ArquivoIni: TIniFile;
  CaminhoIni: string;
begin
  dtmPrincipal := TdtmPrincipal.Create(Self);
  dtmPrincipal.WaitCursorDB.ScreenCursor := gcrAppWait;

  // Define o caminho do arquivo .ini na mesma pasta do .exe
  CaminhoIni := ExtractFilePath(ParamStr(0)) + 'config.ini';

  if not FileExists(CaminhoIni) then
    raise Exception.Create('Arquivo de configuração "config.ini" não encontrado!');

  ArquivoIni := TIniFile.Create(CaminhoIni);
  try
    with dtmPrincipal.ConexaoDB do
    begin
      Params.Clear;
      Params.DriverID := ArquivoIni.ReadString('BancoDeDados', 'DriverID', 'PG');
      Params.Database := ArquivoIni.ReadString('BancoDeDados', 'Database', 'vendas');
      Params.UserName := ArquivoIni.ReadString('BancoDeDados', 'UserName', 'postgres');
      Params.Password := ArquivoIni.ReadString('BancoDeDados', 'Password', '');
      Params.Add('Server=' + ArquivoIni.ReadString('BancoDeDados', 'Server', 'localhost'));
      Params.Add('Port=' + ArquivoIni.ReadString('BancoDeDados', 'Port', '5432'));

      LoginPrompt := False;
      Connected := True;

      // Mensagem para confirmar a conexão
      ShowMessage('Conectado com bando de dados com sucesso');
    end;
  finally
    ArquivoIni.Free;
  end;

end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
  //Close;
  Application.Terminate;
end;

end.
