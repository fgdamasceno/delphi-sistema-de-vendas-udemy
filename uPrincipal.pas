unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDtmConexao, Enter;

type
  TfrmPrincipal = class(TForm)
    MainPrincipal: TMainMenu;
    CADASTRO1: TMenuItem;
    MOVIMENTAO1: TMenuItem;
    RELATRIOS1: TMenuItem;
    CLIENTE1: TMenuItem;
    N1: TMenuItem;
    mnuCategoria: TMenuItem;
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
    procedure mnuCategoriaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    TeclaEnter: TMREnter;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadCategoria;

procedure TfrmPrincipal.mnuCategoriaClick(Sender: TObject);
begin

  with TfrmCadCategoria.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;

end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(TeclaEnter);
  FreeAndNil(DtmPrincipal);
end;


procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  dtmPrincipal := TdtmPrincipal.Create(Self);

  with dtmPrincipal.ConexaoDB do
  begin
    SQLHourGlass := True;
    Protocol := 'postgresql';
    LibraryLocation := 'C:\dev\workspace\Delphi\projetos\Delphi Sistema de Vendas Udemy\Win32\Debug\libpq.dll';
    //LibraryLocation := ExtractFilePath(ParamStr(0)) + 'libpq.dll';
    HostName := 'localhost';
    Database := 'vendas';
    Port := 5432;
    Password := 'fgd1788';
    User := 'postgres';
    Connected := True;
  end;

  TeclaEnter := TMREnter.Create(Self);
  TeclaEnter.FocusEnabled := True;
  TeclaEnter.FocusColor :=  clInfoBk;

end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
  //Close;
  Application.Terminate;
end;

end.
