object fmedico: Tfmedico
  Left = 0
  Top = 0
  Caption = 'Cadastro M'#233'dico'
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
  object lNome: TLabel
    Left = 40
    Top = 75
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object lCrm: TLabel
    Left = 40
    Top = 187
    Width = 26
    Height = 15
    Caption = 'CRM'
  end
  object edNome: TEdit
    Left = 40
    Top = 96
    Width = 217
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 0
  end
  object edCrm: TEdit
    Left = 40
    Top = 208
    Width = 217
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 1
  end
  object btnCadastro: TButton
    Left = 48
    Top = 304
    Width = 161
    Height = 49
    Caption = 'Cadastrar'
    TabOrder = 2
    OnClick = btnCadastroClick
  end
  object MainMenu1: TMainMenu
    Left = 584
    Top = 376
    object Fechar1: TMenuItem
      Caption = 'Voltar'
      OnClick = Fechar1Click
    end
  end
end
