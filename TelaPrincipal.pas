unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Phys.MySQLDef,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.WinXCtrls, DataModulePrincipal;

type
  TForm2 = class(TForm)
    RelativePanel1: TRelativePanel;
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    Bevel2: TBevel;
    RelativePanel2: TRelativePanel;
    DataSource1: TDataSource;
    procedure DBGrid1ColExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.DBGrid1ColExit(Sender: TObject);
begin
  with DataModulePrincipal.DataModule3 do
  begin
    FDQueryPedidos.Refresh;
    FDQueryProduto.Open;
    FDQueryProduto.Edit;
    FDQueryProdutoESTOQUE.Value :=DataModule3.FDQueryProdutoESTOQUE.Value - DataModule3.FDQueryPedidosQUANTIDADE.Value;
  end;
end;

end.
