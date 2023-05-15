unit uDTMGrafico;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TDTMGrafico = class(TDataModule)
    QryProdutoEstoque: TZQuery;
    QryProdutoEstoqueLabel: TWideStringField;
    QryProdutoEstoqueValue: TFloatField;
    QryValorVendaPorCliente: TZQuery;
    QryValorVendaPorClienteLabel: TWideStringField;
    QryValorVendaPorClienteValue: TFloatField;
    Qry10ProdutosMaisVendidos: TZQuery;
    Qry10ProdutosMaisVendidosLabel: TWideStringField;
    Qry10ProdutosMaisVendidosValue: TFloatField;
    QryVendasUltimaSemana: TZQuery;
    QryVendasUltimaSemanaLabel: TDateTimeField;
    QryVendasUltimaSemanaValue: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTMGrafico: TDTMGrafico;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uDTMConexao;

{$R *.dfm}

end.
