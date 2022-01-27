unit NomesSignificativos;

interface

uses
  System.Generics.Collections;

implementation

// Exemplo 01 //

var
  d: Integer; // Tempo decorrido em dias

  tempoDecorridoEmDias: Integer;
  diasDesdeACriacao: Integer;
  diasDesdeAModificacao: Integer;
  IdadeDoArquivoEmDias: Integer;

  // Exemplo 02 //

type
  TIntegerArray = array of Integer;

  TCelulas = class
  private
    fCelulas: TIntegerArray;
  public
    function EstaSinalizada: Boolean;
  end;

var
  aLista: TList<TIntegerArray>;
  tabuleiroJogo: TList<TIntegerArray>;
  tabuleiroCampoMinado: TList<TCelulas>;

const
  VALOR_STATUS = 0;
  SINALIZADO = 4;

function ObterEntao(): TList<TIntegerArray>;
var
  i: Integer;
  lista: TList<TIntegerArray>;
begin
  lista := TList<TIntegerArray>.Create();
  for i := 0 to aLista.Count - 1 do
  begin
    if (aLista[i][0] = 4) then
    begin
      lista.Add(aLista[i]);
    end;
  end;

  Result := lista;
end;

function obterCelulasSinalizadas(): TList<TIntegerArray>;
var
  indice: Integer;
  celulas: TIntegerArray;
  celulasSinalizadas: TList<TIntegerArray>;
begin
  celulasSinalizadas := TList<TIntegerArray>.Create();
  for indice := 0 to Pred(tabuleiroJogo.Count) do
  begin
    celulas := tabuleiroJogo[indice];
    if (celulas[VALOR_STATUS] = SINALIZADO) then
    begin
      celulasSinalizadas.Add(celulas);
    end;
  end;

  Result := celulasSinalizadas;
end;

{ TCell }

function TCelulas.EstaSinalizada: Boolean;
begin
  Result := fCelulas[VALOR_STATUS] = SINALIZADO;
end;

function obterListaCelulasSinalizadas(): TList<TCelulas>;
var
  indice: Integer;
  celulas: TCelulas;
  celulasSinalizadas: TList<TCelulas>;
begin
  celulasSinalizadas := TList<TCelulas>.Create();
  for indice := 0 to Pred(tabuleiroJogo.Count) do
  begin
    celulas := tabuleiroCampoMinado[indice];
    if (celulas.EstaSinalizada) then
    begin
      celulasSinalizadas.Add(celulas);
    end;
  end;

  Result := celulasSinalizadas;
end;

// Exemplo 03 //

type
  TConta = class
  end;

var
  listaDeContas01: array of TConta;
  listaDeContas02: TList<TConta>;
  arrayDeContas01: array of TConta;

  // Exemplo 04 //

procedure XYZControladorParaManuseioEficienteDeString;
begin

end;

procedure XYZControladorParaArmazenamentoEficienteDeString;
begin

end;

// Exemplo 05 //

procedure CopiarCaracteres01(a1: array of Char; a2: array of Char);
var
  i: Integer;
begin
  for i := 0 to Length(a1) - 1 do
  begin
    a2[i] := a1[i];
  end;
end;

procedure CopiarCaracteres(origem: array of Char; destino: array of Char);
var
  indice: Integer;
begin
  for indice := 0 to Pred(Length(origem)) do
  begin
    destino[indice] := origem[indice];
  end;
end;

// Exemplo 06 //

type
  TGrupo = class
  public
    class procedure ObterGruposAtivo;
    class procedure ObterGruposAtivos;
    class procedure ObterGruposAtivosInfo;
  end;

  { TGrupo }

class procedure TGrupo.ObterGruposAtivo;
begin

end;

class procedure TGrupo.ObterGruposAtivos;
begin

end;

class procedure TGrupo.ObterGruposAtivosInfo;
begin

end;

procedure ExemploGrupos;
begin
  TGrupo.ObterGruposAtivo;
  TGrupo.ObterGruposAtivos;
  TGrupo.ObterGruposAtivosInfo;
end;

// Exemplo 07 //

type
  TDtaRcrd102 = class
  public
    fPssStr: string;
    function ObterYmdHms: TDateTime;
  end;

  { TDtaRcrd102 }

function TDtaRcrd102.ObterYmdHms: TDateTime;
begin

end;

type
  TFuncoesData = class
  public
    fPesquisa: string;
    function ObterDataHora: TDateTime;
  end;

  { TFuncoesData }

function TFuncoesData.ObterDataHora: TDateTime;
begin

end;

// Exemplo 08 //

procedure Exemplo08Original;
var
  s: double;
  i: Integer;
  j: Integer;
  t: array of Integer;
begin
  for i := 0 to 34 do
  begin
    s := s + (t[j] * 4) / 5;
  end;
end;

procedure Exemplo08;
var
  soma: double;
  indice: Integer;
  segundoIndice: Integer;
  diasDeTarefasReais: Integer;
  semanasDeTarefasReais: double;
  estimativaDeTarefa: array of Integer;
const
  NUMERO_DE_TAREFAS = 34;
  DIAS_REAIS_POR_DIA_IDEAL = 4;
  DIAS_DE_TRABALHO_POR_SEMANA = 5;
begin
  for indice := 0 to NUMERO_DE_TAREFAS do
  begin
    diasDeTarefasReais := estimativaDeTarefa[segundoIndice] * DIAS_REAIS_POR_DIA_IDEAL;
    semanasDeTarefasReais := diasDeTarefasReais / DIAS_DE_TRABALHO_POR_SEMANA;
    soma := soma + semanasDeTarefasReais;
  end;
end;

// Exemplo 09 //

var
  TelefoneInteger: string;
  TelefoneString: Integer;

  // Exemplo 10 //

type
  TCliente = class
  end;

  TPagina = class
  end;

  TEndereco = class
  end;

  // Exemplo 11 //

procedure EnviarPagamento;
begin
end;

procedure Salvar;
begin
end;

procedure GerarFatura;
begin
end;

// Exemplo 12 //

type
  TComplex = class
  public
    constructor Create(numero: double);
    class function ApartirDeNumeroReal(numero: Real): TComplex;
  end;

  { TComplex }

class function TComplex.ApartirDeNumeroReal(numero: Real): TComplex;
begin

end;

constructor TComplex.Create(numero: double);
begin

end;

// Exemplo 13 //

var
  firstName, lastName, street, city, state, zipcode: string;
  // uma melhor solução
  addrFirstName, addrLastName, adrState: string;

  // uma melhor solução
type
  TAddres = class
  end;

// Exemplo 14 //

type
  TEnderecos = class
  public
    function ObterRuaEndereco: string;
    function ObterCidadeEndereco: string;
  end;

{ TEnderecos }

function TEnderecos.ObterCidadeEndereco: string;
begin

end;

function TEnderecos.ObterRuaEndereco: string;
begin

end;

end.
