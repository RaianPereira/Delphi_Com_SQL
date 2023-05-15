unit uSelecionarData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  RxToolEdit, System.DateUtils;

type
  TfrmSelecionarData = class(TForm)
    EdtDataInicio: TDateEdit;
    Label4: TLabel;
    Label1: TLabel;
    EdtDataFinal: TDateEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionarData: TfrmSelecionarData;

implementation

{$R *.dfm}

procedure TfrmSelecionarData.BitBtn1Click(Sender: TObject);
begin
  if(edtDataFinal.Date) < (edtDataInicio.Date) then
  begin
    MessageDlg('Data Final não pode ser maior que a data Inicial', mtInformation, [mbOk],0);
    edtDataFinal.SetFocus;
    Abort;
  end;

  if (edtDataFinal.Date=0) OR (edtDataInicio.Date=0) then
  begin
    MessageDlg('Data Inicial ou Final são Campos Obrigatórios', mtInformation, [mbOk],0);
    edtDataInicio.SetFocus;
    Abort;
  end;

  Close;
end;

procedure TfrmSelecionarData.FormShow(Sender: TObject);
begin
  edtDataInicio.Date:=StartOfTheMonth(Date);
  edtDataFinal.Date:=EndOfTheMonth(Date);
end;

end.
