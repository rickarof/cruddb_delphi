unit UnitFormGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, UnitFormDatabaseController, System.Contnrs,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls;

type
  TFormGrid = class(TForm)
    StringGrid1: TStringGrid;
    ToolBar1: TToolBar;
    btExcluir: TButton;
    btEscolher: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure geraGrid(Classe: TClass);
  end;

var
  FormGrid: TFormGrid;
  DatabaseController: TDatabaseController;

implementation
{$R *.dfm}

uses UnitFormFuncionario;

procedure TFormGrid.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormGrid.FormCreate(Sender: TObject);
begin
  DatabaseController := TDatabaseController.Create;
end;

procedure TFormGrid.geraGrid(Classe: TClass);
var
  wObjList: TObjectList;
  wCont: Integer;
  wObj: TObject;
begin
  if Classe = TFuncionario then
     wObjList := TObjectList.Create;
     wObjList := DatabaseController.getAllByTableName(TFuncionario);
     StringGrid1.RowCount := wObjlist.Count+1;
     StringGrid1.Cells[0,0] := 'C�digo';
     StringGrid1.Cells[1,0] := 'Nome';
     StringGrid1.Cells[2,0] := 'C�d. Depto.';
     StringGrid1.Cells[3,0] := 'Data Admiss�o';
     for wCont := 0 to wObjList.Count-1 do
       begin
         wObj := wObjList.Items[wCont];
         with wObj as TFuncionario do
           begin
             StringGrid1.Cells[0, wCont+1] := inttostr(wCod);
             StringGrid1.Cells[1, wCont+1] := wNome;
             StringGrid1.Cells[2, wCont+1] := inttostr(wCodDepto);
             StringGrid1.Cells[3, wCont+1] := wDataAdmissao;
         end;
       end;
end;

end.
