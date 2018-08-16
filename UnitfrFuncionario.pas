unit UnitfrFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Contnrs, UnitFuncionario, System.Rtti,
  Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, iniFiles,
  Data.SqlExpr, IBX.IBQuery, IBX.IBCustomDataSet, IBX.IBDatabase,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.IBDef,
  FireDAC.Phys.IB;

type
  TForm1 = class(TForm)
    edCod: TEdit;
    edNome: TEdit;
    edDeptoCod: TEdit;
    btAdicionar: TButton;
    IBDatabase1: TIBDatabase;
    IBQuery1: TIBQuery;
    btBuscar: TButton;
    IBTransaction1: TIBTransaction;
    wCod: TIntegerField;
    wNome: TWideStringField;
    wDataAdmissao: TWideStringField;
    edDataAdmissao: TEdit;
    wDeptoCod: TIntegerField;
    IBDataSet1: TIBDataSet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btAdicionarClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
   private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation
{$R *.dfm}

procedure TForm1.btAdicionarClick(Sender: TObject);
var
  wFuncionario: TFuncionario;
begin
  wFuncionario := TFuncionario.Create;
  with wFuncionario do
    begin
      wCod := StrToInt(edCod.Text);
      wNome := edNome.Text;
      wDeptoCod := StrToInt(edDeptoCod.Text);
      wDataAdmissao := edDataAdmissao.Text;
    end;
  try
    IBQuery1.SQL.Text := 'INSERT INTO funcionario VALUES ('+IntToStr(wFuncionario.wCod)+', '+quotedstr(wFuncionario.wNome)+', '+IntToStr(wFuncionario.wDeptoCod)+', '+quotedstr(wFuncionario.wDataAdmissao)+');';
  except
    ShowMessage ('Error msg!');
  end;
  ShowMessage(IBQuery1.SQL.Text);
  IBQuery1.Open;
  IBQuery1.Close;
  IBTransaction1.CommitRetaining;
end;



procedure TForm1.btBuscarClick(Sender: TObject);
var
  Index: string;
  wIndex: integer;
begin
  if InputQuery('Buscar funcionario', 'Insira o �ndice do funcionario a ser buscado:', Index) then
     begin
       if trystrtoint(Index, wIndex) then
          begin
            IBDataSet1.SelectSQL.Text := 'SELECT wNome FROM funcionario WHERE wCod LIKE '+Index+';';
            ShowMessage(IBDataSet1.SelectSQL.Text);
            IBDataSet1.Open;
            ShowMessage('Value: '+IBDataSet1.Fields[0].AsString);
          end;
     end;
  IBQuery1.Close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IBTransaction1.Commit;
end;

end.
