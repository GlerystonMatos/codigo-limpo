unit Funcoes;

interface

uses
  System.Classes;

procedure IncludeSetups;
procedure IncludeSuiteSetup;

implementation

// Exemplo 01 //

procedure Incluir;
begin
end;

procedure Editar;
begin
end;

function JaEstaCadastrado: Boolean;
begin
end;

procedure Salvar;
begin
  if (JaEstaCadastrado) then
    Incluir
  else
    Editar
end;

// Exemplo 02 //

procedure IncludeTestPageContent;
begin
end;

procedure IncludeTeardowns;
begin
end;

function IsSuite: Boolean;
begin
end;

procedure IncludeRegularSetup;
begin
end;

type
  TPage = class
  end;

function FindParentSuitePage: TPage;
begin
end;

procedure IncludeSetupsAndTeardownsPage;
begin
  IncludeSetups;
  IncludeTestPageContent;
  IncludeTeardowns;
end;

procedure IncludeSetups;
begin
  if (IsSuite) then
    IncludeSuiteSetup;
  IncludeRegularSetup;
end;

procedure IncludeSuiteSetup;
var
  parentPage: TPage;
begin
  parentPage := FindParentSuitePage;
  // add include statement with the path of the parentPage
end;

// Exemplo 03 //

type
  TEmployee = class
  public
    Kind: Integer;
  end;

  TMoney = class
  end;

const
  HOURLY = 1;
  SALARIED = 2;
  COMMISSIONED = 0;

function CalculateCommissionedPay(e: TEmployee): TMoney;
begin
end;

function CalculateHourlyPay(e: TEmployee): TMoney;
begin
end;

function CalculateSalariedPay(e: TEmployee): TMoney;
begin
end;

function CalculatePay(e: TEmployee): TMoney;
begin
  case e.Kind of
    COMMISSIONED:
      Result := CalculateCommissionedPay(e);
    HOURLY:
      Result := CalculateHourlyPay(e);
    SALARIED:
      Result := CalculateSalariedPay(e);
  end;
end;

function IsPayday(e: TEmployee; date: TDateTime): TMoney;
begin
end;

procedure DeliverPay(e: TEmployee; pay: TMoney);
begin
end;

// Exemplo 04 //

var
  edtCodigo: Boolean;
  edtNome: Boolean;

procedure HabilitarEdicao01(value: Boolean);
begin
  edtCodigo := value;
  edtNome := (not value);
end;

procedure HabilitarEdicao();
begin
  edtCodigo := True;
  edtNome := False;
end;

procedure HabilitarVisualizacao();
begin
  edtCodigo := False;
  edtNome := True;
end;

// Exemplo 05 //

procedure assertEquals(expected: string; actual: string);
begin
end;

type
  TStringListHelper = class helper for TStringList
    procedure WriteField(field: string);
  end;

procedure WriteField(var list: TStringList; field: string);
begin
end;

procedure Exemplo();
var
  field: string;
  list: TStringList;
begin
  WriteField(list, field);

  list.WriteField(field)
end;

{ TStringListHelper }

procedure TStringListHelper.WriteField(field: string);
begin

end;

// Exemplo 06 //

// Combinação verbo/substantivo
procedure Escrever(nome: string);
begin
end;

// Informa que o nome é um campo
procedure EscreverCampo(nome: string);
begin
end;

// Informa a ordem dos parâmetros
function VerificarEsperadoIgualAtual(Esperado: string; Atual: string): Boolean;
begin
end;

// Exemplo 07 //

procedure Exemplo01(nome: string; out valor: string);
begin
end;

function Exemplo02(nome: string): string;
begin
end;

function Exemplo03(nome: string; out valor): string;
begin
end;

// Exemplo 08 //

function Definir(atributo: string; valor: string): Boolean;
begin
end;

procedure Exemplo04();
begin
  if (Definir('nome', 'Gleryston Matos')) then
  begin
  end;
end;

function AtributoExiste(atributo: string): Boolean;
begin
end;

procedure DefinirAtributo(atributo: string; valor: string);
begin
end;

procedure Exemplo05();
begin
  if (AtributoExiste('nome')) then
  begin
    DefinirAtributo('nome', 'Gleryston Matos');
  end;
end;

end.
