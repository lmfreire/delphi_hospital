unit form_hospital;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, form_medico, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, form_paciente, Vcl.StdCtrls, form_consulta;

type
  Tfhospital = class(TForm)
    MainMenu1: TMainMenu;
    C1: TMenuItem;
    Cadastrar1: TMenuItem;
    Medico1: TMenuItem;
    Cadastro1: TMenuItem;
    Fechar1: TMenuItem;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Consultar1: TMenuItem;
    procedure Fechar1Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure Cadastrar1Click(Sender: TObject);
    procedure Consultar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fhospital: Tfhospital;

implementation

{$R *.dfm}

uses data_remedios;

procedure Tfhospital.Cadastrar1Click(Sender: TObject);
begin
  form_paciente.fpaciente.Show;
end;

procedure Tfhospital.Cadastro1Click(Sender: TObject);
begin
  form_medico.fmedico.Show;
end;

procedure Tfhospital.Consultar1Click(Sender: TObject);
begin
  form_consulta.formConsulta.Show;
end;

procedure Tfhospital.Fechar1Click(Sender: TObject);
begin
  Close;
end;

end.
