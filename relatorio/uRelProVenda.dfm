object frmRelProVenda: TfrmRelProVenda
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    AdjustableMargins = True
    DataSource = dtsVendas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Transparent = False
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 60
      BandType = btHeader
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 3
        Top = 7
        Width = 156
        Height = 34
        Caption = 'Resumo da Venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Agency FB'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 44
        Width = 718
        Height = 16
        Align = faBottom
        DrawKind = dkLine
        Pen.Width = 2
        Transparent = False
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 280
      Width = 718
      Height = 44
      BandType = btFooter
      Transparent = False
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 18
        Align = faTop
        DrawKind = dkLine
        Pen.Width = 2
        Transparent = False
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
        Transparent = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 654
        Top = 23
        Width = 25
        Height = 17
        Info = itPageNumber
        Text = ''
        Transparent = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 682
        Top = 23
        Width = 25
        Height = 16
        Alignment = taRightJustify
        Info = itLastPageNumber
        Text = ''
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 677
        Top = 23
        Width = 6
        Height = 17
        Caption = '/'
        Transparent = False
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
        Transparent = False
      end
    end
    object BandaDoGrupo: TRLGroup
      Left = 38
      Top = 98
      Width = 718
      Height = 182
      DataFields = 'vendaId'
      Transparent = False
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
          Width = 38
          Height = 20
          Caption = 'Venda:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 38
          Top = 1
          Width = 41
          Height = 22
          DataField = 'vendaId'
          DataSource = dtsVendas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Agency FB'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 25
        Transparent = False
        object RLDBText1: TRLDBText
          Left = 47
          Top = 2
          Width = 42
          Height = 22
          Alignment = taRightJustify
          DataField = 'clienteId'
          DataSource = dtsVendas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Agency FB'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 98
          Top = 2
          Width = 31
          Height = 22
          DataField = 'nome'
          DataSource = dtsVendas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Agency FB'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 653
          Top = -1
          Width = 54
          Height = 22
          DataField = 'dataVenda'
          DataSource = dtsVendas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Agency FB'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel5: TRLLabel
          Left = 0
          Top = 3
          Width = 41
          Height = 20
          Caption = 'Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 90
          Top = 3
          Width = 8
          Height = 20
          Caption = '-'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 618
          Top = 0
          Width = 29
          Height = 20
          Alignment = taRightJustify
          Caption = 'Data:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 114
        Width = 718
        Height = 42
        BandType = btSummary
        Transparent = False
        object RLDraw4: TRLDraw
          Left = 329
          Top = 0
          Width = 389
          Height = 12
          DrawKind = dkLine
          Pen.Width = 2
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 565
          Top = 14
          Width = 81
          Height = 20
          Caption = 'Total da Venda:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLDBResult2: TRLDBResult
          Left = 638
          Top = 14
          Width = 77
          Height = 20
          Alignment = taRightJustify
          DataField = 'totalVenda'
          DataSource = dtsVendas
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = []
          Info = riSum
          ParentFont = False
          Text = ''
          Transparent = False
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 50
        Width = 718
        Height = 64
        DataSource = dtsVendasItens
        Transparent = False
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 25
          BandType = btHeader
          Color = clInfoBk
          ParentColor = False
          Transparent = False
          object RLLabel10: TRLLabel
            Left = 0
            Top = 5
            Width = 48
            Height = 20
            Caption = 'Produtos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Agency FB'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel11: TRLLabel
            Left = 329
            Top = 4
            Width = 58
            Height = 20
            Alignment = taRightJustify
            Caption = 'Quantidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Agency FB'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLLabel12: TRLLabel
            Left = 442
            Top = 2
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
            Transparent = False
          end
          object RLLabel13: TRLLabel
            Left = 657
            Top = 4
            Width = 58
            Height = 20
            Alignment = taRightJustify
            Caption = 'Valor Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Agency FB'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 25
          Width = 718
          Height = 24
          Transparent = False
          object RLDBText3: TRLDBText
            Left = 0
            Top = 1
            Width = 50
            Height = 22
            Alignment = taRightJustify
            DataField = 'produtoId'
            DataSource = dtsVendasItens
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -17
            Font.Name = 'Agency FB'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLLabel4: TRLLabel
            Left = 51
            Top = 3
            Width = 8
            Height = 20
            Caption = '-'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Agency FB'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
          end
          object RLDBText6: TRLDBText
            Left = 59
            Top = 1
            Width = 31
            Height = 22
            DataField = 'Nome'
            DataSource = dtsVendasItens
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -17
            Font.Name = 'Agency FB'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDBText7: TRLDBText
            Left = 331
            Top = 1
            Width = 56
            Height = 22
            Alignment = taRightJustify
            DataField = 'quantidade'
            DataSource = dtsVendasItens
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -17
            Font.Name = 'Agency FB'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDBText8: TRLDBText
            Left = 446
            Top = 1
            Width = 66
            Height = 22
            Alignment = taRightJustify
            DataField = 'valorUnitario'
            DataSource = dtsVendasItens
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -17
            Font.Name = 'Agency FB'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
          object RLDBText9: TRLDBText
            Left = 653
            Top = 1
            Width = 62
            Height = 22
            Alignment = taRightJustify
            DataField = 'totalProduto'
            DataSource = dtsVendasItens
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -17
            Font.Name = 'Agency FB'
            Font.Style = []
            ParentFont = False
            Text = ''
            Transparent = False
          end
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
    Top = 626
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 703
    Top = 626
  end
  object QryVendas: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select vendas.vendaId,'
      '       vendas.clienteId,'
      '       clientes.nome,'
      '       vendas.dataVenda,'
      '       vendas.totalVenda'
      '  from vendas'
      '    inner join clientes on clientes.clienteId = vendas.clienteId'
      '  where vendas.vendaId =:vendaId')
    Params = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 3
      end>
    Left = 497
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 3
      end>
    object QryVendasvendaId: TIntegerField
      FieldName = 'vendaId'
      ReadOnly = True
    end
    object QryVendasclienteId: TIntegerField
      FieldName = 'clienteId'
      Required = True
    end
    object QryVendasnome: TWideStringField
      FieldName = 'nome'
      Size = 60
    end
    object QryVendasdataVenda: TDateTimeField
      FieldName = 'dataVenda'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryVendastotalVenda: TFloatField
      FieldName = 'totalVenda'
      DisplayFormat = '#0.00'
    end
  end
  object dtsVendas: TDataSource
    DataSet = QryVendas
    Left = 552
    Top = 432
  end
  object dtsVendasItens: TDataSource
    DataSet = QryVendasItens
    Left = 560
    Top = 496
  end
  object QryVendasItens: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select vendasItens.vendaId,'
      '       vendasItens.produtoId,'
      '       produtos.Nome,'
      '       vendasItens.quantidade,'
      '       vendasItens.valorUnitario,'
      '       vendasItens.totalProduto'
      '  from vendasItens'
      
        '    inner join produtos on produtos.produtoId = vendasItens.prod' +
        'utoId'
      '  where vendasItens.vendaId =:vendaId')
    Params = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 3
      end>
    Left = 473
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = 'vendaId'
        ParamType = ptInput
        Value = 3
      end>
    object QryVendasItensvendaId: TIntegerField
      FieldName = 'vendaId'
      Required = True
    end
    object QryVendasItensprodutoId: TIntegerField
      FieldName = 'produtoId'
      Required = True
    end
    object QryVendasItensNome: TWideStringField
      FieldName = 'Nome'
      Size = 60
    end
    object QryVendasItensquantidade: TFloatField
      FieldName = 'quantidade'
    end
    object QryVendasItensvalorUnitario: TFloatField
      FieldName = 'valorUnitario'
    end
    object QryVendasItenstotalProduto: TFloatField
      FieldName = 'totalProduto'
    end
  end
end
