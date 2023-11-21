unit form_consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, data_remedios, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls, System.StrUtils;

type
  TformConsulta = class(TForm)
    MainMenu1: TMainMenu;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    edPaciente: TEdit;
    btnSalvar: TButton;
    lPaciente: TLabel;
    lMedico: TLabel;
    edMedico: TEdit;
    edData: TMaskEdit;
    edDate: TLabel;
    edDiagnostico: TEdit;
    lDiagnostico: TLabel;
    lRemedio: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    comboRemedios: TComboBox;
    procedure Fechar1Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formConsulta: TformConsulta;

implementation

{$R *.dfm}


procedure TformConsulta.btnSalvarClick(Sender: TObject);
var
  qryReceitas : TFDQuery;
  idPaciente : string;
  idMedico : string;
  item : string;
begin

  qryReceitas := data_remedios.dtremedios.queryReceitas;

  with data_remedios.dtremedios.queryPacienteBuscar do
  begin
      Active := True;
      sql.Add('select TOP 1 id from paciente where nome like' + QuotedStr('%' + edPaciente.Text + '%'));
      if not Active then Open;
      while not Eof do
      begin
        idPaciente := FieldByName('id').AsString;

        Next;
      end;
      Close;
  end;

  with data_remedios.dtremedios.queryMedicosBuscar do
  begin
    Active := True;
    sql.Add('select TOP 1 id from medicos where crm like' + QuotedStr('%' + edMedico.Text + '%'));
    if not Active then Open;
    while not Eof do
    begin
      idMedico := FieldByName('id').AsString;

      Next;
    end;
    Close;
  end;

  qryReceitas.Append;

  try
    qryReceitas.FieldByName('id_paciente').AsInteger := StrToInt(idPaciente);
    qryReceitas.FieldByName('id_medico').AsInteger := StrToInt(idMedico);
    item := comboRemedios.Items[comboRemedios.ItemIndex];
    item := SplitString(item, '-')[0];
    qryReceitas.FieldByName('id_remedio').AsInteger := StrToInt(item);
    qryReceitas.FieldByName('data').AsString := edData.Text;
    qryReceitas.FieldByName('diagnostico').AsString := edDiagnostico.Text;

    qryReceitas.Post;

    ShowMessage('Receita cadastrada com sucesso');

  except on E: Exception do
    begin
      qryReceitas.Cancel;
      ShowMessage('Erro: ' + E.Message );
    end;

  end;

end;

procedure TformConsulta.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TformConsulta.FormShow(Sender: TObject);
var
  qryConsulta : TFDQuery;
  texto : string;
begin

  qryConsulta := data_remedios.dtremedios.queryremedios;

  qryConsulta.SQL.Text := 'select * from remedios';
  qryConsulta.Open;

  while not qryConsulta.Eof do
  begin

    texto := qryConsulta.FieldByName('id').asString + '-' + qryConsulta.FieldByName('nome').asString;

    comboRemedios.Items.Add(texto);

    qryConsulta.Next;
  end;



end;

end.
