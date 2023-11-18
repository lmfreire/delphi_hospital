object fbasica: Tfbasica
  Left = 0
  Top = 0
  Caption = 'Farmacia Basica'
  ClientHeight = 653
  ClientWidth = 1098
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  WindowState = wsMaximized
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1098
    Height = 513
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1092
    ExplicitHeight = 504
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 360
      Height = 511
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 502
      object lbNome: TLabel
        Left = 64
        Top = 72
        Width = 80
        Height = 15
        Caption = 'Nome remedio'
      end
      object lbQuantidade: TLabel
        Left = 64
        Top = 144
        Width = 62
        Height = 15
        Caption = 'Quantidade'
      end
      object btnSalvar: TButton
        Left = 64
        Top = 256
        Width = 224
        Height = 65
        Cancel = True
        Caption = 'Salvar'
        TabOrder = 0
        OnClick = btnSalvarClick
      end
      object edNome: TEdit
        Left = 64
        Top = 104
        Width = 225
        Height = 23
        ImeName = 'Portuguese (Brazilian ABNT)'
        TabOrder = 1
      end
      object edQuantidade: TMaskEdit
        Left = 64
        Top = 176
        Width = 218
        Height = 23
        EditMask = '!99;1;_'
        ImeName = 'Portuguese (Brazilian ABNT)'
        MaxLength = 2
        TabOrder = 2
        Text = '  '
      end
    end
    object Panel4: TPanel
      Left = 361
      Top = 1
      Width = 736
      Height = 511
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 730
      ExplicitHeight = 502
      object dbGrid: TDBGrid
        Left = 1
        Top = 87
        Width = 734
        Height = 423
        Align = alClient
        DataSource = dtremedios.dsremedios
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object dbNav: TDBNavigator
        Left = 1
        Top = 1
        Width = 734
        Height = 86
        DataSource = dtremedios.dsremedios
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 728
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 513
    Width = 1098
    Height = 140
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 504
    ExplicitWidth = 1092
    object btnVoltar: TButton
      Left = 1
      Top = 1
      Width = 1096
      Height = 138
      Align = alClient
      Caption = 'Volta'
      DisabledImageName = 'btnvoltar'
      TabOrder = 0
      OnClick = btnVoltarClick
      ExplicitWidth = 1090
    end
  end
end
