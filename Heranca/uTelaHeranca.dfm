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
  TextHeight = 15
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 1008
    Height = 508
    ActivePage = tabListagem
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 504
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
    ExplicitTop = 509
    object btnNovo: TBitBtn
      Left = 21
      Top = 24
      Width = 75
      Height = 25
      Caption = '&NOVO'
      TabOrder = 0
    end
    object btnAlterar: TBitBtn
      Left = 110
      Top = 24
      Width = 75
      Height = 25
      Caption = '&ALTERAR'
      TabOrder = 1
    end
    object btnCancelar: TBitBtn
      Left = 200
      Top = 24
      Width = 75
      Height = 25
      Caption = '&CANCELAR'
      TabOrder = 2
    end
    object btnGravar: TBitBtn
      Left = 288
      Top = 24
      Width = 75
      Height = 25
      Caption = '&GRAVAR'
      TabOrder = 3
    end
    object btnApagar: TBitBtn
      Left = 376
      Top = 24
      Width = 75
      Height = 25
      Caption = 'APAGA&R'
      TabOrder = 4
    end
    object btnFechar: TBitBtn
      Left = 912
      Top = 24
      Width = 75
      Height = 25
      Caption = '&FECHAR'
      TabOrder = 5
    end
    object btnNavigator: TDBNavigator
      Left = 461
      Top = 24
      Width = 224
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
end
