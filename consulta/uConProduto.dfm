inherited frmConProduto: TfrmConProduto
  Caption = 'Produtos'
  ClientWidth = 942
  ExplicitWidth = 948
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 942
    inherited mskPesquisa: TMaskEdit
      Width = 940
      Text = ''
      TextHint = 'Digite Sua Pesquisa'
      ExplicitLeft = 0
      ExplicitTop = 25
    end
  end
  inherited Panel2: TPanel
    Width = 942
    inherited btnFechar: TBitBtn
      Left = 850
    end
  end
  inherited Panel3: TPanel
    Width = 942
    inherited grdPesquisa: TDBGrid
      Width = 940
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'select produtos.nome,'
      #9'   produtos.descricao,'
      #9'   produtos.valor,'
      #9'   produtos.quantidade'
      'from produtos')
    object QryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 35
      FieldName = 'nome'
      Size = 60
    end
    object QryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 87
      FieldName = 'descricao'
      Size = 255
    end
    object QryListagemvalor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 12
      FieldName = 'valor'
    end
    object QryListagemquantidade: TFloatField
      DisplayLabel = 'Qtd.Estoque'
      DisplayWidth = 10
      FieldName = 'quantidade'
    end
  end
end
