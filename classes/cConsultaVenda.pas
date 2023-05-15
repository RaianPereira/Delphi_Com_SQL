unit cConsultaVenda;

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
     System.SysUtils;

type
  TConsultaVenda = class
    private
      ConexaoDB:TZConnection;
      F_produto: string;
      F_dataVenda: TDateTime;
      F_valor: currency;
      F_email: string;
      F_valorUnitario: currency;
      F_totalVenda: currency;
      F_categoria: string;
      F_nome: string;
      F_telefone: string;
    public
      constructor Create(aConexao:TZConnection);
      destructor Destroy; override;
      function Selecionar(id:integer):Boolean;
    published
      property nome: string read F_nome write F_nome;
      property telefone: string read F_telefone write F_telefone;
      property email: string read F_email write F_email;
      property produto: string read F_produto write F_produto;
      property valor: currency read F_valor write F_valor;
      property categoria: string read F_categoria write F_categoria;
      property valorUnitario: currency read F_valorUnitario write F_valorUnitario;
      property dataVenda: TDateTime read F_dataVenda write F_dataVenda;
      property totalVenda: currency read F_totalVenda write F_totalVenda;

  end;

implementation

{$region 'Construtores e Destrutores'}
constructor TConsultaVenda.Create(aConexao:TZConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TConsultaVenda.Destroy;
begin

  inherited;
end;
function TConsultaVenda.Selecionar(id: Integer): Boolean;
var Qry:TZQuery;
begin
  try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Text :=
    'select clientes.nome, clientes.telefone, clientes.email,                              '+
    'produtos.nome as ''produto'', produtos.valor, Categorias.descricao as ''categorias'', '+
    'vendasItens.valorUnitario, vendas.dataVenda, vendas.totalVenda                        '+
	  'from vendas                                                                           '+
	  'join vendasItens on vendasItens.vendaId = vendas.vendaId                              '+
	  'join clientes on clientes.clienteId = vendas.clienteId                                '+
	  'join produtos on produtos.produtoId = vendasItens.produtoId                           '+
	  'join Categorias on Categorias.categoriaId = produtos.categoriaId                      '+
	  'where produtos.produtoId = :produtoId                                                 ';
    Qry.ParamByName('produtoId').AsInteger:=id;
    Try
      Qry.Open;
      Self.F_nome           := Qry.FieldByName('nome').AsString;
      Self.F_produto        := Qry.FieldByName('produto').AsString;
      Self.F_dataVenda      := Qry.FieldByName('dataVenda').AsDateTime;
      Self.F_valor          := Qry.FieldByName('valor').AsCurrency;
      Self.F_email          := Qry.FieldByName('email').AsString;
      Self.F_valorUnitario  := Qry.FieldByName('valorUnitario').AsCurrency;
      Self.F_totalVenda     := Qry.FieldByName('totalVenda').AsCurrency;
      Self.F_categoria      := Qry.FieldByName('categorias').AsString;
      Self.F_telefone       := Qry.FieldByName('telefone').AsString;
    Except
      Result:=false;
    End;
  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

{$endregion}


end.
