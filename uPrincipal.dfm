object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 625
  ClientWidth = 990
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mainPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StbPrincipal: TStatusBar
    Left = 0
    Top = 606
    Width = 990
    Height = 19
    Panels = <
      item
        Width = 150
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 990
    Height = 41
    Align = alTop
    Color = clInfoText
    ParentBackground = False
    TabOrder = 1
    OnDblClick = Panel1DblClick
    object Label1: TLabel
      Left = 1
      Top = 2
      Width = 92
      Height = 34
      Caption = 'DashBoard'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindow
      Font.Height = -29
      Font.Name = 'Agency FB'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 941
      Top = 1
      Width = 48
      Height = 39
      Cursor = crHandPoint
      Align = alRight
      Alignment = taRightJustify
      Caption = 'Panel2'
      TabOrder = 0
      OnClick = Panel2Click
      object Image1: TImage
        Left = 9
        Top = 1
        Width = 105
        Height = 105
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000001E0000
          001E08060000003B30AEA2000000097048597300000B1300000B1301009A9C18
          0000023A4944415478DAED964F4814511CC777A053908702A13FC67A114BFA23
          1BC54284E8CD6A373DE8C193B06E2E928597422B960E21E14185FEECB6DDBAD8
          4151303B054950901628B8E841902C45B1C31E3C05EBE7C7BE60196666DF8C3A
          1D6AE0C37767E6FDDE67DF9B7FCF08FCA5CDF82FB6DBF2F97C051185AB1004D9
          3F005B300FEF61C4308C1553DD11A28AE39F5C89293C4E24A11D16601CB2B00A
          BFA11CCEAB3F542B72B887E8BBAA8F1171F62F6A8B298A10AFE10BDCA578A644
          FB10F118C2D041FB118EC595F8829698825BC400DCA1E8B9EE2551B537892119
          396C6B8BD548DFC00D0ADEB99116F5D1488CC2341C2E2956D734ABA6D6D5482D
          FA4A10CF6056479C212A69D8E04124375EC4E294B3583D32CB102E7523D9888F
          12C72C4E6DD35FD6492C37548C46E77633C53A9B59FC96F88AF8BEDFE225E281
          3C7F7E8B73C475C41FF65242BF87882EFAEDB7133F24066990DB63711D3141BF
          6596E2FDDA10B7117D884FFB2D96F7F759C4D7FC16CB576D18F10B5B318D4E11
          072DEA7F52B8E6417A89F80841EA7F3889E58D15B2E8436E8EA807B13C21596A
          3B8B8F3B8913C553E3718ABB8947504D5FEB3AE25F70059A2898F22895CFE218
          34D3C7A4F9BC9D381D285C6779E06F53987229FDB388E8A1F6A9551B5B310569
          7EB7F2FB257C865E8DA58FDC484F403E326D56237512CBFA2A455146ED57A891
          B7C01C4867DF60235058659E809A4061055A05AF2069BEA63AE2CBC422859BA6
          E3270999817A3803B26C9555A6AC2697D51F9A287E645C89FDDAFE3DF10EA436
          EA1F570440FC0000000049454E44AE426082}
        OnClick = Image1Click
      end
    end
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 41
    Width = 990
    Height = 565
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = DBChart1
        Row = 0
      end
      item
        Column = 1
        Control = DBChart2
        Row = 0
      end
      item
        Column = 0
        Control = DBChart3
        Row = 1
      end
      item
        Column = 1
        Control = DBChart4
        Row = 1
      end>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    TabOrder = 2
    object DBChart1: TDBChart
      Left = 1
      Top = 1
      Width = 494
      Height = 282
      Title.Text.Strings = (
        'Produto Em Estoque')
      Align = alClient
      TabOrder = 0
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series1: TBarSeries
        Marks.Brush.Gradient.Colors = <
          item
            Color = clRed
          end
          item
            Color = 819443
            Offset = 0.067915690866510540
          end
          item
            Color = clYellow
            Offset = 1.000000000000000000
          end>
        Marks.Brush.Gradient.Direction = gdTopBottom
        Marks.Brush.Gradient.EndColor = clYellow
        Marks.Brush.Gradient.MidColor = 819443
        Marks.Brush.Gradient.StartColor = clRed
        Marks.Brush.Gradient.Visible = True
        Marks.Font.Color = 159
        Marks.Font.Name = 'Tahoma'
        Marks.Font.Style = [fsBold, fsItalic]
        Marks.Frame.Color = 33023
        Marks.RoundSize = 14
        Marks.Visible = False
        DataSource = DTMGrafico.QryProdutoEstoque
        Title = 'ProdutoEstoque'
        XLabelsSource = 'Label'
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Bar'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
      end
    end
    object DBChart2: TDBChart
      Left = 495
      Top = 1
      Width = 494
      Height = 282
      Title.Text.Strings = (
        'Valor de Venda por Cliente na '#218'ltima Semana')
      Legend.TextStyle = ltsXAndValueAndText
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      Align = alClient
      TabOrder = 1
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series2: TPieSeries
        Marks.Brush.Gradient.Colors = <
          item
            Color = clRed
          end
          item
            Color = 819443
            Offset = 0.067915690866510540
          end
          item
            Color = clYellow
            Offset = 1.000000000000000000
          end>
        Marks.Brush.Gradient.Direction = gdTopBottom
        Marks.Brush.Gradient.EndColor = clYellow
        Marks.Brush.Gradient.MidColor = 819443
        Marks.Brush.Gradient.StartColor = clRed
        Marks.Brush.Gradient.Visible = True
        Marks.Font.Color = 159
        Marks.Font.Name = 'Tahoma'
        Marks.Font.Style = [fsBold, fsItalic]
        Marks.Frame.Color = 33023
        Marks.RoundSize = 14
        Marks.Visible = False
        Marks.Style = smsLabelPercentTotal
        Marks.Callout.Length = 20
        DataSource = DTMGrafico.QryValorVendaPorCliente
        Title = 'ValorDeVendaPorClienteNaUltimaSemana'
        XLabelsSource = 'Label'
        XValues.Order = loAscending
        YValues.Name = 'Pie'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
        Frame.InnerBrush.BackColor = clRed
        Frame.InnerBrush.Gradient.EndColor = clGray
        Frame.InnerBrush.Gradient.MidColor = clWhite
        Frame.InnerBrush.Gradient.StartColor = 4210752
        Frame.InnerBrush.Gradient.Visible = True
        Frame.MiddleBrush.BackColor = clYellow
        Frame.MiddleBrush.Gradient.EndColor = 8553090
        Frame.MiddleBrush.Gradient.MidColor = clWhite
        Frame.MiddleBrush.Gradient.StartColor = clGray
        Frame.MiddleBrush.Gradient.Visible = True
        Frame.OuterBrush.BackColor = clGreen
        Frame.OuterBrush.Gradient.EndColor = 4210752
        Frame.OuterBrush.Gradient.MidColor = clWhite
        Frame.OuterBrush.Gradient.StartColor = clSilver
        Frame.OuterBrush.Gradient.Visible = True
        Frame.Width = 4
        OtherSlice.Legend.TextStyle = ltsPercent
        OtherSlice.Legend.Visible = False
      end
    end
    object DBChart3: TDBChart
      Left = 1
      Top = 283
      Width = 494
      Height = 281
      Title.Text.Strings = (
        'Os 10 Produtos Mais Vendidos')
      Legend.TextStyle = ltsXAndValueAndText
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      Align = alClient
      TabOrder = 2
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object PieSeries1: TPieSeries
        Marks.Brush.Gradient.Colors = <
          item
            Color = clRed
          end
          item
            Color = 819443
            Offset = 0.067915690866510540
          end
          item
            Color = clYellow
            Offset = 1.000000000000000000
          end>
        Marks.Brush.Gradient.Direction = gdTopBottom
        Marks.Brush.Gradient.EndColor = clYellow
        Marks.Brush.Gradient.MidColor = 819443
        Marks.Brush.Gradient.StartColor = clRed
        Marks.Brush.Gradient.Visible = True
        Marks.Font.Color = 159
        Marks.Font.Name = 'Tahoma'
        Marks.Font.Style = [fsBold, fsItalic]
        Marks.Frame.Color = 33023
        Marks.RoundSize = 14
        Marks.Visible = False
        Marks.Style = smsLabelPercentTotal
        Marks.Callout.Length = 20
        DataSource = DTMGrafico.Qry10ProdutosMaisVendidos
        Title = '10ProdutosMaisVendidos'
        XLabelsSource = 'Label'
        XValues.Order = loAscending
        YValues.Name = 'Pie'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
        Frame.InnerBrush.BackColor = clRed
        Frame.InnerBrush.Gradient.EndColor = clGray
        Frame.InnerBrush.Gradient.MidColor = clWhite
        Frame.InnerBrush.Gradient.StartColor = 4210752
        Frame.InnerBrush.Gradient.Visible = True
        Frame.MiddleBrush.BackColor = clYellow
        Frame.MiddleBrush.Gradient.EndColor = 8553090
        Frame.MiddleBrush.Gradient.MidColor = clWhite
        Frame.MiddleBrush.Gradient.StartColor = clGray
        Frame.MiddleBrush.Gradient.Visible = True
        Frame.OuterBrush.BackColor = clGreen
        Frame.OuterBrush.Gradient.EndColor = 4210752
        Frame.OuterBrush.Gradient.MidColor = clWhite
        Frame.OuterBrush.Gradient.StartColor = clSilver
        Frame.OuterBrush.Gradient.Visible = True
        Frame.Width = 4
        OtherSlice.Legend.TextStyle = ltsPercent
        OtherSlice.Legend.Visible = False
      end
    end
    object DBChart4: TDBChart
      Left = 495
      Top = 283
      Width = 494
      Height = 281
      Title.Text.Strings = (
        'Vendas Da '#218'ltima Semana')
      Align = alClient
      TabOrder = 3
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series3: TFastLineSeries
        DataSource = DTMGrafico.QryVendasUltimaSemana
        Title = 'VendasDa'#218'ltimaSemana'
        XLabelsSource = 'Label'
        LinePen.Color = 10708548
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
        YValues.ValueSource = 'Value'
      end
    end
  end
  object mainPrincipal: TMainMenu
    Left = 872
    Top = 56
    object CADASTRO1: TMenuItem
      Caption = '&Cadastro'
      object Cliente1: TMenuItem
        Caption = 'Cliente'
        ShortCut = 16451
        OnClick = Cliente1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Categoria1: TMenuItem
        Caption = 'Categoria'
        OnClick = Categoria1Click
      end
      object Produto1: TMenuItem
        Caption = 'Produto'
        ShortCut = 16464
        OnClick = Produto1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Usuario1: TMenuItem
        Caption = 'Usuario'
        OnClick = Usuario1Click
      end
      object ControledeAcesso1: TMenuItem
        Caption = 'Controle de Acesso'
        OnClick = ControledeAcesso1Click
      end
      object UsuriosVsAes1: TMenuItem
        Caption = 'Usu'#225'rios Vs A'#231#245'es'
        OnClick = UsuriosVsAes1Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object AlterarSenha1: TMenuItem
        Caption = 'Alterar Senha'
        OnClick = AlterarSenha1Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object mnuFechar: TMenuItem
        Caption = 'Fechar'
        OnClick = mnuFecharClick
      end
    end
    object MOVIMENTAO1: TMenuItem
      Caption = '&Movimenta'#231#227'o'
      object Venda1: TMenuItem
        Caption = 'Venda'
        ShortCut = 120
        OnClick = Venda1Click
      end
      object ConsultadeVenda1: TMenuItem
        Caption = 'Consulta de &Venda'
        OnClick = ConsultadeVenda1Click
      end
    end
    object RELATRIOS1: TMenuItem
      Caption = '&Relat'#243'rios'
      object Categoria2: TMenuItem
        Caption = 'Categoria'
        OnClick = Categoria2Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Cliente2: TMenuItem
        Caption = 'Cliente'
        OnClick = Cliente2Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Produto2: TMenuItem
        Caption = 'Produto'
        OnClick = Produto2Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object VendaporData1: TMenuItem
        Caption = 'Venda Por Data'
        OnClick = VendaporData1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object FichadeCliente1: TMenuItem
        Caption = 'Ficha de Cliente'
        OnClick = FichadeCliente1Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object ProdutoporCategoria1: TMenuItem
        Caption = 'Produto por Categoria'
        OnClick = ProdutoporCategoria1Click
      end
    end
    object ConsultaVenda1: TMenuItem
      Caption = '&Trocar de Usu'#225'rio'
      OnClick = ConsultaVenda1Click
    end
  end
  object tmrAtualizacaoDashBoard: TTimer
    Interval = 60000
    OnTimer = tmrAtualizacaoDashBoardTimer
    Left = 712
    Top = 48
  end
end
