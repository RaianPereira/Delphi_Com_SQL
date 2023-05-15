unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TfrmLogin = class(TForm)
    btnFechar: TBitBtn;
    btnAcessar: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Image1: TImage;
    Label10: TLabel;
    Image2: TImage;
    Label4: TLabel;
    Panel3: TPanel;
    edtSenha: TEdit;
    Label2: TLabel;
    Panel4: TPanel;
    edtUsuario: TEdit;
    Label1: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnAcessarClick(Sender: TObject);
  private
    { Private declarations }
    bFechar:Boolean;
    procedure FecharAplicacao;
    procedure FecharFormulario;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses cCadUsuario, uDTMConexao, uPrincipal;

{$R *.dfm}

procedure TfrmLogin.btnAcessarClick(Sender: TObject);
var oUsuario:TUsuario;
begin
  try
    oUsuario:=TUsuario.Create(dtmPrincipal.ConexaoDB);
    if oUsuario.Logar(edtUsuario.Text,edtSenha.Text) then
    begin
      oUsuarioLogado.codigo:=oUsuario.codigo;
      oUsuarioLogado.nome:=oUsuario.nome;
      oUsuarioLogado.senha:=oUsuario.senha;
      FecharFormulario // Fecha o Formulario uLogin
    end
    else
    begin
      MessageDlg('Usuário Inválido ou Senha Inválida', mtInformation, [mbOk],0);
      edtUsuario.SetFocus;
    end;

  finally
    if Assigned(oUsuario) then
       FreeAndNil(oUsuario);
  end;

end;

procedure TfrmLogin.FecharAplicacao;
begin
  bFechar := true;
  Application.Terminate;
end;

procedure TfrmLogin.FecharFormulario;
begin
  bFechar := true;
  Close;
end;

procedure TfrmLogin.btnFecharClick(Sender: TObject);
begin
  FecharAplicacao; // Fecha Toda a Aplicação
end;

procedure TfrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   CanClose:=bFechar;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  bFechar:=false;
end;


end.
