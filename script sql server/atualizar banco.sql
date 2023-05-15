USE Vendas

  INSERT INTO Categorias (descricao) VALUES ('Celulares'), ('Computadores'), ('Tablets')

  INSERT INTO produtos (nome, descricao, valor, quantidade, categoriaId)
       VALUES ('Smartphone Samsung Wave Y S5380 Prata', 
	           'Celular Samsung Wave Y S5380 Desbloqueado Quadriband, utilize diversos recursos ao mesmo tempo e com mais velocidade com o processador de 832 MHz.',
			   399.90,
			   100,
			   1),
			   ('Smartphone Samsung Galaxy J5 Prime', 
	           'Smartphone Samsung Galaxy J5 Prime SM-G570M, Quad Core 1.4Ghz, Android 6.0.1,Tela 5, 32GB, 13MP, Leitor Digital, Dual Chip, Desbl - Dourado.',
			   752.90,
			   50,
			   1),
			   ('Computador HP Intel Core I3-7100', 
	           'Computador HP Intel Core I3-7100, 4GB, HD 500GB, Windows 10 Pro - 2SE06LA',
			   2148.10,
			   40,
			   2),
			   ('Notebook Acer 15.6´ Core I3-6006', 
	           'Notebook Acer 15.6´ Core I3-6006, 4GB, 500GB.',
			   2352.82,
			   100,
			   2),
			   ('Tablet Multilaser M9-3G Quad-Core 9', 
	           'Tablet Multilaser M9-3G Quad-Core 9, 8GB, Bluetooth, Dual Chip, Câmera Preto - NB247.',
			   599.50,
			   80,
			   3)

INSERT INTO clientes (nome, endereco, cidade, bairro, estado, telefone, cep, email, dataNascimento)
VALUES ('Severino Oliver Luan Fogaça', 'Av. Joaquim Ferreira Souto 524', 'Agudos', 'CENTRO', 'SP', 
        '(14) 2808-3989', '17.120-970', 'severinooliverluanfogaca-81@lphbrasil.com.br', '22/03/1996')

INSERT INTO clientes (nome, endereco, cidade, bairro, estado, telefone, cep, email, dataNascimento)
VALUES ('Iago Vitor Matheus Porto', 'Rua Antônio Sartoratto, s/n', 'Eleutério', 'CENTRO', 'SP', 
        '(19) 2513-6046', '17.120-971', 'iagovitormatheusporto..iagovitormatheusporto@hotmail.com.br', '22/03/1996')
