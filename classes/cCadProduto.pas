unit cCadProduto;

interface

uses System.Classes,
     System.SysUtils,
     Vcl.Controls,
     Vcl.ExtCtrls,
     Vcl.Dialogs,
     ZAbstractConnection,
     ZConnection,
     ZAbstractRODataset,
     ZAbstractDataset,
     ZDataset,
     System.StrUtils,
     Vcl.Imaging.jpeg,
     Vcl.Graphics;


type
  TProduto = class
  private
    ConexaoDB: TZConnection;
    F_produtoId: integer;
    F_nome: string;
    F_descricao: string;
    F_valor: double;
    F_quantidade: double;
    F_categoriaId: integer;
    F_Foto: TBitmap;
  public
    constructor Create(aConexao:TZConnection);
    destructor Destroy; override;
    function Inserir: Boolean;
    function Atualizar: Boolean;
    function Apagar: Boolean;
    function Selecionar(id:integer):Boolean;
  published
    property codigo: integer read F_produtoId write F_produtoId;
    property nome: string read F_nome write F_nome;
    property descricao: string read F_descricao write F_descricao;
    property valor: double read F_valor write F_valor;
    property quantidade: double read F_quantidade write F_quantidade;
    property categoriaId: integer read F_categoriaId write F_categoriaId;
    property foto : TBitmap read F_Foto write F_Foto;

end;
implementation

{ TProduto }

 constructor TProduto.Create(aConexao: TZConnection);
begin
   ConexaoDB:=aConexao;
   F_Foto := TBitmap.Create;
   F_Foto.Assign(nil);
end;

destructor TProduto.Destroy;
begin
  if Assigned(F_Foto) then
      F_Foto.Assign(nil);
      F_Foto.Free;
  inherited;
end;

function TProduto.Apagar: Boolean;
var Qry:TZQuery;
begin
   if MessageDlg('Apagar o Registro:' +#13+#13+
                 'Código:' +IntToStr(F_produtoId)+#13+
                 'Descrição: '+F_nome,mtConfirmation,[mbYes, mbNo],0)=mrNo then
   begin
      Result:=false;
      Abort;
   end;
   try
     Result:=true;
     Qry:=TZQuery.Create(nil);
     Qry.Connection:=ConexaoDB;
     Qry.SQL.Clear;
     Qry.SQL.Add('Delete from produtos '+
                 'where produtoId=:produtoId ');
     Qry.ParamByName('produtoId').AsInteger:=F_produtoId;
     try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
     except
      ConexaoDB.Rollback;
      Result:=false;
     end;
   finally
      if Assigned(Qry) then
        FreeAndNil(Qry);
   end;
end;

function TProduto.Atualizar: Boolean;
var
Qry:TZQuery;
begin
     try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('Update produtos '+
                '   SET nome=:nome '+
                '       ,descricao=:descricao '+
                '       ,valor=:valor '+
                '       ,quantidade=:quantidade '+
                '       ,categoriaId=:categoriaId '+
                '       , foto=:foto '+
                ' Where produtoId=:produtoId ');
    Qry.ParamByName('produtoId').AsInteger:=Self.F_produtoId;
    Qry.ParamByName('nome').AsString:=Self.F_nome;
    Qry.ParamByName('descricao').AsString:=Self.F_descricao;
    Qry.ParamByName('valor').AsFloat:=Self.F_valor;
    Qry.ParamByName('quantidade').AsFloat:=Self.F_quantidade;
    Qry.ParamByName('categoriaId').AsInteger:=Self.F_categoriaId;

    if Self.F_Foto.Empty then
       Qry.ParamByName('foto').Clear
    else
       Qry.ParamByName('foto').Assign(Self.F_Foto);

    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    except
      ConexaoDB.Rollback;
      Result:=false;
    end;
  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TProduto.Inserir: Boolean;
var
Qry:TZQuery;
begin
   try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('Insert into produtos (nome, '+
                '                      descricao, '+
                '                      valor,  '+
                '                      quantidade,  '+
                '                      categoriaId, '+
                '                      foto '+
                '                      )    '+
                ' values              (:nome, '+
                '                      :descricao, '+
                '                      :valor,  '+
                '                      :quantidade,  '+
                '                      :categoriaId, '+
                '                      :foto '+
                '                      ) ');
    Qry.ParamByName('nome').AsString:=Self.F_nome;
    Qry.ParamByName('descricao').AsString:=Self.F_descricao;
    Qry.ParamByName('valor').AsFloat:=Self.F_valor;
    Qry.ParamByName('quantidade').AsFloat:=Self.F_quantidade;
    Qry.ParamByName('categoriaId').AsInteger:=Self.F_categoriaId;

    if Self.F_Foto.Empty then
       Qry.ParamByName('foto').Clear
    else
       Qry.ParamByName('foto').Assign(Self.F_Foto);

    try
      ConexaoDB.StartTransaction;
      Qry.ExecSQL;
      ConexaoDB.Commit;
    except
      ConexaoDB.Rollback;
      Result:=false;
    end;
  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

function TProduto.Selecionar(id: integer): Boolean;
var
Qry:TZQuery;
begin
     try
    Result:=true;
    Qry:=TZQuery.Create(nil);
    Qry.Connection:=ConexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add('Select produtoId,'+
                '       nome, '+
                '       descricao, '+
                '       valor, '+
                '       quantidade, '+
                '       categoriaId, '+
                '       foto '+
                '  from produtos '+
                'where produtoId=:produtoId');
    Qry.ParamByName('produtoId').AsInteger:=id;
    Try
      Qry.Open;
      Self.F_produtoId:=Qry.FieldByName('produtoId').AsInteger;
      Self.F_nome:=Qry.FieldByName('nome').AsString;
      Self.F_descricao:=Qry.FieldByName('descricao').AsString;
      Self.F_valor:=Qry.FieldByName('valor').AsFloat;
      Self.F_quantidade:=Qry.FieldByName('quantidade').AsFloat;
      Self.F_categoriaId:=Qry.FieldByName('categoriaId').AsInteger;
      Self.F_Foto.Assign(Qry.FieldByName('foto'));
    Except
      Result:=false;
    End;
  finally
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

end.
