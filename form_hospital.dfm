object fhospital: Tfhospital
  Left = 0
  Top = 0
  Caption = 'Hospital'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poMainFormCenter
  WindowState = wsMaximized
  TextHeight = 15
  object Panel1: TPanel
    Left = 312
    Top = 0
    Width = 316
    Height = 442
    Align = alRight
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 306
    ExplicitHeight = 433
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 314
      Height = 15
      Align = alTop
      Caption = 'Medicos'
      ExplicitWidth = 45
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 72
      Width = 314
      Height = 369
      Align = alClient
      DataSource = dtremedios.dsmedicos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 16
      Width = 314
      Height = 56
      DataSource = dtremedios.dsmedicos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alTop
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 312
    Height = 442
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 306
    ExplicitHeight = 433
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 310
      Height = 15
      Align = alTop
      Caption = 'Pacientes'
      ExplicitWidth = 50
    end
    object DBGrid2: TDBGrid
      Left = 1
      Top = 72
      Width = 310
      Height = 369
      Align = alClient
      DataSource = dtremedios.dsPaciente
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object DBNavigator2: TDBNavigator
      Left = 1
      Top = 16
      Width = 310
      Height = 56
      DataSource = dtremedios.dsPaciente
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alTop
      TabOrder = 1
      ExplicitWidth = 304
    end
  end
  object MainMenu1: TMainMenu
    Left = 536
    Top = 352
    object C1: TMenuItem
      Caption = 'Paciente'
      object Cadastrar1: TMenuItem
        Caption = 'Cadastro'
        OnClick = Cadastrar1Click
      end
    end
    object Medico1: TMenuItem
      Caption = 'Medico'
      object Cadastro1: TMenuItem
        Caption = 'Cadastro'
        OnClick = Cadastro1Click
      end
      object Consultar1: TMenuItem
        Caption = 'Consultar'
        OnClick = Consultar1Click
      end
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      OnClick = Fechar1Click
    end
  end
end
