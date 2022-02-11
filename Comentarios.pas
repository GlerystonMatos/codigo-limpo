unit Comentarios;

interface

implementation

// Exemplo 01 //

type
  TMockRequest = class
  end;

const
  HttpDataRegexp = '[SMTWF][a-z]{2}\\,\\s[0-9]{2}\\s[JFMASOND][a-z]{2}\\' +
    's[0-9]{4}\\s[0-9]{2}\\:[0-9]{2}\\:[0-9]{2}\\sGMT';
  Request = '';
  Response = '';
  FileResponse = '';
  Locale = '';
  // Exemplo: "Tue, 02 Apr 2003 22:18:49 GMT"

  // Exemplo 02 //

type
  TFuncionario = class
  public
    class var Flags: Integer;
    class var Idade: Integer;
    function eElegivelParaTodosBeneficios: Boolean;
  end;

const
  TodasFlags = 0;

  { TFuncionario }

function TFuncionario.eElegivelParaTodosBeneficios: Boolean;
begin

end;

procedure Exemplo01;
var
  funcionario: TFuncionario;
begin
  // Verifica se o funcionario tem direito a todos os beneficios
  if ((funcionario.Flags = TodasFlags) and (funcionario.Idade > 65)) then
  begin
  end;
end;

procedure Exemplo02;
var
  funcionario: TFuncionario;
begin
  if (funcionario.eElegivelParaTodosBeneficios()) then
  begin
  end;
end;

// Exemplo 03 //

{ Observe que preciso deletar as baixas
  antes de Editar o contas a receber, pois
  caso contr�rio a LibX, n�o permitir�,
  pois h� uma cr�tica: "Contas a Receber j�
  possui baixas. N�o pode ser editado." }

// Exemplo 04 //

type
  TSimpleDateFormat = class
  public
    constructor Create(formato: string);
    procedure SetTimeZone(timezone: string);
  end;

  TTimeZone = class
  public
    class function GetTimeZone(timezone: string): string;
  end;

  { TSimpleDateFormat }

constructor TSimpleDateFormat.Create(formato: string);
begin

end;

procedure TSimpleDateFormat.SetTimeZone(timezone: string);
begin

end;

{ TTimeZone }

class function TTimeZone.GetTimeZone(timezone: string): string;
begin

end;

function makeStandardHttpDateFormat: TSimpleDateFormat;
var
  df: TSimpleDateFormat;
begin
  // SimpleDateFormat n�o � thread-safe,
  // ent�o precisamos criar cada inst�ncia independentemente.
  df := TSimpleDateFormat.Create('EEE, dd MMM yyyy HH:mm:ss z');
  df.SetTimeZone(TTimeZone.GetTimeZone('GMTZ'));
  Result := df;
end;

// Exemplo 05 //

// TODO: realizar a baixa do vencimento

// Exemplo 06 //

// Este procedimento serve para salvar
procedure Salvar;
begin
end;

// Exemplo 06 //

const
  // **************** STATUS **************** //
  // Status
  stErro = 1;
  stAguardandoRoteiro = 2;
  stAguardandoEnvio = 3;
  // Eventos
  evValidarDados = 1;
  evConsultarTrecho = 2;
  evSolicitarTrecho = 3;

end.
