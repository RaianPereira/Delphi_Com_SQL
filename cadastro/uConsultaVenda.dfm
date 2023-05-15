inherited frmConsultaVenda: TfrmConsultaVenda
  Caption = 'Consulta da Venda'
  ClientHeight = 586
  ClientWidth = 1269
  ExplicitWidth = 1275
  ExplicitHeight = 615
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 1269
    Height = 540
    ActivePage = tabManutencao
    ExplicitWidth = 1269
    ExplicitHeight = 540
    inherited tabListagem: TTabSheet
      ExplicitWidth = 1261
      ExplicitHeight = 512
      inherited pnlListagemTopo: TPanel
        Width = 1261
        ExplicitWidth = 1261
      end
      inherited grdListagem: TDBGrid
        Width = 1261
        Height = 459
        Columns = <
          item
            Expanded = False
            FieldName = 'nome'
            Width = 224
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Width = 334
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'categorias'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'produto'
            Width = 294
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorUnitario'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataVenda'
            Width = 65
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 1261
      ExplicitHeight = 512
      object edtNomeCliente: TLabeledEdit
        Tag = 2
        Left = 12
        Top = 93
        Width = 661
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 50
        TabOrder = 0
      end
      object edtTelefone: TLabeledEdit
        Tag = 2
        Left = 12
        Top = 166
        Width = 661
        Height = 21
        EditLabel.Width = 42
        EditLabel.Height = 13
        EditLabel.Caption = 'Telefone'
        MaxLength = 50
        TabOrder = 1
      end
      object edtEmail: TLabeledEdit
        Tag = 2
        Left = 12
        Top = 238
        Width = 661
        Height = 21
        EditLabel.Width = 24
        EditLabel.Height = 13
        EditLabel.Caption = 'Email'
        MaxLength = 50
        TabOrder = 2
      end
      object edtProduto: TLabeledEdit
        Tag = 2
        Left = 12
        Top = 314
        Width = 661
        Height = 21
        EditLabel.Width = 38
        EditLabel.Height = 13
        EditLabel.Caption = 'Produto'
        MaxLength = 50
        TabOrder = 3
      end
      object edtValor: TLabeledEdit
        Tag = 2
        Left = 691
        Top = 166
        Width = 542
        Height = 21
        EditLabel.Width = 24
        EditLabel.Height = 13
        EditLabel.Caption = 'Valor'
        MaxLength = 50
        TabOrder = 4
      end
      object edtCategorias: TLabeledEdit
        Tag = 2
        Left = 696
        Top = 93
        Width = 542
        Height = 21
        EditLabel.Width = 52
        EditLabel.Height = 13
        EditLabel.Caption = 'Categorias'
        MaxLength = 50
        TabOrder = 5
      end
      object edtValorUnitario: TLabeledEdit
        Tag = 2
        Left = 696
        Top = 238
        Width = 537
        Height = 21
        EditLabel.Width = 64
        EditLabel.Height = 13
        EditLabel.Caption = 'Valor Unit'#225'rio'
        MaxLength = 50
        TabOrder = 6
      end
      object edtTotalVenda: TLabeledEdit
        Tag = 2
        Left = 696
        Top = 314
        Width = 537
        Height = 21
        EditLabel.Width = 57
        EditLabel.Height = 13
        EditLabel.Caption = 'Total Venda'
        MaxLength = 50
        TabOrder = 7
      end
      object edtDataVenda: TLabeledEdit
        Tag = 2
        Left = 696
        Top = 391
        Width = 542
        Height = 21
        EditLabel.Width = 71
        EditLabel.Height = 13
        EditLabel.Caption = 'Data da Venda'
        MaxLength = 50
        TabOrder = 8
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 540
    Width = 1269
    ExplicitTop = 540
    ExplicitWidth = 1269
    inherited btnNovo: TBitBtn
      Visible = False
    end
    inherited btnAlterar: TBitBtn
      Left = 99
      Top = 14
      Visible = False
      ExplicitLeft = 99
      ExplicitTop = 14
    end
    inherited btnCancelar: TBitBtn
      Left = 13
      Top = 11
      Caption = '&Voltar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000DDDDDDDDDDDD
        DDDDDDDDDDDDDCDBDACFC0B0C2A787BC9B75BC9B75C2A788CFC0B0DCDBDADDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD0C2B3B48C5EAE7F49AE7F49AE
        7F49AE7F49AE7F49AE7F49B58D5ECFC2B3DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        C9B59EAF804AAE7F49AE7F49AE7F49AE7F49AE7F49AE7F49AE7F49AE7F49AF80
        4AC9B59FDDDDDDDDDDDDDDDDDDCFC2B2AF804AAE7F49AE7F49AE7F49AE7F49AE
        7F49B68B5AD1B798B1844FAE7F49AE7F49AF814BD0C3B4DDDDDDDCDBDAB48C5E
        AE7F49AE7F49AE7F49AE7F49AE7F49B68C5CF3ECE4FFFFFFC5A47DAE7F49AE7F
        49AE7F49B48B5CDCDBDACFC0B0AE7F49AE7F49AE7F49AE7F49AE7F49B68C5CF3
        ECE4FFFFFFE1D0BDAF814BAE7F49AE7F49AE7F49AE7F49CFC1B1C2A687AE7F49
        AE7F49AE7F49AE7F49B58B59F2EAE1FFFFFFE3D3C1AF814CAE7F49AE7F49AE7F
        49AE7F49AE7F49C2A787BC9B75AE7F49AE7F49AE7F49AE7F49EEE4D9FFFFFFE2
        D1BDAF814BAE7F49AE7F49AE7F49AE7F49AE7F49AE7F49BC9C76BC9A74AE7F49
        AE7F49AE7F49AE7F49E6D7C7FFFFFFECE1D5B28652AE7F49AE7F49AE7F49AE7F
        49AE7F49AE7F49BC9B75C1A686AE7F49AE7F49AE7F49AE7F49B18450EADDCFFF
        FFFFEDE2D6B28652AE7F49AE7F49AE7F49AE7F49AE7F49C2A787CFC0AFAE7F49
        AE7F49AE7F49AE7F49AE7F49B18450EADED0FFFFFFECE1D5B18551AE7F49AE7F
        49AE7F49AE7F49CFC0B0DCDBDAB48C5DAE7F49AE7F49AE7F49AE7F49AE7F49B1
        8450EADED0FFFFFFC5A37CAE7F49AE7F49AE7F49B48C5DDCDBDADDDDDDCFC1B1
        AF804AAE7F49AE7F49AE7F49AE7F49AE7F49B1844FC4A27BAF804AAE7F49AE7F
        49AF804AD0C2B3DDDDDDDDDDDDDDDDDDC9B59DAF804AAE7F49AE7F49AE7F49AE
        7F49AE7F49AE7F49AE7F49AE7F49AF804AC9B59EDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDCFC1B1B48B5CAE7F49AE7F49AE7F49AE7F49AE7F49AE7F49B48C5DCFC2
        B2DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDCDBDACFC0B0C1A686BC
        9B75BC9B75C2A687CFC0B0DCDBDADDDDDDDDDDDDDDDDDDDDDDDD}
      ExplicitLeft = 13
      ExplicitTop = 11
    end
    inherited btnGravar: TBitBtn
      Left = 487
      Top = -31
      Visible = False
      ExplicitLeft = 487
      ExplicitTop = -31
    end
    inherited btnApagar: TBitBtn
      Left = 616
      Top = -22
      Visible = False
      ExplicitLeft = 616
      ExplicitTop = -22
    end
    inherited btnFechar: TBitBtn
      Left = 1178
      ExplicitLeft = 1178
    end
    inherited btnNavigator: TDBNavigator
      Left = 104
      Top = 11
      Hints.Strings = ()
      ExplicitLeft = 104
      ExplicitTop = 11
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'select clientes.nome,'
      '       clientes.clienteId,'
      '       clientes.telefone,'
      '       clientes.email,'
      '       produtos.nome as '#39'produto'#39','
      '       produtos.valor,'
      '       Categorias.descricao as '#39'categorias'#39','
      '       vendasItens.valorUnitario,'
      '       vendas.dataVenda,'
      '       vendas.totalVenda,'
      '       produtos.produtoId'
      #9'from vendas'
      #9'join vendasItens on vendasItens.vendaId = vendas.vendaId'
      #9'join clientes on clientes.clienteId = vendas.clienteId'
      #9'join produtos on produtos.produtoId = vendasItens.produtoId'
      
        #9'join Categorias on Categorias.categoriaId = produtos.categoriaI' +
        'd')
    Left = 876
    Top = 40
    object QryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'clientes'
      Size = 60
    end
    object QryListagemtelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'clientes'
      Size = 14
    end
    object QryListagememail: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Origin = 'clientes'
      Size = 100
    end
    object QryListagemproduto: TWideStringField
      DisplayLabel = 'Produto'
      FieldName = 'produto'
      Origin = 'produto'
      ReadOnly = True
      Size = 60
    end
    object QryListagemvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'produtos'
    end
    object QryListagemcategorias: TWideStringField
      DisplayLabel = 'Categoria'
      FieldName = 'categorias'
      Origin = 'categorias'
      ReadOnly = True
      Size = 50
    end
    object QryListagemvalorUnitario: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'valorUnitario'
      Origin = 'vendasItens'
    end
    object QryListagemdataVenda: TDateTimeField
      DisplayLabel = 'Data Venda'
      FieldName = 'dataVenda'
      Origin = 'vendas'
    end
    object QryListagemtotalVenda: TFloatField
      DisplayLabel = 'Total '
      FieldName = 'totalVenda'
      Origin = 'vendas'
    end
    object QryListagemclienteId: TIntegerField
      FieldName = 'clienteId'
      Origin = 'clientes'
      ReadOnly = True
    end
    object QryListagemprodutoId: TIntegerField
      FieldName = 'produtoId'
      Origin = 'produtos'
      ReadOnly = True
    end
  end
  inherited dtsListagem: TDataSource
    Left = 1220
  end
  object QryListagemProdutos: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select produtos.nome,'
      '       produtos.descricao,'
      '       produtos.valor,'
      '       produtos.quantidade,'
      '       produtos.produtoId'
      'from produtos')
    Params = <>
    Left = 628
    Top = 32
    object QryListagemProdutosnome: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 36
      FieldName = 'nome'
      Origin = 'produtos'
      Size = 60
    end
    object QryListagemProdutosdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 255
      FieldName = 'descricao'
      Size = 255
    end
    object QryListagemProdutosvalor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'valor'
    end
    object QryListagemProdutosquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'quantidade'
    end
    object QryListagemProdutosprodutoId: TIntegerField
      DisplayWidth = 10
      FieldName = 'produtoId'
      ReadOnly = True
    end
  end
  object dtsListagemProdutos: TDataSource
    DataSet = QryListagemProdutos
    Left = 716
    Top = 32
  end
end
