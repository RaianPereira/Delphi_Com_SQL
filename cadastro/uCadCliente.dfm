inherited frmCadCliente: TfrmCadCliente
  Caption = 'Cadastro de Cliente'
  ClientHeight = 517
  ClientWidth = 977
  ExplicitTop = 2
  ExplicitWidth = 983
  ExplicitHeight = 546
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 977
    Height = 471
    ActivePage = tabManutencao
    ExplicitWidth = 977
    ExplicitHeight = 471
    inherited tabListagem: TTabSheet
      ExplicitWidth = 969
      ExplicitHeight = 443
      inherited pnlListagemTopo: TPanel
        Width = 969
        ExplicitWidth = 969
      end
      inherited grdListagem: TDBGrid
        Width = 969
        Height = 390
        Columns = <
          item
            Expanded = False
            FieldName = 'clienteId'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 401
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 969
      ExplicitHeight = 443
      object Label2: TLabel
        Left = 603
        Top = 81
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label3: TLabel
        Left = 603
        Top = 187
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label4: TLabel
        Left = 23
        Top = 301
        Width = 96
        Height = 13
        Caption = 'Data de Nascimento'
      end
      object edtNome: TLabeledEdit
        Tag = 2
        Left = 23
        Top = 100
        Width = 549
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        MaxLength = 60
        TabOrder = 1
      end
      object edtClienteId: TLabeledEdit
        Tag = 1
        Left = 23
        Top = 53
        Width = 121
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object edtCEP: TMaskEdit
        Left = 603
        Top = 100
        Width = 344
        Height = 21
        EditMask = '99.999-999;1;_'
        MaxLength = 10
        TabOrder = 2
        Text = '  .   -   '
      end
      object edtEndereco: TLabeledEdit
        Left = 23
        Top = 156
        Width = 550
        Height = 21
        EditLabel.Width = 45
        EditLabel.Height = 13
        EditLabel.Caption = 'Endere'#231'o'
        MaxLength = 60
        TabOrder = 3
      end
      object edtBairro: TLabeledEdit
        Left = 603
        Top = 156
        Width = 344
        Height = 21
        EditLabel.Width = 28
        EditLabel.Height = 13
        EditLabel.Caption = 'Bairro'
        MaxLength = 40
        TabOrder = 4
      end
      object edtCidade: TLabeledEdit
        Left = 23
        Top = 204
        Width = 550
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Cidade'
        MaxLength = 60
        TabOrder = 5
      end
      object edtTelefone: TMaskEdit
        Left = 603
        Top = 204
        Width = 344
        Height = 21
        EditMask = '!\(99\)00000-0000;1;_'
        MaxLength = 14
        TabOrder = 6
        Text = '(  )     -    '
      end
      object edtEmail: TLabeledEdit
        Left = 23
        Top = 260
        Width = 550
        Height = 21
        EditLabel.Width = 24
        EditLabel.Height = 13
        EditLabel.Caption = 'Email'
        MaxLength = 100
        TabOrder = 7
      end
      object edtDataNascimento: TDateEdit
        Left = 23
        Top = 320
        Width = 186
        Height = 21
        NumGlyphs = 2
        TabOrder = 8
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 471
    Width = 977
    ExplicitTop = 471
    ExplicitWidth = 977
    inherited btnNovo: TBitBtn
      Left = 6
      ExplicitLeft = 6
    end
    inherited btnAlterar: TBitBtn
      Left = 88
      ExplicitLeft = 88
    end
    inherited btnCancelar: TBitBtn
      Left = 170
      ExplicitLeft = 170
    end
    inherited btnGravar: TBitBtn
      Left = 252
      ExplicitLeft = 252
    end
    inherited btnApagar: TBitBtn
      Left = 335
      ExplicitLeft = 335
    end
    inherited btnFechar: TBitBtn
      Left = 886
      ExplicitLeft = 886
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'select clienteId,'
      '          nome,'
      '          endereco,'
      '          cidade,'
      '          bairro,'
      '          estado,'
      '          cep,'
      '          telefone,'
      '          email,'
      '          datanascimento'
      'from clientes')
    object QryListagemclienteId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'clienteId'
      ReadOnly = True
    end
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
    object QryListagembairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 60
    end
    object QryListagemestado: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Size = 2
    end
    object QryListagemcep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 10
    end
    object QryListagemtelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 14
    end
    object QryListagememail: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Size = 100
    end
    object QryListagemdatanascimento: TDateTimeField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'datanascimento'
    end
  end
end
