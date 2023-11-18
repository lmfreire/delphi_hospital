unit form_paciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, data_remedios,
  FireDAC.Comp.Client, System.StrUtils;

type
  Tfpaciente = class(TForm)
    MainMenu1: TMainMenu;
    Fechar1: TMenuItem;
    edNome: TEdit;
    lNome: TLabel;
    edIdade: TMaskEdit;
    lIdade: TLabel;
    ComboBox1: TComboBox;
    lSexo: TLabel;
    edPeso: TMaskEdit;
    lpeso: TLabel;
    lAltura: TLabel;
    edAltura: TMaskEdit;
    edAlergias: TEdit;
    lAlergias: TLabel;
    lSintomas: TLabel;
    edSintomas: TEdit;
    Button1: TButton;
    procedure Fechar1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpaciente: Tfpaciente;

implementation

{$R *.dfm}

procedure Tfpaciente.Button1Click(Sender: TObject);
var
  dtRemedios : Tdtremedios;
  qryPacientes : TFDQuery;
  item : string;
  qtd : integer;
begin
  qryPacientes := data_remedios.dtremedios.querypaciente;

  qryPacientes.Append;

  try
    qryPacientes.FieldByName('nome').AsString := edNome.Text;

    qtd := StrToInt(Trim(edIdade.Text));
    qryPacientes.FieldByName('idade').AsInteger := qtd;

    item := ComboBox1.Items[ComboBox1.ItemIndex];
    item := SplitString(item, '-')[0];
    qryPacientes.FieldByName('sexo').AsString := item;

    qtd := StrToInt(Trim(edPeso.Text));
    qryPacientes.FieldByName('peso').AsInteger := qtd;

    qtd := StrToInt(Trim(edAltura.Text));
    qryPacientes.FieldByName('altura_cm').AsInteger := qtd;

    qryPacientes.FieldByName('alergias').AsString := edAlergias.Text;

    qryPacientes.FieldByName('desc_sintomas').AsString := edSintomas.Text;

    qryPacientes.Post;

    ShowMessage('Paciente cadastrado com sucesso');

  except on E: Exception do
    begin
      qryPacientes.Cancel;
      ShowMessage('Erro: ' + E.Message );
    end;

  end;

end;

procedure Tfpaciente.Fechar1Click(Sender: TObject);
begin
  Close;
end;

end.
