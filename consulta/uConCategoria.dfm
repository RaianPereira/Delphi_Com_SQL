inherited frmConCategoria: TfrmConCategoria
  Caption = 'Consulta de Categorias'
  ClientHeight = 417
  ClientWidth = 795
  ExplicitWidth = 801
  ExplicitHeight = 446
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 795
    inherited mskPesquisa: TMaskEdit
      Width = 793
      Text = ''
      TextHint = 'Digite sua Pesquisa'
      ExplicitWidth = 792
    end
  end
  inherited Panel2: TPanel
    Top = 376
    Width = 795
    inherited btnFechar: TBitBtn
      Left = 703
    end
  end
  inherited Panel3: TPanel
    Width = 795
    Height = 328
    inherited grdPesquisa: TDBGrid
      Width = 793
      Height = 326
      Columns = <
        item
          Expanded = False
          FieldName = 'categoriaId'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 633
          Visible = True
        end>
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'select categoriaId,'
      '          descricao'
      'from Categorias')
    object QryListagemcategoriaId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'categoriaId'
      ReadOnly = True
    end
    object QryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 50
    end
  end
end
