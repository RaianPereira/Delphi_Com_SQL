program Vendas;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDTMConexao in 'datamodule\uDTMConexao.pas' {dtmPrincipal: TDataModule},
  uTelaHeranca in 'heranca\uTelaHeranca.pas' {frmTelaHeranca},
  uCadCategoria in 'cadastro\uCadCategoria.pas' {frmCadCategoria},
  Enter in 'terceiros\Enter.pas',
  uEnum in 'heranca\uEnum.pas',
  cCadCategoria in 'classes\cCadCategoria.pas',
  uCadCliente in 'cadastro\uCadCliente.pas' {frmCadCliente},
  cCadCliente in 'classes\cCadCliente.pas',
  uCadProduto in 'cadastro\uCadProduto.pas' {frmCadProduto},
  cCadProduto in 'classes\cCadProduto.pas',
  uFrmAtualizaDB in 'datamodule\uFrmAtualizaDB.pas' {frmAtualizaDB},
  uDTMVenda in 'datamodule\uDTMVenda.pas' {dtmVendas: TDataModule},
  uProVenda in 'processo\uProVenda.pas' {frmProVenda},
  cProVenda in 'classes\cProVenda.pas',
  cControleEstoque in 'classes\cControleEstoque.pas',
  uRelCadClienteFicha in 'relatorio\uRelCadClienteFicha.pas' {frmRelCadClienteFicha},
  uRelCategoria in 'relatorio\uRelCategoria.pas' {frmRelCategoria},
  uRelCadCliente in 'relatorio\uRelCadCliente.pas' {frmRelCadCliente},
  uRelCadProduto in 'relatorio\uRelCadProduto.pas' {frmRelCadProduto},
  uSelecionarData in 'relatorio\uSelecionarData.pas' {frmSelecionarData},
  uRelProVenda in 'relatorio\uRelProVenda.pas' {frmRelProVenda},
  uRelCadProdutoComGrupoCategoria in 'relatorio\uRelCadProdutoComGrupoCategoria.pas' {frmRelCadProdutoComGrupoCategoria},
  uRelVendaPorData in 'relatorio\uRelVendaPorData.pas' {frmRelVendaPorData},
  uFuncaoCriptografia in 'heranca\uFuncaoCriptografia.pas',
  uCadUsuario in 'cadastro\uCadUsuario.pas' {frmCadUsuario},
  cCadUsuario in 'classes\cCadUsuario.pas',
  uLogin in 'login\uLogin.pas' {frmLogin},
  uAlterarSenha in 'login\uAlterarSenha.pas' {frmAlterarSenha},
  cUsuarioLogado in 'login\cUsuarioLogado.pas',
  cAtualizacaoBancoDeDados in 'classes\cAtualizacaoBancoDeDados.pas',
  cAtualizacaoTabelaMSSQL in 'classes\cAtualizacaoTabelaMSSQL.pas',
  cAtualizacaoCampoMSSQL in 'classes\cAtualizacaoCampoMSSQL.pas',
  cArquivoIni in 'classes\cArquivoIni.pas',
  cAcaoAcesso in 'cadastro\cAcaoAcesso.pas',
  uCadAcaoAcesso in 'cadastro\uCadAcaoAcesso.pas' {frmCadAcaoAcesso},
  uConsultaVenda in 'cadastro\uConsultaVenda.pas' {frmConsultaVenda},
  cConsultaVenda in 'classes\cConsultaVenda.pas',
  uUsuarioVsAcoes in 'login\uUsuarioVsAcoes.pas' {frmUsuarioVsAcoes},
  uDTMGrafico in 'datamodule\uDTMGrafico.pas' {DTMGrafico: TDataModule},
  cFuncao in 'classes\cFuncao.pas',
  uTelaHerancaConsulta in 'heranca\uTelaHerancaConsulta.pas' {frmTelaHerancaConsulta},
  uConCategoria in 'consulta\uConCategoria.pas' {frmConCategoria},
  uConProduto in 'consulta\uConProduto.pas' {frmConProduto},
  uConCliente in 'consulta\uConCliente.pas' {frmConCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
