object frmRelCadProdutoComGrupoCategoria: TfrmRelCadProdutoComGrupoCategoria
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Relatorio de Produtos por Categorias'
  ClientHeight = 1061
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dtsProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 60
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 6
        Top = 10
        Width = 314
        Height = 34
        Caption = 'Listagem de Produtos Por Categoria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Agency FB'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 44
        Width = 718
        Height = 16
        Align = faBottom
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 280
      Width = 718
      Height = 44
      BandType = btFooter
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 18
        Align = faTop
        DrawKind = dkLine
        Pen.Width = 2
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 17
        Width = 59
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Agency FB'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 654
        Top = 23
        Width = 25
        Height = 17
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 682
        Top = 23
        Width = 25
        Height = 16
        Alignment = taRightJustify
        Info = itLastPageNumber
        Text = ''
      end
      object RLLabel2: TRLLabel
        Left = 677
        Top = 23
        Width = 6
        Height = 17
        Caption = '/'
      end
      object RLLabel3: TRLLabel
        Left = 607
        Top = 22
        Width = 40
        Height = 17
        Caption = 'P'#225'gina:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Agency FB'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object BandaDoGrupo: TRLGroup
      Left = 38
      Top = 98
      Width = 718
      Height = 182
      DataFields = 'categoriaId'
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        BandType = btHeader
        Color = clSilver
        ParentColor = False
        Transparent = False
        object RLLabel8: TRLLabel
          Left = 0
          Top = 2
          Width = 55
          Height = 20
          Caption = 'Categoria:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 55
          Top = 1
          Width = 24
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'CategoriaId'
          DataSource = dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Agency FB'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLLabel9: TRLLabel
          Left = 81
          Top = 2
          Width = 8
          Height = 19
          Caption = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 90
          Top = 1
          Width = 100
          Height = 22
          DataField = 'DescricaoCategoria'
          DataSource = dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Agency FB'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 21
        BandType = btColumnHeader
        object RLPanel1: TRLPanel
          Left = 0
          Top = 0
          Width = 718
          Height = 21
          Align = faClient
          Color = clInfoBk
          ParentColor = False
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 76
          Top = 1
          Width = 31
          Height = 20
          Caption = 'Nome'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 0
          Top = -1
          Width = 37
          Height = 20
          Caption = 'C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 394
          Top = -1
          Width = 117
          Height = 20
          Caption = 'Quantidade em Estoque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 596
          Top = -1
          Width = 72
          Height = 20
          Alignment = taRightJustify
          Caption = 'Valor Unitario'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 46
        Width = 718
        Height = 23
        object RLDBText1: TRLDBText
          Left = 3
          Top = -2
          Width = 50
          Height = 22
          DataField = 'ProdutoId'
          DataSource = dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Agency FB'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText2: TRLDBText
          Left = 76
          Top = 1
          Width = 31
          Height = 22
          DataField = 'Nome'
          DataSource = dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Agency FB'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText3: TRLDBText
          Left = 440
          Top = 2
          Width = 56
          Height = 22
          DataField = 'Quantidade'
          DataSource = dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Agency FB'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText4: TRLDBText
          Left = 615
          Top = 1
          Width = 29
          Height = 22
          DataField = 'Valor'
          DataSource = dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Agency FB'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 69
        Width = 718
        Height = 60
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 617
          Top = 8
          Width = 79
          Height = 20
          DataField = 'Quantidade'
          DataSource = dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDraw3: TRLDraw
          Left = 394
          Top = 0
          Width = 321
          Height = 12
          DrawKind = dkLine
          Pen.Width = 2
        end
        object RLLabel10: TRLLabel
          Left = 463
          Top = 7
          Width = 149
          Height = 20
          Caption = 'Quantidade Total em Estoque:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 460
          Top = 30
          Width = 152
          Height = 20
          Caption = 'M'#233'dia de Valor por Categoria:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 617
          Top = 30
          Width = 56
          Height = 20
          DataField = 'Valor'
          DataSource = dtsProdutos
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
        end
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.1.2 \251 Copyright '#194#169' 1999-2' +
      '021 Fortes Inform'#195#161'tica'
    DisplayName = 'Documento PDF'
    Left = 647
    Top = 634
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 703
    Top = 634
  end
  object QryProdutos: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select produtos.ProdutoId,'
      '       produtos.Nome,'
      '       produtos.Valor,'
      '       produtos.Quantidade,'
      '       produtos.CategoriaId,'
      '       categorias.descricao As DescricaoCategoria'
      '  from produtos'
      
        '      left join categorias on categorias.CategoriaId = produtos.' +
        'CategoriaId'
      '  order by produtos.categoriaId, produtoId'
      '')
    Params = <>
    Left = 521
    Top = 640
    object QryProdutosProdutoId: TIntegerField
      FieldName = 'ProdutoId'
      ReadOnly = True
    end
    object QryProdutosNome: TWideStringField
      FieldName = 'Nome'
      Size = 60
    end
    object QryProdutosValor: TFloatField
      FieldName = 'Valor'
    end
    object QryProdutosQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object QryProdutosCategoriaId: TIntegerField
      FieldName = 'CategoriaId'
    end
    object QryProdutosDescricaoCategoria: TWideStringField
      FieldName = 'DescricaoCategoria'
      Size = 50
    end
  end
  object dtsProdutos: TDataSource
    DataSet = QryProdutos
    Left = 592
    Top = 640
  end
end
