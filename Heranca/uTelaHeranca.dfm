object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'INFORME AQUI O T'#205'TULO'
  ClientHeight = 579
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 1008
    Height = 508
    ActivePage = tabManutencao
    Align = alClient
    TabOrder = 0
    object tabListagem: TTabSheet
      Caption = 'LIstagem'
      object pnlListagemTopo: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 79
        Align = alTop
        TabOrder = 0
        object mskPesquisar: TMaskEdit
          Left = 25
          Top = 27
          Width = 401
          Height = 23
          TabOrder = 0
          Text = ''
          TextHint = 'Digite sua Pesquisa'
        end
        object btnPesquisar: TBitBtn
          Left = 457
          Top = 26
          Width = 75
          Height = 25
          Caption = '&Pesquisar'
          TabOrder = 1
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 79
        Width = 1000
        Height = 399
        Align = alClient
        DataSource = dtsListagem
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 508
    Width = 1008
    Height = 71
    Align = alBottom
    TabOrder = 1
    object btnNovo: TBitBtn
      Left = 13
      Top = 24
      Width = 75
      Height = 25
      Caption = '&NOVO'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnAlterar: TBitBtn
      Left = 119
      Top = 24
      Width = 75
      Height = 25
      Caption = '&ALTERAR'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnCancelar: TBitBtn
      Left = 225
      Top = 24
      Width = 75
      Height = 25
      Caption = '&CANCELAR'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnGravar: TBitBtn
      Left = 332
      Top = 24
      Width = 75
      Height = 25
      Caption = '&GRAVAR'
      TabOrder = 3
      OnClick = btnGravarClick
    end
    object btnApagar: TBitBtn
      Left = 438
      Top = 24
      Width = 75
      Height = 25
      Caption = 'APAGA&R'
      TabOrder = 4
      OnClick = btnApagarClick
    end
    object btnFechar: TBitBtn
      Left = 912
      Top = 24
      Width = 75
      Height = 25
      Caption = '&FECHAR'
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnNavigator: TDBNavigator
      Left = 545
      Top = 24
      Width = 224
      Height = 25
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object qryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Params = <>
    Left = 620
    Top = 34
  end
  object dtsListagem: TDataSource
    DataSet = qryListagem
    Left = 724
    Top = 34
  end
end
