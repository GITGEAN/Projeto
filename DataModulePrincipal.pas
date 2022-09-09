unit DataModulePrincipal;

interface

uses
 System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Phys.ODBCBase, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Vcl.Dialogs, Vcl.Forms, Winapi.Windows,
  Data.FMTBcd, Data.SqlExpr, Vcl.Controls;

type
  TDataModule3 = class(TDataModule)
    MySqlDriver: TFDPhysMySQLDriverLink;
    FDConnectionMYSQL: TFDConnection;
    FDQueryPedidos: TFDQuery;
    FDQueryPedidosCOD_CLIENTE: TSmallintField;
    FDQueryPedidosCOD_PRODUTO: TSmallintField;
    FDQueryClientes: TFDQuery;
    FDQueryClientesCODIGO: TSmallintField;
    FDQueryClientesNOME: TStringField;
    FDQueryClientesCIDADE: TStringField;
    FDQueryClientesUF: TStringField;
    FDQueryPedidosNomeCliente: TStringField;
    FDQueryProduto: TFDQuery;
    FDQueryPedidosNomeProduto: TStringField;
    FDQueryPedidosQUANTIDADE: TIntegerField;
    FDQueryProdutoCODIGO: TSmallintField;
    FDQueryProdutoDESCRICAO: TStringField;
    FDQueryProdutoPRECO: TSingleField;
    FDQueryProdutoESTOQUE: TIntegerField;
    FDQueryPedidosCODIGO_PEDIDO: TFDAutoIncField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule3.DataModuleCreate(Sender: TObject);
begin
  MySqlDriver.VendorLib := ExtractFilePath(application.ExeName)+ 'libmysql57.dll';
  FDConnectionMYSQL.CheckActive;
end;

end.
