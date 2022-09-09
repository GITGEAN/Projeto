program Project2;

uses
  Vcl.Forms,
  TelaPrincipal in '..\TelaPrincipal.pas' {Form2},
  DataModulePrincipal in '..\DataModulePrincipal.pas' {DataModule3: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule3, DataModule3);
  Application.Run;
end.
