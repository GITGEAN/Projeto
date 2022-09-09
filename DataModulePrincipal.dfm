object DataModule3: TDataModule3
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 475
  Width = 707
  object MySqlDriver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\GeanC\Desktop\libmysql.dll'
    Left = 72
    Top = 24
  end
  object FDConnectionMYSQL: TFDConnection
    Params.Strings = (
      'Database=projeto'
      'User_Name=root'
      'Password=play96'
      'Server=localhost'
      'DriverID=mySQL')
    LoginPrompt = False
    Left = 72
    Top = 88
  end
  object FDQueryPedidos: TFDQuery
    Connection = FDConnectionMYSQL
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'pedidos'
    SQL.Strings = (
      'SELECT * FROM pedidos')
    Left = 72
    Top = 152
    object FDQueryPedidosCODIGO_PEDIDO: TFDAutoIncField
      FieldName = 'CODIGO_PEDIDO'
      Origin = 'CODIGO_PEDIDO'
      ReadOnly = True
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
    end
    object FDQueryPedidosCOD_CLIENTE: TSmallintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
    object FDQueryPedidosNomeCliente: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldKind = fkLookup
      FieldName = 'NomeCliente'
      LookupDataSet = FDQueryClientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'COD_CLIENTE'
      Lookup = True
    end
    object FDQueryPedidosCOD_PRODUTO: TSmallintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
    end
    object FDQueryPedidosNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProduto'
      LookupDataSet = FDQueryProduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'COD_PRODUTO'
      Lookup = True
    end
    object FDQueryPedidosQUANTIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
  end
  object FDQueryClientes: TFDQuery
    Connection = FDConnectionMYSQL
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'pedidos'
    SQL.Strings = (
      'SELECT * FROM clientes')
    Left = 72
    Top = 216
    object FDQueryClientesCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQueryClientesNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 200
    end
    object FDQueryClientesCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object FDQueryClientesUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      Size = 100
    end
  end
  object FDQueryProduto: TFDQuery
    Connection = FDConnectionMYSQL
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'produto'
    SQL.Strings = (
      'SELECT * FROM produto')
    Left = 72
    Top = 272
    object FDQueryProdutoCODIGO: TSmallintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQueryProdutoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object FDQueryProdutoPRECO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO'
      Origin = 'PRECO'
    end
    object FDQueryProdutoESTOQUE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
    end
  end
end
