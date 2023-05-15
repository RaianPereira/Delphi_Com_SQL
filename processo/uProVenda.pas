unit uProVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  uDTMConexao, uDTMVenda, RxToolEdit, RxCurrEdit, uEnum, cProVenda, uConProduto;

type
  TfrmProVenda = class(TfrmTelaHeranca)
    QryListagemvendaId: TIntegerField;
    QryListagemclienteId: TIntegerField;
    QryListagemnome: TWideStringField;
    QryListagemdataVenda: TDateTimeField;
    QryListagemtotalVenda: TFloatField;
    edtVendaId: TLabeledEdit;
    lkpCliente: TDBLookupComboBox;
    Label2: TLabel;
    edtDataVenda: TDateEdit;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    edtValorTotal: TCurrencyEdit;
    Label3: TLabel;
    dbGridItensVenda: TDBGrid;
    Label5: TLabel;
    lkpProduto: TDBLookupComboBox;
    edtValorUnitario: TCurrencyEdit;
    edtQuantidade: TCurrencyEdit;
    edtTotalProduto: TCurrencyEdit;
    btnAdcionarItem: TBitBtn;
    btnApagarItem: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btnImprimir: TBitBtn;
    btnPesquisarProduto: TSpeedButton;
    btnNovoProduto: TSpeedButton;
    btnAdcionarCliente: TSpeedButton;
    btnPesquisarCliente: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbGridItensVendaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAdcionarItemClick(Sender: TObject);
    procedure lkpProdutoExit(Sender: TObject);
    procedure edtValorUnitarioExit(Sender: TObject);
    procedure edtQuantidadeExit(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnApagarItemClick(Sender: TObject);
    procedure dbGridItensVendaDblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnPesquisarProdutoClick(Sender: TObject);
    procedure btnNovoProdutoClick(Sender: TObject);
    procedure btnPesquisarClienteClick(Sender: TObject);
    procedure btnAdcionarClienteClick(Sender: TObject);
  private
    { Private declarations }
    dtmVendas:TdtmVendas;
    oVenda:TVenda;
    function Gravar(EstadoDoCadastro:TEstadoDoCadastro):Boolean; override;
    function Apagar:Boolean; override;
    function TotalizarProduto(valorUnitario, Quantidade: Double): Double;
    procedure LimparComponenteItem;
    procedure LimparCds;
    procedure CarregarRegistroSelecionado;
    function TotalizarVenda: Double;
  public
    { Public declarations }
  end;

var
  frmProVenda: TfrmProVenda;

implementation

{$R *.dfm}

uses uRelProVenda, uPrincipal, uCadProduto, cFuncao, uConCliente, uCadCliente;



function TfrmProVenda.Apagar: Boolean;
begin
   if oVenda.Selecionar(QryListagem.FieldByName('vendaId').AsInteger, dtmVendas.cdsItensVenda) then
   begin
     Result:=oVenda.Apagar;
   end;
end;

function TfrmProVenda.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
begin
   if edtVendaId.Text<>EmptyStr then
      oVenda.VendaId:=StrToInt(edtVendaId.Text)
   else
      oVenda.VendaId:=0;

   oVenda.ClienteId:=lkpCliente.KeyValue;
   oVenda.DataVenda:=edtDataVenda.Date;
   oVenda.TotalVenda:=edtValorTotal.Value;

   if (EstadoDoCadastro=ecInserir) then
       oVenda.VendaId := oVenda.Inserir(dtmVendas.cdsItensVenda)
   else if (EstadoDoCadastro=ecAlterar) then
       oVenda.Atualizar(dtmVendas.cdsItensVenda);

   frmRelProVenda:=TfrmRelProVenda.Create(Self);
   frmRelProVenda.QryVendas.Close;
   frmRelProVenda.QryVendas.ParamByName('VendaId').AsInteger:= oVenda.VendaId;
   frmRelProVenda.QryVendas.Open;

   frmRelProVenda.QryVendasItens.Close;
   frmRelProVenda.QryVendasItens.ParamByName('VendaId').AsInteger:= oVenda.VendaId;
   frmRelProVenda.QryVendasItens.Open;

   Result:=true;

end;

procedure TfrmProVenda.lkpProdutoExit(Sender: TObject);
begin
  inherited;
  if TDBLookupComboBox(Sender).KeyValue<>null then
  begin
  edtValorUnitario.Value:=dtmVendas.QryProdutos.FieldByName('valor').AsFloat;
  edtQuantidade.Value:=1;
  edtTotalProduto.Value:=TotalizarProduto(edtValorUnitario.Value, edtQuantidade.Value);
  end;
end;

procedure TfrmProVenda.btnPesquisarClienteClick(Sender: TObject);
begin
  inherited;
  try
  frmConCliente := TfrmConCliente.Create(Self);

  if lkpCliente.KeyValue<>Null then
     frmConCliente.aIniciarPesquisaId := lkpCliente.KeyValue;

  frmConCliente.ShowModal;

  if frmConCliente.aRetornarIdSelecionado<>UnAssigned then
     lkpCliente.KeyValue:=frmConCliente.aRetornarIdSelecionado;
  finally
     frmConCliente.Release;
  end;
end;

procedure TfrmProVenda.btnPesquisarProdutoClick(Sender: TObject);
begin
  inherited;
  try
    frmConProduto := TfrmConProduto.Create(Self);

    if lkpProduto.KeyValue<>Null then
     frmConProduto.aIniciarPesquisaId := lkpProduto.KeyValue;

    frmConProduto.ShowModal;

    if frmConProduto.aRetornarIdSelecionado<>UnAssigned then
     lkpProduto.KeyValue:=frmConProduto.aRetornarIdSelecionado;
  finally
    frmConProduto.Release;
  end;
end;

procedure TfrmProVenda.btnNovoProdutoClick(Sender: TObject);
begin
  inherited;
  TFuncao.CriarForm(TfrmCadProduto, oUsuarioLogado, DtmPrincipal.ConexaoDB);
  QryListagem.Refresh;
end;

procedure TfrmProVenda.btnAdcionarClienteClick(Sender: TObject);
begin
  inherited;
  TFuncao.CriarForm(TfrmCadCliente, oUsuarioLogado, DtmPrincipal.ConexaoDB);
  QryListagem.Refresh;
end;

procedure TfrmProVenda.btnAdcionarItemClick(Sender: TObject);
begin
  inherited;
  if lkpProduto.KeyValue=null then
  begin
     MessageDlg('Produto é um campo obrigatório', mtInformation, [mbOk],0);
     lkpProduto.SetFocus;
     Abort;
  end;

  if edtValorUnitario.value<=0 then
  begin
     MessageDlg('Valor Unitário não pode ser zero', mtInformation, [mbOk],0);
     edtValorUnitario.SetFocus;
     Abort;
  end;

  if edtQuantidade.value<=0 then
  begin
      MessageDlg('Quantidade não pode ser zero', mtInformation, [mbOk],0);
      edtQuantidade.SetFocus;
      Abort;
  end;

  if dtmVendas.cdsItensVenda.Locate('produtoId', lkpProduto.KeyValue, []) then
  begin
      MessageDlg('Este Produto já foi selecionado', mtInformation, [mbOk],0);
      lkpProduto.SetFocus;
      Abort;
  end;

  edtTotalProduto.Value:=TotalizarProduto(edtValorUnitario.Value, edtQuantidade.Value);

  dtmVendas.cdsItensVenda.Append;
  dtmVendas.cdsItensVenda.FieldByName('produtoId').AsString:=lkpProduto.KeyValue;
  dtmVendas.cdsItensVenda.FieldByName('nomeProduto').AsString:=dtmVendas.QryProdutos.FieldByName('nome').AsString;
  dtmVendas.cdsItensVenda.FieldByName('quantidade').AsFloat:=edtQuantidade.Value;
  dtmVendas.cdsItensVenda.FieldByName('valorUnitario').AsFloat:=edtValorUnitario.Value;
  dtmVendas.cdsItensVenda.FieldByName('valorTotalProduto').AsFloat:=edtTotalProduto.Value;
  dtmVendas.cdsItensVenda.Post;
  edtValorTotal.Value:=TotalizarVenda;
  LimparComponenteItem;

  lkpProduto.SetFocus;

end;

procedure TfrmProVenda.LimparComponenteItem;
begin
   lkpProduto.KeyValue:=null;
   edtQuantidade.Value:=0;
   edtValorUnitario.Value:=0;
   edtTotalProduto.Value:=0;
end;

procedure TfrmProVenda.LimparCds;
begin
   dtmVendas.cdsItensVenda.First;
   while not dtmVendas.cdsItensVenda.Eof do
        dtmVendas.cdsItensVenda.Delete;
end;

function TfrmProVenda.TotalizarProduto(valorUnitario, Quantidade:Double):Double;
begin
   Result:=valorUnitario * Quantidade;
end;

procedure TfrmProVenda.btnAlterarClick(Sender: TObject);
begin
   if oVenda.Selecionar(QryListagem.FieldByName('vendaId').AsInteger, dtmVendas.cdsItensVenda) then
   begin
      edtVendaId.Text:=IntToStr(oVenda.VendaId);
      lkpCliente.KeyValue:=oVenda.ClienteId;
      edtDataVenda.Date:=oVenda.DataVenda;
      edtValorTotal.Value:=oVenda.TotalVenda;
   end
   else
   begin
      btnCancelar.Click;
      Abort;
   end;
  inherited;

end;


procedure TfrmProVenda.btnApagarItemClick(Sender: TObject);
begin
  inherited;
  if lkpProduto.KeyValue=Null then
   begin
     MessageDlg('Selecione o produto a ser removido', mtInformation,[mbOK],0);
     dbgridItensVenda.SetFocus;
     Abort;
   end;

   if dtmVendas.cdsItensVenda.Locate('produtoId', lkpProduto.KeyValue, []) then
   begin
     dtmVendas.cdsItensVenda.Delete;
     edtValorTotal.Value:=TotalizarVenda;
     LimparComponenteItem;
   end;
end;

procedure TfrmProVenda.btnCancelarClick(Sender: TObject);
begin
  inherited;
  LimparCds;
end;

procedure TfrmProVenda.btnGravarClick(Sender: TObject);
begin
  if lkpCliente.KeyValue=Null then
   begin
     MessageDlg('Selecione o Cliente e o Produto antes de Resgistrar a Venda', mtInformation,[mbOK],0);
     dbgridItensVenda.SetFocus;
     Abort;
   end;
  inherited;

  LimparCds;
end;

procedure TfrmProVenda.btnImprimirClick(Sender: TObject);
begin
  inherited;
   frmRelProVenda:=TfrmRelProVenda.Create(Self);
   frmRelProVenda.QryVendas.Close;
   frmRelProVenda.QryVendas.ParamByName('VendaId').AsInteger:= oVenda.VendaId;
   frmRelProVenda.QryVendas.Open;

   frmRelProVenda.QryVendasItens.Close;
   frmRelProVenda.QryVendasItens.ParamByName('VendaId').AsInteger:= oVenda.VendaId;
   frmRelProVenda.QryVendasItens.Open;


   frmRelProVenda.Relatorio.PreviewModal;
   frmRelProVenda.Release;
end;

procedure TfrmProVenda.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtDataVenda.Date:=Date;
  lkpCliente.SetFocus;
  LimparCds;
end;

procedure TfrmProVenda.dbGridItensVendaDblClick(Sender: TObject);
begin
  inherited;
  CarregarRegistroSelecionado;
end;

procedure TfrmProVenda.dbGridItensVendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  BloqueiaCTRL_DEL_DBGrid(Key,Shift);
end;

procedure TfrmProVenda.edtQuantidadeExit(Sender: TObject);
begin
  inherited;
  edtTotalProduto.Value:=TotalizarProduto(edtValorUnitario.Value, edtQuantidade.Value);
end;

procedure TfrmProVenda.edtValorUnitarioExit(Sender: TObject);
begin
  inherited;
  edtTotalProduto.Value:=TotalizarProduto(edtValorUnitario.Value, edtQuantidade.Value);
end;

procedure TfrmProVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(dtmVendas) then
      FreeAndNil(dtmVendas);

  if Assigned(oVenda) then
      FreeAndNil(oVenda);
end;

procedure TfrmProVenda.FormCreate(Sender: TObject);
begin
  inherited;
  dtmVendas:=TdtmVendas.Create(Self);

  oVenda:=Tvenda.Create(dtmPrincipal.ConexaoDB);

  IndiceAtual:='clienteId';

end;

procedure TfrmProVenda.CarregarRegistroSelecionado;
begin
    lkpProduto.KeyValue:=dtmVendas.cdsItensVenda.FieldByName('produtoId').AsString;
    edtQuantidade.Value:=dtmVendas.cdsItensVenda.FieldByName('quantidade').AsFloat;
    edtValorUnitario.Value:=dtmVendas.cdsItensVenda.FieldByName('valorUnitario').AsFloat;
    edtTotalProduto.Value:=dtmVendas.cdsItensVenda.FieldByName('valorTotalProduto').AsFloat;
end;

function TfrmProVenda.TotalizarVenda:Double;
begin
  Result:=0;
  dtmVendas.cdsItensVenda.First;
  while not dtmVendas.cdsItensVenda.Eof do
  begin
    Result := Result + dtmVendas.cdsItensVenda.FieldByName('valorTotalProduto').AsFloat;
    dtmVendas.cdsItensVenda.Next;
  end;
end;

end.
