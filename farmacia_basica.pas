unit farmacia_basica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  FireDAC.Comp.Client, Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tfbasica = class(TForm)
    btnVoltar: TButton;
    edNome: TEdit;
    lbNome: TLabel;
    lbQuantidade: TLabel;
    edQuantidade: TMaskEdit;
    btnSalvar: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    dbGrid: TDBGrid;
    dbNav: TDBNavigator;
    procedure btnVoltarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbasica: Tfbasica;

implementation

{$R *.dfm}

uses data_remedios;

procedure Tfbasica.btnSalvarClick(Sender: TObject);
var
  dtRemedios : Tdtremedios;
  queryRemedios : TFDQuery;
  qtd : integer;
begin

  dtRemedios := data_remedios.dtremedios;

  queryRemedios := dtRemedios.queryremedios;

  queryRemedios.Append;

  try
    queryRemedios.FieldByName('nome').AsString := edNome.Text;
    //qtd := StrToInt();
    qtd := StrToInt(Trim(edQuantidade.Text));
    queryRemedios.FieldByName('quantidade').AsInteger := qtd;

    queryRemedios.Post;

    ShowMessage('Remedio cadastrado com sucesso');

  except on E: Exception do
    begin
      queryRemedios.Cancel;
      ShowMessage('Erro: ' + E.Message );
    end;

  end;




end;

procedure Tfbasica.btnVoltarClick(Sender: TObject);
begin
  Close;
end;

end.
