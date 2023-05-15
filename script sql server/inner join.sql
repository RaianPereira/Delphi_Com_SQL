select clientes.nome, clientes.clienteId, clientes.telefone, clientes.email, produtos.nome as 'produto', produtos.valor, Categorias.descricao as 'categorias', vendasItens.valorUnitario, vendas.dataVenda, vendas.totalVenda
	from vendas 
	join vendasItens on vendasItens.vendaId = vendas.vendaId
	join clientes on clientes.clienteId = vendas.clienteId 
	join produtos on produtos.produtoId = vendasItens.produtoId
	join Categorias on Categorias.categoriaId = produtos.categoriaId
	where clientes.clienteId = 1
