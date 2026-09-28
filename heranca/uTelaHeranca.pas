unit uTelaHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uDtmConexao,
  uEnum;

type
  TfrmTelaHeranca = class(TForm)
    pgcPrincipal: TPageControl;
    pnlRodape: TPanel;
    tabListagem: TTabSheet;
    tabManutencao: TTabSheet;
    pnlListagemTopo: TPanel;
    mskPesquisar: TMaskEdit;
    btnPesquisar: TBitBtn;
    grdListagem: TDBGrid;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnNavigator: TDBNavigator;
    qryListagem: TFDQuery;
    dtsListagem: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
    EstadoDoCadastro: TEstadoDoCadastro;
    procedure ControlarBotoes(btnNovo, btnAlterar, btnCancelar,
          btnGravar, btnApagar:TBitBtn; Navegador: TDBNavigator; pgcPrincipal:
          TPageControl; Flag: Boolean);
    procedure ControlarIndiceTab(pgcPrincipal: TPageControl; Indice: Integer);
  public
    { Public declarations }
  end;

var
  frmTelaHeranca: TfrmTelaHeranca;

implementation

{$R *.dfm}

// Procedimentos de Controle de Tela
procedure TfrmTelaHeranca.btnNovoClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
                  btnNavigator, pgcPrincipal, false);
  EstadoDoCadastro := ecInserir;

end;

procedure TfrmTelaHeranca.ControlarBotoes(btnNovo, btnAlterar, btnCancelar,
          btnGravar, btnApagar:TBitBtn; Navegador: TDBNavigator; pgcPrincipal:
          TPageControl; Flag: Boolean);
begin
  btnNovo.Enabled       := Flag;
  btnApagar.Enabled     := Flag;
  btnAlterar.Enabled    := Flag;
  Navegador.Enabled     := Flag;
  pgcPrincipal.Pages[0].TabVisible := Flag;
  btnCancelar.Enabled   := not(Flag);
  btnGravar.Enabled     := not(Flag);
end;

procedure TfrmTelaHeranca.ControlarIndiceTab(pgcPrincipal: TPageControl;
          Indice: Integer);
begin
  if (pgcPrincipal.Pages[Indice].TabVisible) then
    pgcPrincipal.TabIndex := Indice;

end;

procedure TfrmTelaHeranca.btnAlterarClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
                  btnNavigator, pgcPrincipal, false);
  EstadoDoCadastro := ecAlterar;
end;

procedure TfrmTelaHeranca.btnApagarClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
                  btnNavigator, pgcPrincipal, true);
  EstadoDoCadastro := ecNenhum;
end;

procedure TfrmTelaHeranca.btnCancelarClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
                  btnNavigator, pgcPrincipal, true);
  ControlarIndiceTab(pgcPrincipal, 0);
  EstadoDoCadastro := ecNenhum;
end;

procedure TfrmTelaHeranca.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTelaHeranca.btnGravarClick(Sender: TObject);
begin
  Try
    ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar,
                    btnNavigator, pgcPrincipal, true);
    ControlarIndiceTab(pgcPrincipal, 0);
  Finally
    EstadoDoCadastro := ecNenhum;
  End;

end;

procedure TfrmTelaHeranca.FormCreate(Sender: TObject);
begin
  qryListagem.Connection := DtmPrincipal.ConexaoDB;
  dtsListagem.DataSet := qryListagem;
  grdListagem.DataSource := dtsListagem;
  btnNavigator.DataSource := dtsListagem;
end;

end.
