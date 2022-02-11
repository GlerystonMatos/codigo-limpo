program Exemplos;

uses
  Vcl.Forms,
  NomesSignificativos in 'NomesSignificativos.pas',
  Funcoes in 'Funcoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
end.
