unit uCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls,
  RxToolEdit, RxCurrEdit,  cCadProduto, uEnum, uDtmConexao, uCadCategoria, cFuncao,
  Vcl.Menus;

type
  TfrmCadProduto = class(TfrmTelaHeranca)
    QryListagemprodutoId: TIntegerField;
    QryListagemnome: TWideStringField;
    QryListagemdescricao: TWideStringField;
    QryListagemvalor: TFloatField;
    QryListagemquantidade: TFloatField;
    QryListagemcategoriaId: TIntegerField;
    QryListagemDescricaoCategoria: TWideStringField;
    edtprodutoId: TLabeledEdit;
    edtNome: TLabeledEdit;
    edtDescricao: TMemo;
    Label2: TLabel;
    edtValor: TCurrencyEdit;
    edtQuantidade: TCurrencyEdit;
    Label3: TLabel;
    Label4: TLabel;
    lkpCategoria: TDBLookupComboBox;
    QryCategoria: TZQuery;
    dtsCategoria: TDataSource;
    QryCategoriacategoriaId: TIntegerField;
    QryCategoriadescricao: TWideStringField;
    Label5: TLabel;
    btnIncluirCategoria: TSpeedButton;
    btnPesquisarCategoria: TSpeedButton;
    pnlImagem: TPanel;
    imgImagem: TImage;
    ppmImagem: TPopupMenu;
    CarregarImagem1: TMenuItem;
    LimparImagem1: TMenuItem;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirCategoriaClick(Sender: TObject);
    procedure btnPesquisarCategoriaClick(Sender: TObject);
    procedure LimparImagem1Click(Sender: TObject);
    procedure CarregarImagem1Click(Sender: TObject);
  private
    { Private declarations }
    oProduto:TProduto;
    function Apagar: Boolean; override;
    function Gravar(EstadoDoCadastro:TEstadoDoCadastro):Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadProduto: TfrmCadProduto;

implementation

uses uPrincipal, uConCategoria;

{$R *.dfm}

{ TfrmCadProduto }

function TfrmCadProduto.Apagar: Boolean;
begin
  if oProduto.Selecionar(QryListagem.FieldByName('produtoId').AsInteger) then
  begin
    Result:=oProduto.Apagar;
  end;
end;

procedure TfrmCadProduto.btnAlterarClick(Sender: TObject);
begin
  if oProduto.Selecionar(QryListagem.FieldByName('produtoId').AsInteger) then
  begin
    edtProdutoId.Text:=IntToStr(oProduto.codigo);
    edtNome.Text:=oProduto.nome;
    edtDescricao.Text:=oProduto.descricao;
    lkpCategoria.KeyValue:=oProduto.categoriaId;
    edtValor.value:=oProduto.valor;
    edtQuantidade.value:=oProduto.quantidade;
    imgImagem.Picture.Assign(oProduto.foto);
  end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;

  inherited;

end;

procedure TfrmCadProduto.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
end;

procedure TfrmCadProduto.btnPesquisarCategoriaClick(Sender: TObject);
begin
  inherited;
  try
  frmConCategoria := TfrmConCategoria.Create(Self);

  if lkpCategoria.KeyValue<>Null then
     frmConCategoria.aIniciarPesquisaId := lkpCategoria.KeyValue;

  frmConCategoria.ShowModal;

  if frmConCategoria.aRetornarIdSelecionado<>UnAssigned then
     lkpCategoria.KeyValue:=frmConCategoria.aRetornarIdSelecionado;
  finally
     frmConCategoria.Release;
  end;
end;

procedure TfrmCadProduto.CarregarImagem1Click(Sender: TObject);
begin
  inherited;
  TFuncao.CarregarImagem(imgImagem);
end;

procedure TfrmCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  QryCategoria.Close;
  if Assigned(oProduto) then
     FreeAndNil(oProduto);
end;

procedure TfrmCadProduto.FormCreate(Sender: TObject);
begin
  inherited;
  oProduto:=TProduto.Create(dtmPrincipal.ConexaoDB);

  IndiceAtual:='produtoId';
  edtDescricao.Clear;
end;

procedure TfrmCadProduto.FormShow(Sender: TObject);
begin
  inherited;
  QryCategoria.Open;
end;

function TfrmCadProduto.Gravar(EstadoDoCadastro: TEstadoDoCadastro): Boolean;
begin
   if edtProdutoId.Text<>EmptyStr then
      oProduto.codigo:=StrToInt(edtProdutoId.Text)
   else
      oProduto.codigo:=0;

   oProduto.nome:=edtNome.Text;
   oProduto.descricao:=edtDescricao.Text;
   oProduto.categoriaId:=lkpCategoria.KeyValue;
   oProduto.valor:=edtValor.Value;
   oProduto.quantidade:=edtQuantidade.Value;

   if imgImagem.Picture.Bitmap.Empty then
      oProduto.Foto.Assign(nil)
   else
      oProduto.Foto.Assign(imgImagem.Picture);

   if (EstadoDoCadastro=ecInserir) then
       Result:=oProduto.Inserir
   else if (EstadoDoCadastro=ecAlterar) then
       Result:=oProduto.Atualizar;
end;

procedure TfrmCadProduto.LimparImagem1Click(Sender: TObject);
begin
  inherited;
  TFuncao.LimparImagem(imgImagem);
end;

procedure TfrmCadProduto.btnIncluirCategoriaClick(Sender: TObject);
begin
  inherited;
  TFuncao.CriarForm(TfrmCadCategoria, oUsuarioLogado, DtmPrincipal.ConexaoDB);
  QryCategoria.Refresh;
end;

end.
