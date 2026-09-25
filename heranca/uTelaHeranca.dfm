object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'INFORME AQUI O TITULO'
  ClientHeight = 495
  ClientWidth = 988
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
    Width = 988
    Height = 416
    ActivePage = tabListagem
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 400
    object tabListagem: TTabSheet
      Caption = 'Listagem'
      object pnlListagemTopo: TPanel
        Left = 0
        Top = 0
        Width = 980
        Height = 81
        Align = alTop
        TabOrder = 0
        object mskPesquisar: TMaskEdit
          Left = 0
          Top = 30
          Width = 399
          Height = 23
          TabOrder = 0
          Text = ''
          TextHint = 'Digite sua pesquisa'
        end
        object btnPesquisar: TBitBtn
          Left = 405
          Top = 29
          Width = 106
          Height = 25
          Caption = '&PESQUISAR'
          TabOrder = 1
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 81
        Width = 980
        Height = 305
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
    Top = 416
    Width = 988
    Height = 79
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 415
    object btnNovo: TBitBtn
      Left = 4
      Top = 26
      Width = 75
      Height = 25
      Caption = '&NOVO'
      TabOrder = 0
    end
    object btnAlterar: TBitBtn
      Left = 85
      Top = 26
      Width = 75
      Height = 25
      Caption = '&ALTERAR'
      TabOrder = 1
    end
    object btnCANCELAR: TBitBtn
      Left = 166
      Top = 26
      Width = 75
      Height = 25
      Caption = '&CANCELAR'
      TabOrder = 2
    end
    object btnGravar: TBitBtn
      Left = 247
      Top = 26
      Width = 75
      Height = 25
      Caption = '&GRAVAR'
      TabOrder = 3
    end
    object btnApagar: TBitBtn
      Left = 328
      Top = 26
      Width = 75
      Height = 25
      Caption = 'APAGA&R'
      TabOrder = 4
    end
    object btnFechar: TBitBtn
      Left = 909
      Top = 26
      Width = 75
      Height = 25
      Caption = '&FECHAR'
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnNavigator: TDBNavigator
      Left = 409
      Top = 26
      Width = 224
      Height = 25
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object qryListagem: TFDQuery
    Connection = dtmPrincipal.ConexaoDB
    Left = 548
    Top = 42
  end
  object dtsListagem: TDataSource
    DataSet = qryListagem
    Left = 628
    Top = 42
  end
end
