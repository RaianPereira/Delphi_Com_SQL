unit uAlterarSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmAlterarSenha = class(TForm)
    Label1: TLabel;
    edtSenhaAtual: TEdit;
    Label2: TLabel;
    edtSenhaNova: TEdit;
    Label3: TLabel;
    edtRepitirNovaSenha: TEdit;
    btnAcessar: TBitBtn;
    btnFechar: TBitBtn;
    lblUsuarioLogado: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnAcessarClick(Sender: TObject);
  private
    procedure LimparEdits;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlterarSenha: TfrmAlterarSenha;

implementation

{$R *.dfm}

uses cCadUsuario, uPrincipal, uDTMConexao;

procedure TfrmAlterarSenha.btnAcessarClick(Sender: TObject);
var oUsuario:TUsuario;
begin
  begin
  if (edtSenhaAtual.Text=oUsuarioLogado.senha) then
  begin
  if (edtSenhaNova.Text=edtRepitirNovaSenha.Text) then
  begin
      try
        oUsuario:=TUsuario.Create(DtmPrincipal.ConexaoDB);
        oUsuario.codigo := oUsuarioLogado.codigo;
        oUsuario.senha  := edtSenhaNova.Text;
        oUsuario.AlterarSenha;
        oUsuarioLogado.senha := edtSenhaNova.Text;
        MessageDlg('Senha Alterada.',MtInformation,[mbok],0);
        LimparEdits;
      finally
        FreeAndNil(oUsuario);
      end;
    end
    else begin
      MessageDlg('Senhas digitadas n�o coincidem.',mtinformation,[mbok],0);
      edtSenhaNova.SetFocus;
    end;

  end
  else begin
    MessageDlg('Senha Atual est� inv�lida.',mtinformation,[mbok],0);
  end;
end;
end;

procedure TfrmAlterarSenha.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmAlterarSenha.FormShow(Sender: TObject);
begin
  LimparEdits;
end;

procedure TfrmAlterarSenha.LimparEdits;
begin
  edtSenhaAtual.Clear;
  edtSenhaNova.Clear;
  edtRepitirNovaSenha.Clear;
  lblUsuarioLogado.Caption:=oUsuarioLogado.nome;
end;

end.
