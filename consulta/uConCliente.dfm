inherited frmConCliente: TfrmConCliente
  Caption = 'Clientes'
  ClientWidth = 914
  ExplicitWidth = 920
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 914
    inherited mskPesquisa: TMaskEdit
      Width = 912
      Text = ''
      TextHint = 'Digite Sua Pesquisa'
    end
  end
  inherited Panel2: TPanel
    Width = 914
    inherited btnFechar: TBitBtn
      Left = 822
    end
  end
  inherited Panel3: TPanel
    Width = 914
    inherited grdPesquisa: TDBGrid
      Width = 912
      Columns = <
        item
          Expanded = False
          FieldName = 'nome'
          Width = 275
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'endereco'
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade'
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone'
          Width = 107
          Visible = True
        end>
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'select clientes.nome,'
      #9'   clientes.endereco,'
      #9'   clientes.cidade,'
      #9'   clientes.telefone'
      'from clientes')
    object QryListagemnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object QryListagemendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 60
    end
    object QryListagemcidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 60
    end
    object QryListagemtelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 14
    end
  end
end
