unit data_remedios;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.UI;

type
  Tdtremedios = class(TDataModule)
    conexaodb: TFDConnection;
    queryremedios: TFDQuery;
    queryremediosid: TFDAutoIncField;
    queryremediosnome: TStringField;
    queryremediosquantidade: TIntegerField;
    dsremedios: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    querymedicos: TFDQuery;
    dsmedicos: TDataSource;
    querymedicosid: TFDAutoIncField;
    querymedicosnome: TStringField;
    querymedicoscrm: TStringField;
    querypaciente: TFDQuery;
    querypacienteid: TFDAutoIncField;
    querypacientenome: TStringField;
    querypacienteidade: TIntegerField;
    querypacientesexo: TStringField;
    querypacientepeso: TIntegerField;
    querypacientealtura_cm: TIntegerField;
    querypacientealergias: TStringField;
    querypacientedesc_sintomas: TStringField;
    dsPaciente: TDataSource;
    dsTableRemedios: TDataSource;
    queryReceitas: TFDQuery;
    queryReceitasid: TFDAutoIncField;
    queryReceitasid_paciente: TIntegerField;
    queryReceitasid_medico: TIntegerField;
    queryReceitasdata: TDateField;
    queryReceitasdiagnostico: TStringField;
    queryReceitasid_remedio: TIntegerField;
    queryPacienteBuscar: TFDQuery;
    dsPacienteBuscar: TDataSource;
    queryPacienteBuscarid: TFDAutoIncField;
    queryPacienteBuscarnome: TStringField;
    queryPacienteBuscaridade: TIntegerField;
    queryPacienteBuscarsexo: TStringField;
    queryPacienteBuscarpeso: TIntegerField;
    queryPacienteBuscaraltura_cm: TIntegerField;
    queryPacienteBuscaralergias: TStringField;
    queryPacienteBuscardesc_sintomas: TStringField;
    queryMedicosBuscar: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    dsMedicosBuscar: TDataSource;
    queryRemediosBuscar: TFDQuery;
    FDAutoIncField2: TFDAutoIncField;
    StringField3: TStringField;
    IntegerField1: TIntegerField;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtremedios: Tdtremedios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
