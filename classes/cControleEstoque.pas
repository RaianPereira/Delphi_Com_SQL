unit cControleEstoque;

interface

uses System.Classes,
     System.SysUtils,
     Vcl.Controls,
     Vcl.ExtCtrls,
     Vcl.Dialogs,
     ZAbstractConnection,
     ZConnection,
     ZAbstractRODataset,
     ZAbstractDataset,
     ZDataset,
     Data.DB,
     Datasnap.DBClient;


type
 TControleEstoque = class
   private
   ConexaoDB:TZConnection;
   F_ProdutoId:Integer;
   F_Quantidade:Double;
   public
   constructor Create(aConexao: TZConnection);
   destructor Destroy; override;
   function BaixarEstoque: Boolean;
   function RetornarEstoque: Boolean;
   published
   property ProdutoId:Integer read F_ProdutoId write F_ProdutoId;
   property Quantidade:Double read F_Quantidade write F_Quantidade;
 end;
implementation

{ TControleEstoque }

constructor TControleEstoque.Create(aConexao: TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TControleEstoque.Destroy;
begin

  inherited;
end;

function TControleEstoque.BaixarEstoque: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:= TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;

    Qry.SQL.Clear;
    Qry.SQL.Add(' UPDATE produtos ' +
                '    SET quantidade = quantidade - :qtdeBaixa ' +
                '  WHERE produtoId=:produtoId ');
    Qry.ParamByName('produtoId').AsInteger:=ProdutoId;
    Qry.ParamByName('qtdeBaixa').AsFloat:=Quantidade;
    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    except
      ConexaoDB.Rollback;
      Result:=false;
    end;

  finally
     if Assigned(Qry) then
          FreeAndNil(Qry);
  end;
end;


function TControleEstoque.RetornarEstoque: Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:= TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;

    Qry.SQL.Clear;
    Qry.SQL.Add(' UPDATE produtos ' +
                '    SET quantidade = quantidade + :qtdeBaixa ' +
                '  WHERE produtoId=:produtoId ');
    Qry.ParamByName('produtoId').AsInteger:=ProdutoId;
    Qry.ParamByName('qtdeBaixa').AsFloat:=Quantidade;

    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    except
      ConexaoDB.Rollback;
      Result:=false;
    end;

    finally
      if Assigned(Qry) then
          FreeAndNil(Qry);
    end;
end;

end.
