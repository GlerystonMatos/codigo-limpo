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
    function estaSinalizada: Boolean;
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

function TCelulas.estaSinalizada: Boolean;
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
    if (celulas.estaSinalizada) then
    begin
      celulasSinalizadas.Add(celulas);
    end;
  end;

  Result := celulasSinalizadas;
end;

end.
