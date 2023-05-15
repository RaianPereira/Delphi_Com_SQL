object frmRelVendaPorData: TfrmRelVendaPorData
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Relatorio Venda por Data'
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
    DataSource = dtsVenda
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
        Left = 3
        Top = 3
        Width = 216
        Height = 34
        Caption = 'Listagem Venda por Data'
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
      DataFields = 'dataVenda'
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
          Width = 29
          Height = 20
          Caption = 'Data:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 27
          Top = 1
          Width = 54
          Height = 22
          DataField = 'dataVenda'
          DataSource = dtsVenda
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
          Width = 83
          Height = 20
          Caption = 'Nome do Cliente'
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
        object RLLabel7: TRLLabel
          Left = 589
          Top = -1
          Width = 79
          Height = 20
          Alignment = taRightJustify
          Caption = 'Valor da Venda'
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
          Width = 42
          Height = 22
          DataField = 'clienteId'
          DataSource = dtsVenda
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
          DataField = 'nome'
          DataSource = dtsVenda
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
          Width = 53
          Height = 22
          DataField = 'totalVenda'
          DataSource = dtsVenda
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
        Height = 44
        BandType = btSummary
        object RLDBResult1: TRLDBResult
          Left = 617
          Top = 13
          Width = 77
          Height = 20
          DataField = 'totalVenda'
          DataSource = dtsVenda
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
          Left = 536
          Top = 13
          Width = 77
          Height = 20
          Caption = 'Total por Data:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 113
        Width = 718
        Height = 40
        BandType = btSummary
        object RLDraw4: TRLDraw
          Left = 397
          Top = 0
          Width = 321
          Height = 12
          DrawKind = dkLine
          Pen.Width = 2
        end
        object RLLabel6: TRLLabel
          Left = 551
          Top = 14
          Width = 62
          Height = 20
          Caption = 'Total Geral:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Agency FB'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 615
          Top = 14
          Width = 77
          Height = 20
          DataField = 'totalVenda'
          DataSource = dtsVenda
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
      'SELECT vendas.vendaId,'
      #9'       vendas.clienteId,'
      #9#9'     clientes.nome,'
      #9#9'     vendas.dataVenda,'
      #9#9'     vendas.totalVenda'
      #9'  FROM vendas'
      
        #9'       INNER JOIN clientes on clientes.clienteId = vendas.clien' +
        'teId'
      '   WHERE vendas.dataVenda BETWEEN :DataInicio AND :DataFim'
      #9' ORDER BY vendas.dataVenda, vendas.clienteId')
    Params = <
      item
        DataType = ftDate
        Name = 'DataInicio'
        ParamType = ptInput
        Value = '10/04/2023'
      end
      item
        DataType = ftDate
        Name = 'DataFim'
        ParamType = ptInput
        Value = '02/05/2023'
      end>
    Left = 505
    Top = 624
    ParamData = <
      item
        DataType = ftDate
        Name = 'DataInicio'
        ParamType = ptInput
        Value = '10/04/2023'
      end
      item
        DataType = ftDate
        Name = 'DataFim'
        ParamType = ptInput
        Value = '02/05/2023'
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
    end
    object QryVendastotalVenda: TFloatField
      FieldName = 'totalVenda'
    end
  end
  object dtsVenda: TDataSource
    DataSet = QryVendas
    Left = 568
    Top = 616
  end
end
