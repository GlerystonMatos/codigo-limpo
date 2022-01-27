program Exemplos;

uses
  Vcl.Forms,
  NomesSignificativos in 'NomesSignificativos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
end.
