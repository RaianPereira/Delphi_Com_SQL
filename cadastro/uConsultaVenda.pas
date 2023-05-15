unit uConsultaVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls, cConsultaVenda;

type
  TfrmConsultaVenda = class(TfrmTelaHeranca)
    QryListagemnome: TWideStringField;
    QryListagemtelefone: TWideStringField;
    QryListagememail: TWideStringField;
    QryListagemproduto: TWideStringField;
    QryListagemvalor: TFloatField;
    QryListagemcategorias: TWideStringField;
    QryListagemvalorUnitario: TFloatField;
    QryListagemdataVenda: TDateTimeField;
    QryListagemtotalVenda: TFloatField;
    edtNomeCliente: TLabeledEdit;
    edtTelefone: TLabeledEdit;
    edtEmail: TLabeledEdit;
    edtProduto: TLabeledEdit;
    edtValor: TLabeledEdit;
    edtCategorias: TLabeledEdit;
    edtValorUnitario: TLabeledEdit;
    edtTotalVenda: TLabeledEdit;
    QryListagemclienteId: TIntegerField;
    edtDataVenda: TLabeledEdit;
    QryListagemProdutos: TZQuery;
    dtsListagemProdutos: TDataSource;
    QryListagemProdutosnome: TWideStringField;
    QryListagemProdutosdescricao: TWideStringField;
    QryListagemProdutosvalor: TFloatField;
    QryListagemProdutosquantidade: TFloatField;
    QryListagemProdutosprodutoId: TIntegerField;
    QryListagemprodutoId: TIntegerField;
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  oConsultaVenda:TConsultaVenda;
  public
    { Public declarations }
  end;

var
  frmConsultaVenda: TfrmConsultaVenda;

implementation

{$R *.dfm}

uses uDTMConexao;



procedure TfrmConsultaVenda.btnAlterarClick(Sender: TObject);
begin
    if oConsultaVenda.Selecionar(QryListagem.FieldByName('produtoId').AsInteger) then
  begin
     edtNomeCliente.Text   := oConsultaVenda.nome;
     edtTelefone.Text      := oConsultaVenda.telefone;
     edtEmail.Text         := oConsultaVenda.email;
     edtProduto.Text       := oConsultaVenda.produto;
     edtValor.Text         := CurrToStr(oConsultaVenda.valor);
     edtCategorias.Text    := oConsultaVenda.categoria;
     edtValorUnitario.Text := CurrToStr(oConsultaVenda.valorUnitario);
     edtTotalVenda.Text    := CurrToStr(oConsultaVenda.totalVenda);
     edtDataVenda.Text     := DateTimeToStr(oConsultaVenda.dataVenda);
  end
  else begin
    btnCancelar.Click;
    Abort;
  end;
  inherited;

  inherited;

end;


procedure TfrmConsultaVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QryListagemProdutos.Close;
  QryListagem.Close;

  if Assigned(oConsultaVenda) then
     FreeAndNil(oConsultaVenda);

end;

procedure TfrmConsultaVenda.FormCreate(Sender: TObject);
begin
  oConsultaVenda := TConsultaVenda.Create(DtmPrincipal.ConexaoDB);
  inherited;

end;

procedure TfrmConsultaVenda.FormShow(Sender: TObject);
begin
  inherited;
  QryListagem.Open;
  QryListagemProdutos.Open;
end;
end.
