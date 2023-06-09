unit cAtualizacaoBancoDeDados;

interface

uses System.Classes,
     Vcl.Controls,
     Vcl.ExtCtrls,
     Vcl.Dialogs,
     ZAbstractConnection,
     ZConnection,
     ZAbstractRODataset,
     ZAbstractDataset,
     ZDataset,
     Data.DB,
     System.SysUtils;

type
 TAtualizaBancoDados = class
  private
  public
    ConexaoDB:TZConnection;
    constructor Create(aConexao:TZConnection);
    procedure ExecutaDiretoBancoDeDados(aScript: string);
end;

type
  TAtualizaBancoDadosMSSQL = class
  private
    ConexaoDB:TZConnection;
  public
    function AtualizarBancoDadosMSSQL: Boolean;
    constructor Create(aConexao:TZConnection);
end;

implementation

uses cAtualizacaoTabelaMSSQL, cAtualizacaoCampoMSSQL;

{ TAtualizaBancoDados }

constructor TAtualizaBancoDados.Create(aConexao: TZConnection);
begin
  ConexaoDB:=aConexao;
end;

procedure TAtualizaBancoDados.ExecutaDiretoBancoDeDados(aScript: string);
var Qry:TZQuery;
begin
  try
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(aScript);
    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    except
      ConexaoDB.Rollback;
    end;
  finally
    Qry.Close;
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

{ TAtualizaBancoDadosMSSQL }

function TAtualizaBancoDadosMSSQL.AtualizarBancoDadosMSSQL: Boolean;
var oAtualizarDB:TAtualizaBancoDados;
    oTabela: TAtualizacaoTableMSSQL;
    oCampo:TAtualizacaoCampoMSSQL;
begin
  try
    //Classe Principal de Atualização
    oAtualizarDB:=TAtualizaBancoDados.Create(ConexaoDB);


    //Classe Filha De Atualização
    oTabela:=TAtualizacaoTableMSSQL.Create(ConexaoDB);
    oCampo:=TAtualizacaoCampoMSSQL.Create(ConexaoDB);
  finally
     if Assigned(oAtualizarDB) then
        FreeAndNil(oAtualizarDB);

     if Assigned(oTabela) then
        FreeAndNil(oTabela);
  end;
end;

constructor TAtualizaBancoDadosMSSQL.Create(aConexao: TZConnection);
begin
  ConexaoDB:=aConexao;
end;

end.
