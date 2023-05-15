object frmRelCadCliente: TfrmRelCadCliente
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Clientes'
  ClientHeight = 779
  ClientWidth = 792
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
    DataSource = dtsCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 62
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 6
        Top = 10
        Width = 180
        Height = 34
        Caption = 'Listagem de Clientes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Agency FB'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 46
        Width = 718
        Height = 16
        Align = faBottom
        DrawKind = dkLine
        Pen.Width = 2
      end
    end
    object Rodape: TRLBand
      Left = 38
      Top = 148
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
    object RLBand1: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 27
      object RLDBText1: TRLDBText
        Left = 3
        Top = -3
        Width = 42
        Height = 22
        DataField = 'clienteId'
        DataSource = dtsCliente
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
        DataSource = dtsCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Agency FB'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 287
        Top = 1
        Width = 29
        Height = 22
        DataField = 'email'
        DataSource = dtsCliente
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
        Width = 40
        Height = 22
        DataField = 'telefone'
        DataSource = dtsCliente
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
      Left = 38
      Top = 100
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
        Top = 1
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
        Left = 287
        Top = 1
        Width = 29
        Height = 20
        Caption = 'Email'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Agency FB'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 615
        Top = 1
        Width = 46
        Height = 20
        Alignment = taRightJustify
        Caption = 'Telefone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Agency FB'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object QryCliente: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    SQL.Strings = (
      'select clientes.clienteId,'
      '       clientes.Nome,'
      '       clientes.email,'
      '       clientes.telefone'
      '   from clientes'
      '   order by clientes.clienteId')
    Params = <>
    Left = 424
    Top = 224
    object QryClienteclienteId: TIntegerField
      FieldName = 'clienteId'
      ReadOnly = True
    end
    object QryClienteNome: TWideStringField
      FieldName = 'Nome'
      Size = 60
    end
    object QryClienteemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object QryClientetelefone: TWideStringField
      FieldName = 'telefone'
      Size = 14
    end
  end
  object dtsCliente: TDataSource
    DataSet = QryCliente
    Left = 512
    Top = 224
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.1.2 \251 Copyright '#194#169' 1999-2' +
      '021 Fortes Inform'#195#161'tica'
    DisplayName = 'Documento PDF'
    Left = 512
    Top = 288
  end
  object RLXLSFilter1: TRLXLSFilter
    FileName = 'C:\Users\Raian Almeida\Desktop\ljsdf.xls'
    DisplayName = 'Planilha Excel 97-2013'
    Left = 424
    Top = 288
  end
end
