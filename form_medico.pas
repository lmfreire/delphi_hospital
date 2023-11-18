unit form_medico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, data_remedios, FireDAC.Comp.Client;

type
  Tfmedico = class(TForm)
    MainMenu1: TMainMenu;
    Fechar1: TMenuItem;
    edNome: TEdit;
    lNome: TLabel;
    edCrm: TEdit;
    lCrm: TLabel;
    btnCadastro: TButton;
    procedure Fechar1Click(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmedico: Tfmedico;

implementation

{$R *.dfm}

procedure Tfmedico.btnCadastroClick(Sender: TObject);
var
  qryMedicos : TFDQuery;
begin
  qryMedicos := data_remedios.dtremedios.querymedicos;

  qryMedicos.Append;

  try
    qryMedicos.FieldByName('nome').AsString := edNome.Text;
    qryMedicos.FieldByName('crm').AsString := edCrm.Text;

    qryMedicos.Post;

    ShowMessage('Medico cadastrado com sucesso');

  except on E: Exception do
    begin
      qryMedicos.Cancel;
      ShowMessage('Erro: ' + E.Message );
    end;

  end;
end;

procedure Tfmedico.Fechar1Click(Sender: TObject);
begin
  Close;
end;

end.