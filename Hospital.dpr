program Hospital;

uses
  Vcl.Forms,
  home in 'home.pas' {fhome},
  farmacia_basica in 'farmacia_basica.pas' {fbasica},
  data_remedios in 'data_remedios.pas' {dtremedios: TDataModule},
  form_hospital in 'form_hospital.pas' {fhospital},
  form_medico in 'form_medico.pas' {fmedico},
  form_paciente in 'form_paciente.pas' {fpaciente},
  form_consulta in 'form_consulta.pas' {formConsulta};

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
  Application.CreateForm(TformConsulta, formConsulta);
  Application.Run;
end.
