unit home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage, farmacia_basica,
  Vcl.StdCtrls, form_hospital, Vcl.Imaging.jpeg;

type
  Tfhome = class(TForm)
    Image2: TImage;
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fhome: Tfhome;

implementation

{$R *.dfm}

procedure Tfhome.Image1Click(Sender: TObject);
begin
  farmacia_basica.fbasica.Show;
end;

procedure Tfhome.Image2Click(Sender: TObject);
begin
   form_hospital.fhospital.Show;
end;

end.
