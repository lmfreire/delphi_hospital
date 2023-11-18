program Hospital;

uses
  Vcl.Forms,
  //home in 'C:\Users\Matheus\Documents\Embarcadero\Studio\Projects\home.pas' {fhome},
  home in 'home.pas' {fhome},
  //farmacia_basica in 'C:\Users\Matheus\Documents\Embarcadero\Studio\Projects\farmacia_basica.pas' {fbasica},
  farmacia_basica in 'farmacia_basica.pas' {fbasica},
  //data_remedios in 'C:\Users\Matheus\Documents\Embarcadero\Studio\Projects\data_remedios.pas' {dtremedios: TDataModule},
  data_remedios in 'data_remedios.pas' {dtremedios: TDataModule},
  form_hospital in 'form_hospital.pas' {fhospital},
  form_medico in 'form_medico.pas' {fmedico},
  form_paciente in 'form_paciente.pas' {fpaciente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfhome, fhome);
  Application.CreateForm(Tfbasica, fbasica);
  Application.CreateForm(Tdtremedios, dtremedios);
  Application.CreateForm(Tfhospital, fhospital);
  Application.CreateForm(Tfmedico, fmedico);
  Application.CreateForm(Tfpaciente, fpaciente);
  Application.Run;
end.
