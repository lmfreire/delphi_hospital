object fpaciente: Tfpaciente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Paciente'
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
    Left = 136
    Top = 27
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object lIdade: TLabel
    Left = 136
    Top = 99
    Width = 29
    Height = 15
    Caption = 'Idade'
  end
  object lSexo: TLabel
    Left = 138
    Top = 171
    Width = 25
    Height = 15
    Caption = 'Sexo'
  end
  object lpeso: TLabel
    Left = 137
    Top = 235
    Width = 25
    Height = 15
    Caption = 'Peso'
  end
  object lAltura: TLabel
    Left = 336
    Top = 27
    Width = 32
    Height = 15
    Caption = 'Altura'
  end
  object lAlergias: TLabel
    Left = 336
    Top = 99
    Width = 42
    Height = 15
    Caption = 'Alergias'
  end
  object lSintomas: TLabel
    Left = 336
    Top = 171
    Width = 49
    Height = 15
    Caption = 'Sintomas'
  end
  object edNome: TEdit
    Left = 136
    Top = 48
    Width = 145
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 0
  end
  object edIdade: TMaskEdit
    Left = 137
    Top = 120
    Width = 144
    Height = 23
    EditMask = '!99;1;_'
    MaxLength = 2
    TabOrder = 1
    Text = '  '
  end
  object ComboBox1: TComboBox
    Left = 137
    Top = 192
    Width = 145
    Height = 23
    TabOrder = 2
    Items.Strings = (
      'M-Masculino'
      'F-Feminino')
  end
  object edPeso: TMaskEdit
    Left = 137
    Top = 256
    Width = 144
    Height = 23
    EditMask = '!999;1;_'
    MaxLength = 3
    TabOrder = 3
    Text = '   '
  end
  object edAltura: TMaskEdit
    Left = 336
    Top = 48
    Width = 142
    Height = 23
    EditMask = '!999;1;_'
    MaxLength = 3
    TabOrder = 4
    Text = '   '
  end
  object edAlergias: TEdit
    Left = 336
    Top = 120
    Width = 153
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 5
  end
  object edSintomas: TEdit
    Left = 336
    Top = 192
    Width = 153
    Height = 23
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 6
  end
  object Button1: TButton
    Left = 136
    Top = 328
    Width = 145
    Height = 41
    Caption = 'Cadastrar'
    DisabledImageName = 'btnCadastrar'
    TabOrder = 7
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 568
    Top = 296
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      OnClick = Fechar1Click
    end
  end
end
