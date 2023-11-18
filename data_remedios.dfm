object dtremedios: Tdtremedios
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object conexaodb: TFDConnection
    Params.Strings = (
      'Database=project'
      'User_Name=sa'
      'Password=mudar123'
      'Server=DESKTOP-S0OEE31\SQLEXPRESS'
      'DriverID=mssQL')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 48
  end
  object queryremedios: TFDQuery
    Active = True
    Connection = conexaodb
    SQL.Strings = (
      'select * from remedios')
    Left = 192
    Top = 48
    object queryremediosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object queryremediosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object queryremediosquantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
  end
  object dsremedios: TDataSource
    DataSet = queryremedios
    Left = 320
    Top = 48
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 840
    Top = 40
  end
  object querymedicos: TFDQuery
    Active = True
    Connection = conexaodb
    SQL.Strings = (
      'select * from medicos')
    Left = 184
    Top = 232
    object querymedicosid: TFDAutoIncField
      DisplayWidth = 5
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object querymedicosnome: TStringField
      DisplayWidth = 25
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object querymedicoscrm: TStringField
      DisplayWidth = 21
      FieldName = 'crm'
      Origin = 'crm'
      Size = 13
    end
  end
  object dsmedicos: TDataSource
    DataSet = querymedicos
    Left = 328
    Top = 216
  end
  object querypaciente: TFDQuery
    Active = True
    Connection = conexaodb
    SQL.Strings = (
      'select * from paciente')
    Left = 168
    Top = 352
    object querypacienteid: TFDAutoIncField
      DisplayWidth = 3
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object querypacientenome: TStringField
      DisplayWidth = 14
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object querypacienteidade: TIntegerField
      DisplayWidth = 10
      FieldName = 'idade'
      Origin = 'idade'
    end
    object querypacientesexo: TStringField
      DisplayWidth = 4
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 1
    end
    object querypacientepeso: TIntegerField
      DisplayWidth = 10
      FieldName = 'peso'
      Origin = 'peso'
    end
    object querypacientealtura_cm: TIntegerField
      DisplayWidth = 10
      FieldName = 'altura_cm'
      Origin = 'altura_cm'
    end
    object querypacientealergias: TStringField
      DisplayWidth = 24
      FieldName = 'alergias'
      Origin = 'alergias'
      Size = 255
    end
    object querypacientedesc_sintomas: TStringField
      DisplayWidth = 255
      FieldName = 'desc_sintomas'
      Origin = 'desc_sintomas'
      Size = 255
    end
  end
  object dsPaciente: TDataSource
    DataSet = querypaciente
    Left = 304
    Top = 360
  end
  object dsTableRemedios: TDataSource
    DataSet = queryReceitas
    Left = 320
    Top = 136
  end
  object queryReceitas: TFDQuery
    Active = True
    Connection = conexaodb
    SQL.Strings = (
      'select * from receitas')
    Left = 184
    Top = 152
    object queryReceitasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object queryReceitasid_paciente: TIntegerField
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
    end
    object queryReceitasid_medico: TIntegerField
      FieldName = 'id_medico'
      Origin = 'id_medico'
    end
    object queryReceitasdata: TDateField
      FieldName = 'data'
      Origin = 'data'
    end
    object queryReceitasdiagnostico: TStringField
      FieldName = 'diagnostico'
      Origin = 'diagnostico'
      Size = 50
    end
    object queryReceitasid_remedio: TIntegerField
      FieldName = 'id_remedio'
      Origin = 'id_remedio'
    end
  end
  object queryPacienteBuscar: TFDQuery
    Active = True
    Connection = conexaodb
    SQL.Strings = (
      'select * from paciente')
    Left = 160
    Top = 464
    object queryPacienteBuscarid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object queryPacienteBuscarnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object queryPacienteBuscaridade: TIntegerField
      FieldName = 'idade'
      Origin = 'idade'
    end
    object queryPacienteBuscarsexo: TStringField
      FieldName = 'sexo'
      Origin = 'sexo'
      Size = 1
    end
    object queryPacienteBuscarpeso: TIntegerField
      FieldName = 'peso'
      Origin = 'peso'
    end
    object queryPacienteBuscaraltura_cm: TIntegerField
      FieldName = 'altura_cm'
      Origin = 'altura_cm'
    end
    object queryPacienteBuscaralergias: TStringField
      FieldName = 'alergias'
      Origin = 'alergias'
      Size = 255
    end
    object queryPacienteBuscardesc_sintomas: TStringField
      FieldName = 'desc_sintomas'
      Origin = 'desc_sintomas'
      Size = 255
    end
  end
  object dsPacienteBuscar: TDataSource
    DataSet = queryPacienteBuscar
    Left = 296
    Top = 464
  end
  object queryMedicosBuscar: TFDQuery
    Active = True
    Connection = conexaodb
    SQL.Strings = (
      'select * from medicos')
    Left = 448
    Top = 224
    object FDAutoIncField1: TFDAutoIncField
      DisplayWidth = 5
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object StringField1: TStringField
      DisplayWidth = 25
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object StringField2: TStringField
      DisplayWidth = 21
      FieldName = 'crm'
      Origin = 'crm'
      Size = 13
    end
  end
  object dsMedicosBuscar: TDataSource
    DataSet = queryMedicosBuscar
    Left = 592
    Top = 224
  end
  object queryRemediosBuscar: TFDQuery
    Active = True
    Connection = conexaodb
    SQL.Strings = (
      'select * from remedios')
    Left = 440
    Top = 56
    object FDAutoIncField2: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object StringField3: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object IntegerField1: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
  end
  object DataSource1: TDataSource
    DataSet = queryRemediosBuscar
    Left = 568
    Top = 56
  end
end
