if OBJECT_ID('vendas') is null
begin
create table vendas(
		vendaId int identity(1,1) not null,
		clienteId int not null,
		dataVenda datetime default getdate(),
		totalVenda decimal(18,5) default 0.00000,

		primary key (vendaId),
		constraint FK_VendasClientes foreign key (clienteId)
		references clientes(clienteId)
)
end


if OBJECT_ID('vendasItens') is null
begin
create table vendasItens(
			vendaId int not null,
			produtoId int not null,
			valorUnitario decimal(18,5) default 0.00000,
			quantidade decimal(18,5) default 0.00000,
			totalProduto decimal(18,5) default 0.00000,
			primary key(vendaId,produtoId),
			constraint FK_VendasItensProdutos foreign key (produtoId)
			references produtos(produtoId) 
)
end