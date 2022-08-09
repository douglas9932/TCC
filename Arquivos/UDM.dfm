object DM: TDM
  OldCreateOrder = False
  Height = 1441
  Width = 778
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'C:\TCC\Banco\BANCO.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 40
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 144
    Top = 16
  end
  object TBEstado: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnNewRecord = TBEstadoNewRecord
    Active = True
    BufferChunks = 1000
    CachedUpdates = True
    ParamCheck = True
    SQL.Strings = (
      'select * from ESTADO')
    UpdateObject = IBEstado
    GeneratorField.Field = 'IDESTADO'
    GeneratorField.Generator = 'GEN_ESTADO_ID'
    Left = 16
    Top = 80
    object TBEstadoIDESTADO: TIntegerField
      FieldName = 'IDESTADO'
      Origin = '"ESTADO"."IDESTADO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBEstadoNOMEESTADO: TIBStringField
      FieldName = 'NOMEESTADO'
      Origin = '"ESTADO"."NOMEESTADO"'
      Size = 45
    end
    object TBEstadoSIGLAS: TIBStringField
      FieldName = 'SIGLAS'
      Origin = '"ESTADO"."SIGLAS"'
      FixedChar = True
      Size = 2
    end
    object TBEstadoSTATUSESTADOS: TIBStringField
      FieldName = 'STATUSESTADOS'
      Origin = '"ESTADO"."STATUSESTADOS"'
      Size = 10
    end
  end
  object IBEstado: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDESTADO,'
      '  NOMEESTADO,'
      '  SIGLAS,'
      '  STATUSESTADOS'
      'from ESTADO '
      'where'
      '  IDESTADO = :IDESTADO')
    ModifySQL.Strings = (
      'update ESTADO'
      'set'
      '  IDESTADO = :IDESTADO,'
      '  NOMEESTADO = :NOMEESTADO,'
      '  SIGLAS = :SIGLAS,'
      '  STATUSESTADOS = :STATUSESTADOS'
      'where'
      '  IDESTADO = :OLD_IDESTADO')
    InsertSQL.Strings = (
      'insert into ESTADO'
      '  (IDESTADO, NOMEESTADO, SIGLAS, STATUSESTADOS)'
      'values'
      '  (:IDESTADO, :NOMEESTADO, :SIGLAS, :STATUSESTADOS)')
    DeleteSQL.Strings = (
      'delete from ESTADO'
      'where'
      '  IDESTADO = :OLD_IDESTADO')
    Left = 120
    Top = 80
  end
  object DSEstado: TDataSource
    DataSet = TBEstado
    Left = 216
    Top = 80
  end
  object TBContasAReceber: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnNewRecord = TBContasAReceberNewRecord
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CONTASARESCEBER')
    UpdateObject = IBContasAReceber
    GeneratorField.Field = 'IDCONTASARESCEBER'
    GeneratorField.Generator = 'GEN_CONTASARESCEBER_ID'
    Left = 40
    Top = 632
    object TBContasAReceberIDCONTASARESCEBER: TIntegerField
      FieldName = 'IDCONTASARESCEBER'
      Origin = '"CONTASARESCEBER"."IDCONTASARESCEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBContasAReceberIDVENDA: TIntegerField
      FieldName = 'IDVENDA'
      Origin = '"CONTASARESCEBER"."IDVENDA"'
    end
    object TBContasAReceberIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = '"CONTASARESCEBER"."IDCLIENTE"'
    end
    object TBContasAReceberDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CONTASARESCEBER"."DESCRICAO"'
      Size = 45
    end
    object TBContasAReceberDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      Origin = '"CONTASARESCEBER"."DATAVENDA"'
    end
    object TBContasAReceberDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      Origin = '"CONTASARESCEBER"."DATAVENCIMENTO"'
      EditMask = '!99/99/0000;1;_'
    end
    object TBContasAReceberHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"CONTASARESCEBER"."HORA"'
    end
    object TBContasAReceberVALOR: TIntegerField
      FieldName = 'VALOR'
      Origin = '"CONTASARESCEBER"."VALOR"'
    end
    object TBContasAReceberSTATUSCONTASARECEBER: TIBStringField
      FieldName = 'STATUSCONTASARECEBER'
      Origin = '"CONTASARESCEBER"."STATUSCONTASARECEBER"'
      Size = 10
    end
    object TBContasAReceberTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"CONTASARESCEBER"."TIPO"'
      Size = 10
    end
    object TBContasAReceberCONTROLE: TIBStringField
      FieldName = 'CONTROLE'
      Origin = '"CONTASARESCEBER"."CONTROLE"'
    end
    object TBContasAReceberCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = TBCliente
      LookupKeyFields = 'IDCLIENTE'
      LookupResultField = 'NOMECLIENTE'
      KeyFields = 'IDCLIENTE'
      Size = 25
      Lookup = True
    end
  end
  object IBContasAReceber: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDCONTASARESCEBER,'
      '  IDVENDA,'
      '  IDCLIENTE,'
      '  DESCRICAO,'
      '  DATAVENDA,'
      '  DATAVENCIMENTO,'
      '  HORA,'
      '  VALOR,'
      '  STATUSCONTASARECEBER,'
      '  TIPO,'
      '  CONTROLE'
      'from CONTASARESCEBER '
      'where'
      '  IDCONTASARESCEBER = :IDCONTASARESCEBER')
    ModifySQL.Strings = (
      'update CONTASARESCEBER'
      'set'
      '  IDCONTASARESCEBER = :IDCONTASARESCEBER,'
      '  IDVENDA = :IDVENDA,'
      '  IDCLIENTE = :IDCLIENTE,'
      '  DESCRICAO = :DESCRICAO,'
      '  DATAVENDA = :DATAVENDA,'
      '  DATAVENCIMENTO = :DATAVENCIMENTO,'
      '  HORA = :HORA,'
      '  VALOR = :VALOR,'
      '  STATUSCONTASARECEBER = :STATUSCONTASARECEBER,'
      '  TIPO = :TIPO,'
      '  CONTROLE = :CONTROLE'
      'where'
      '  IDCONTASARESCEBER = :OLD_IDCONTASARESCEBER')
    InsertSQL.Strings = (
      'insert into CONTASARESCEBER'
      
        '  (IDCONTASARESCEBER, IDVENDA, IDCLIENTE, DESCRICAO, DATAVENDA, ' +
        'DATAVENCIMENTO, '
      '   HORA, VALOR, STATUSCONTASARECEBER, TIPO, CONTROLE)'
      'values'
      
        '  (:IDCONTASARESCEBER, :IDVENDA, :IDCLIENTE, :DESCRICAO, :DATAVE' +
        'NDA, :DATAVENCIMENTO, '
      '   :HORA, :VALOR, :STATUSCONTASARECEBER, :TIPO, :CONTROLE)')
    DeleteSQL.Strings = (
      'delete from CONTASARESCEBER'
      'where'
      '  IDCONTASARESCEBER = :OLD_IDCONTASARESCEBER')
    Left = 144
    Top = 632
  end
  object DSContasAReceber: TDataSource
    DataSet = TBContasAReceber
    Left = 240
    Top = 632
  end
  object TBCaixa: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CAIXA')
    UpdateObject = IBCaixa
    GeneratorField.Field = 'IDCAIXA'
    GeneratorField.Generator = 'GEN_CAIXA_ID'
    Left = 16
    Top = 152
    object TBCaixaIDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
      Origin = '"CAIXA"."IDCAIXA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCaixaIDRESCEBIMENTO: TIntegerField
      FieldName = 'IDRESCEBIMENTO'
      Origin = '"CAIXA"."IDRESCEBIMENTO"'
    end
    object TBCaixaIDPAGAMENTO: TIntegerField
      FieldName = 'IDPAGAMENTO'
      Origin = '"CAIXA"."IDPAGAMENTO"'
    end
    object TBCaixaVALORENTRADA: TIntegerField
      FieldName = 'VALORENTRADA'
      Origin = '"CAIXA"."VALORENTRADA"'
    end
    object TBCaixaVALORSAIDA: TIntegerField
      FieldName = 'VALORSAIDA'
      Origin = '"CAIXA"."VALORSAIDA"'
    end
    object TBCaixaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CAIXA"."DESCRICAO"'
      Size = 45
    end
    object TBCaixaSALDO: TIntegerField
      FieldName = 'SALDO'
      Origin = '"CAIXA"."SALDO"'
    end
    object TBCaixaDATAABERTUDA: TDateField
      FieldName = 'DATAABERTUDA'
      Origin = '"CAIXA"."DATAABERTUDA"'
    end
    object TBCaixaDATAFECHAMENTO: TDateField
      FieldName = 'DATAFECHAMENTO'
      Origin = '"CAIXA"."DATAFECHAMENTO"'
    end
    object TBCaixaSTATUSCAIXA: TIBStringField
      FieldName = 'STATUSCAIXA'
      Origin = '"CAIXA"."STATUSCAIXA"'
      Size = 10
    end
  end
  object TBCargo: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnNewRecord = TBCargoNewRecord
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CARGO')
    UpdateObject = IBCargo
    GeneratorField.Field = 'IDCARGO'
    GeneratorField.Generator = 'GEN_CARGO_ID'
    Left = 16
    Top = 232
    object TBCargoIDCARGO: TIntegerField
      FieldName = 'IDCARGO'
      Origin = '"CARGO"."IDCARGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCargoNOMECARGO: TIBStringField
      FieldName = 'NOMECARGO'
      Origin = '"CARGO"."NOMECARGO"'
      Size = 45
    end
    object TBCargoSTATUSCARGO: TIBStringField
      FieldName = 'STATUSCARGO'
      Origin = '"CARGO"."STATUSCARGO"'
      Size = 10
    end
  end
  object IBCargo: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDCARGO,'
      '  NOMECARGO,'
      '  STATUSCARGO'
      'from CARGO '
      'where'
      '  IDCARGO = :IDCARGO')
    ModifySQL.Strings = (
      'update CARGO'
      'set'
      '  IDCARGO = :IDCARGO,'
      '  NOMECARGO = :NOMECARGO,'
      '  STATUSCARGO = :STATUSCARGO'
      'where'
      '  IDCARGO = :OLD_IDCARGO')
    InsertSQL.Strings = (
      'insert into CARGO'
      '  (IDCARGO, NOMECARGO, STATUSCARGO)'
      'values'
      '  (:IDCARGO, :NOMECARGO, :STATUSCARGO)')
    DeleteSQL.Strings = (
      'delete from CARGO'
      'where'
      '  IDCARGO = :OLD_IDCARGO')
    Left = 120
    Top = 232
  end
  object IBCaixa: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDCAIXA,'
      '  IDRESCEBIMENTO,'
      '  IDPAGAMENTO,'
      '  VALORENTRADA,'
      '  VALORSAIDA,'
      '  DESCRICAO,'
      '  SALDO,'
      '  DATAABERTUDA,'
      '  DATAFECHAMENTO,'
      '  STATUSCAIXA'
      'from CAIXA '
      'where'
      '  IDCAIXA = :IDCAIXA')
    ModifySQL.Strings = (
      'update CAIXA'
      'set'
      '  IDCAIXA = :IDCAIXA,'
      '  IDRESCEBIMENTO = :IDRESCEBIMENTO,'
      '  IDPAGAMENTO = :IDPAGAMENTO,'
      '  VALORENTRADA = :VALORENTRADA,'
      '  VALORSAIDA = :VALORSAIDA,'
      '  DESCRICAO = :DESCRICAO,'
      '  SALDO = :SALDO,'
      '  DATAABERTUDA = :DATAABERTUDA,'
      '  DATAFECHAMENTO = :DATAFECHAMENTO,'
      '  STATUSCAIXA = :STATUSCAIXA'
      'where'
      '  IDCAIXA = :OLD_IDCAIXA')
    InsertSQL.Strings = (
      'insert into CAIXA'
      
        '  (IDCAIXA, IDRESCEBIMENTO, IDPAGAMENTO, VALORENTRADA, VALORSAID' +
        'A, DESCRICAO, '
      '   SALDO, DATAABERTUDA, DATAFECHAMENTO, STATUSCAIXA)'
      'values'
      
        '  (:IDCAIXA, :IDRESCEBIMENTO, :IDPAGAMENTO, :VALORENTRADA, :VALO' +
        'RSAIDA, '
      
        '   :DESCRICAO, :SALDO, :DATAABERTUDA, :DATAFECHAMENTO, :STATUSCA' +
        'IXA)')
    DeleteSQL.Strings = (
      'delete from CAIXA'
      'where'
      '  IDCAIXA = :OLD_IDCAIXA')
    Left = 120
    Top = 152
  end
  object DSCaixa: TDataSource
    DataSet = TBCaixa
    Left = 216
    Top = 152
  end
  object DSCargo: TDataSource
    DataSet = TBCargo
    Left = 216
    Top = 232
  end
  object TBCidade: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnNewRecord = TBCidadeNewRecord
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CIDADE')
    UpdateObject = IBCidade
    GeneratorField.Field = 'IDCIDADE'
    GeneratorField.Generator = 'GEN_CIDADE_ID'
    Left = 16
    Top = 304
    object TBCidadeIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = '"CIDADE"."IDCIDADE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCidadeIDESTADO: TIntegerField
      FieldName = 'IDESTADO'
      Origin = '"CIDADE"."IDESTADO"'
      Required = True
    end
    object TBCidadeNOMECIDADES: TIBStringField
      FieldName = 'NOMECIDADES'
      Origin = '"CIDADE"."NOMECIDADES"'
      FixedChar = True
      Size = 45
    end
    object TBCidadeSTATUSCIDADE: TIBStringField
      FieldName = 'STATUSCIDADE'
      Origin = '"CIDADE"."STATUSCIDADE"'
      Size = 10
    end
    object TBCidadesigla: TStringField
      FieldKind = fkLookup
      FieldName = 'sigla'
      LookupDataSet = TBEstado
      LookupKeyFields = 'IDESTADO'
      LookupResultField = 'SIGLAS'
      KeyFields = 'IDESTADO'
      Size = 2
      Lookup = True
    end
  end
  object IBCidade: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDCIDADE,'
      '  IDESTADO,'
      '  NOMECIDADES,'
      '  STATUSCIDADE'
      'from CIDADE '
      'where'
      '  IDCIDADE = :IDCIDADE')
    ModifySQL.Strings = (
      'update CIDADE'
      'set'
      '  IDCIDADE = :IDCIDADE,'
      '  IDESTADO = :IDESTADO,'
      '  NOMECIDADES = :NOMECIDADES,'
      '  STATUSCIDADE = :STATUSCIDADE'
      'where'
      '  IDCIDADE = :OLD_IDCIDADE')
    InsertSQL.Strings = (
      'insert into CIDADE'
      '  (IDCIDADE, IDESTADO, NOMECIDADES, STATUSCIDADE)'
      'values'
      '  (:IDCIDADE, :IDESTADO, :NOMECIDADES, :STATUSCIDADE)')
    DeleteSQL.Strings = (
      'delete from CIDADE'
      'where'
      '  IDCIDADE = :OLD_IDCIDADE')
    Left = 120
    Top = 304
  end
  object DSCidade: TDataSource
    DataSet = TBCidade
    Left = 216
    Top = 304
  end
  object TBCliente: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnNewRecord = TBClienteNewRecord
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CLIENTE')
    UpdateObject = IBCliente
    GeneratorField.Field = 'IDCLIENTE'
    GeneratorField.Generator = 'GEN_CLIENTE_ID'
    Left = 16
    Top = 377
    object TBClienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = '"CLIENTE"."IDCLIENTE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBClienteIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = '"CLIENTE"."IDCIDADE"'
      Required = True
    end
    object TBClienteNOMECLIENTE: TIBStringField
      FieldName = 'NOMECLIENTE'
      Origin = '"CLIENTE"."NOMECLIENTE"'
      Size = 45
    end
    object TBClienteCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTE"."CPF"'
      EditMask = '000\.000\.000\-00;1;_'
      FixedChar = True
      Size = 14
    end
    object TBClienteSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"CLIENTE"."SEXO"'
      Size = 10
    end
    object TBClienteDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = '"CLIENTE"."DATANASCIMENTO"'
      EditMask = '!99/99/0000;1;_'
    end
    object TBClienteENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CLIENTE"."ENDERECO"'
      Size = 45
    end
    object TBClienteTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"CLIENTE"."TELEFONE"'
      EditMask = '!\(99\)00000-0000;1;_'
      FixedChar = True
      Size = 15
    end
    object TBClienteEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"CLIENTE"."EMAIL"'
      Size = 45
    end
    object TBClienteRG: TIBStringField
      FieldName = 'RG'
      Origin = '"CLIENTE"."RG"'
      EditMask = '00\.000\.000\-0;1;_'
      Size = 25
    end
    object TBClienteSTATUSCLIENTE: TIBStringField
      FieldName = 'STATUSCLIENTE'
      Origin = '"CLIENTE"."STATUSCLIENTE"'
      Size = 10
    end
    object TBClientecidade: TStringField
      FieldKind = fkLookup
      FieldName = 'cidade'
      LookupDataSet = TBCidade
      LookupKeyFields = 'IDCIDADE'
      LookupResultField = 'NOMECIDADES'
      KeyFields = 'IDCIDADE'
      Size = 45
      Lookup = True
    end
  end
  object IBCliente: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDCLIENTE,'
      '  IDCIDADE,'
      '  NOMECLIENTE,'
      '  CPF,'
      '  SEXO,'
      '  DATANASCIMENTO,'
      '  ENDERECO,'
      '  TELEFONE,'
      '  EMAIL,'
      '  RG,'
      '  STATUSCLIENTE'
      'from CLIENTE '
      'where'
      '  IDCLIENTE = :IDCLIENTE')
    ModifySQL.Strings = (
      'update CLIENTE'
      'set'
      '  IDCLIENTE = :IDCLIENTE,'
      '  IDCIDADE = :IDCIDADE,'
      '  NOMECLIENTE = :NOMECLIENTE,'
      '  CPF = :CPF,'
      '  SEXO = :SEXO,'
      '  DATANASCIMENTO = :DATANASCIMENTO,'
      '  ENDERECO = :ENDERECO,'
      '  TELEFONE = :TELEFONE,'
      '  EMAIL = :EMAIL,'
      '  RG = :RG,'
      '  STATUSCLIENTE = :STATUSCLIENTE'
      'where'
      '  IDCLIENTE = :OLD_IDCLIENTE')
    InsertSQL.Strings = (
      'insert into CLIENTE'
      
        '  (IDCLIENTE, IDCIDADE, NOMECLIENTE, CPF, SEXO, DATANASCIMENTO, ' +
        'ENDERECO, '
      '   TELEFONE, EMAIL, RG, STATUSCLIENTE)'
      'values'
      
        '  (:IDCLIENTE, :IDCIDADE, :NOMECLIENTE, :CPF, :SEXO, :DATANASCIM' +
        'ENTO, :ENDERECO, '
      '   :TELEFONE, :EMAIL, :RG, :STATUSCLIENTE)')
    DeleteSQL.Strings = (
      'delete from CLIENTE'
      'where'
      '  IDCLIENTE = :OLD_IDCLIENTE')
    Left = 120
    Top = 377
  end
  object DSCliente: TDataSource
    DataSet = TBCliente
    Left = 216
    Top = 377
  end
  object TBCompra: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterScroll = TBCompraAfterScroll
    OnCalcFields = TBCompraCalcFields
    OnNewRecord = TBCompraNewRecord
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from COMPRA')
    UpdateObject = IBCompra
    GeneratorField.Field = 'IDCOMPRA'
    GeneratorField.Generator = 'GEN_COMPRA_ID'
    Left = 16
    Top = 440
    object TBCompraIDCOMPRA: TIntegerField
      FieldName = 'IDCOMPRA'
      Origin = '"COMPRA"."IDCOMPRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBCompraIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = '"COMPRA"."IDFORNECEDOR"'
      Required = True
    end
    object TBCompraDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Origin = '"COMPRA"."DATACOMPRA"'
    end
    object TBCompraTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"COMPRA"."TIPO"'
      Size = 10
    end
    object TBCompraHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"COMPRA"."HORA"'
    end
    object TBCompraSTATUSCOMPRA: TIBStringField
      FieldName = 'STATUSCOMPRA'
      Origin = '"COMPRA"."STATUSCOMPRA"'
      Size = 10
    end
    object TBCompraIDFUNCIONARIO: TIntegerField
      FieldName = 'IDFUNCIONARIO'
      Origin = '"COMPRA"."IDFUNCIONARIO"'
      Required = True
    end
    object TBCompratotalcompra: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totalcompra'
      Calculated = True
    end
    object TBCompraqtdproduto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtdproduto'
      Calculated = True
    end
    object TBCompraqtditcompra: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtditcompra'
      Calculated = True
    end
  end
  object IBCompra: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDCOMPRA,'
      '  IDFUNCIONARIO,'
      '  IDFORNECEDOR,'
      '  DATACOMPRA,'
      '  TIPO,'
      '  HORA,'
      '  STATUSCOMPRA'
      'from COMPRA '
      'where'
      '  IDCOMPRA = :IDCOMPRA')
    ModifySQL.Strings = (
      'update COMPRA'
      'set'
      '  IDCOMPRA = :IDCOMPRA,'
      '  IDFUNCIONARIO = :IDFUNCIONARIO,'
      '  IDFORNECEDOR = :IDFORNECEDOR,'
      '  DATACOMPRA = :DATACOMPRA,'
      '  TIPO = :TIPO,'
      '  HORA = :HORA,'
      '  STATUSCOMPRA = :STATUSCOMPRA'
      'where'
      '  IDCOMPRA = :OLD_IDCOMPRA')
    InsertSQL.Strings = (
      'insert into COMPRA'
      
        '  (IDCOMPRA, IDFUNCIONARIO, IDFORNECEDOR, DATACOMPRA, TIPO, HORA' +
        ', STATUSCOMPRA)'
      'values'
      
        '  (:IDCOMPRA, :IDFUNCIONARIO, :IDFORNECEDOR, :DATACOMPRA, :TIPO,' +
        ' :HORA, '
      '   :STATUSCOMPRA)')
    DeleteSQL.Strings = (
      'delete from COMPRA'
      'where'
      '  IDCOMPRA = :OLD_IDCOMPRA')
    Left = 120
    Top = 448
  end
  object DSCompra: TDataSource
    DataSet = TBCompra
    Left = 216
    Top = 448
  end
  object TBContasAPagar: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnNewRecord = TBContasAPagarNewRecord
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CONTASAPAGAR')
    UpdateObject = IBContasAPagar
    GeneratorField.Field = 'IDCONTASAPAGAR'
    GeneratorField.Generator = 'GEN_CONTASAPAGAR_ID'
    Left = 40
    Top = 560
    object TBContasAPagarIDCONTASAPAGAR: TIntegerField
      FieldName = 'IDCONTASAPAGAR'
      Origin = '"CONTASAPAGAR"."IDCONTASAPAGAR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBContasAPagarIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = '"CONTASAPAGAR"."IDFORNECEDOR"'
    end
    object TBContasAPagarIDCOMPRA: TIntegerField
      FieldName = 'IDCOMPRA'
      Origin = '"CONTASAPAGAR"."IDCOMPRA"'
    end
    object TBContasAPagarDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CONTASAPAGAR"."DESCRICAO"'
      Size = 45
    end
    object TBContasAPagarDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
      Origin = '"CONTASAPAGAR"."DATACOMPRA"'
      EditMask = '!99/99/0000;1;_'
    end
    object TBContasAPagarDATAVENCIMENTO: TDateField
      FieldName = 'DATAVENCIMENTO'
      Origin = '"CONTASAPAGAR"."DATAVENCIMENTO"'
      EditMask = '!99/99/0000;1;_'
    end
    object TBContasAPagarHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"CONTASAPAGAR"."HORA"'
    end
    object TBContasAPagarVALORCONTASAPAGAR: TIntegerField
      FieldName = 'VALORCONTASAPAGAR'
      Origin = '"CONTASAPAGAR"."VALORCONTASAPAGAR"'
    end
    object TBContasAPagarSTATUSCOMPRASAPAGAR: TIBStringField
      FieldName = 'STATUSCOMPRASAPAGAR'
      Origin = '"CONTASAPAGAR"."STATUSCOMPRASAPAGAR"'
      Size = 10
    end
    object TBContasAPagarTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"CONTASAPAGAR"."TIPO"'
      Size = 10
    end
    object TBContasAPagarCONTROLE: TIBStringField
      FieldName = 'CONTROLE'
      Origin = '"CONTASAPAGAR"."CONTROLE"'
    end
    object TBContasAPagarFornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'Fornecedor'
      LookupDataSet = TBFornecedor
      LookupKeyFields = 'IDFORNECEDOR'
      LookupResultField = 'NOMEFANTASIA'
      KeyFields = 'IDFORNECEDOR'
      Size = 25
      Lookup = True
    end
  end
  object IBContasAPagar: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDCONTASAPAGAR,'
      '  IDFORNECEDOR,'
      '  IDCOMPRA,'
      '  DESCRICAO,'
      '  DATACOMPRA,'
      '  DATAVENCIMENTO,'
      '  HORA,'
      '  VALORCONTASAPAGAR,'
      '  STATUSCOMPRASAPAGAR,'
      '  TIPO,'
      '  CONTROLE'
      'from CONTASAPAGAR '
      'where'
      '  IDCONTASAPAGAR = :IDCONTASAPAGAR')
    ModifySQL.Strings = (
      'update CONTASAPAGAR'
      'set'
      '  IDCONTASAPAGAR = :IDCONTASAPAGAR,'
      '  IDFORNECEDOR = :IDFORNECEDOR,'
      '  IDCOMPRA = :IDCOMPRA,'
      '  DESCRICAO = :DESCRICAO,'
      '  DATACOMPRA = :DATACOMPRA,'
      '  DATAVENCIMENTO = :DATAVENCIMENTO,'
      '  HORA = :HORA,'
      '  VALORCONTASAPAGAR = :VALORCONTASAPAGAR,'
      '  STATUSCOMPRASAPAGAR = :STATUSCOMPRASAPAGAR,'
      '  TIPO = :TIPO,'
      '  CONTROLE = :CONTROLE'
      'where'
      '  IDCONTASAPAGAR = :OLD_IDCONTASAPAGAR')
    InsertSQL.Strings = (
      'insert into CONTASAPAGAR'
      
        '  (IDCONTASAPAGAR, IDFORNECEDOR, IDCOMPRA, DESCRICAO, DATACOMPRA' +
        ', DATAVENCIMENTO, '
      '   HORA, VALORCONTASAPAGAR, STATUSCOMPRASAPAGAR, TIPO, CONTROLE)'
      'values'
      
        '  (:IDCONTASAPAGAR, :IDFORNECEDOR, :IDCOMPRA, :DESCRICAO, :DATAC' +
        'OMPRA, '
      
        '   :DATAVENCIMENTO, :HORA, :VALORCONTASAPAGAR, :STATUSCOMPRASAPA' +
        'GAR, :TIPO, '
      '   :CONTROLE)')
    DeleteSQL.Strings = (
      'delete from CONTASAPAGAR'
      'where'
      '  IDCONTASAPAGAR = :OLD_IDCONTASAPAGAR')
    Left = 144
    Top = 560
  end
  object DSContasAPagar: TDataSource
    DataSet = TBContasAPagar
    Left = 240
    Top = 560
  end
  object TBFornecedor: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnNewRecord = TBFornecedorNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from FORNECEDOR')
    UpdateObject = IBFornecedor
    GeneratorField.Field = 'IDFORNECEDOR'
    GeneratorField.Generator = 'GEN_FORNECEDOR_ID'
    Left = 40
    Top = 704
    object TBFornecedorIDFORNECEDOR: TIntegerField
      FieldName = 'IDFORNECEDOR'
      Origin = '"FORNECEDOR"."IDFORNECEDOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBFornecedorIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = '"FORNECEDOR"."IDCIDADE"'
      Required = True
    end
    object TBFornecedorNOMEFANTASIA: TIBStringField
      FieldName = 'NOMEFANTASIA'
      Origin = '"FORNECEDOR"."NOMEFANTASIA"'
      Size = 45
    end
    object TBFornecedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FORNECEDOR"."CNPJ"'
      EditMask = '00\.000.000\/0000\-00;1;_'
      FixedChar = True
      Size = 18
    end
    object TBFornecedorTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"FORNECEDOR"."TELEFONE"'
      EditMask = '\(00\)0000-0000;0;_'
      FixedChar = True
      Size = 14
    end
    object TBFornecedorRAZAOSOCIAL: TIBStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = '"FORNECEDOR"."RAZAOSOCIAL"'
      Size = 45
    end
    object TBFornecedorSTATUSFORNECEDOR: TIBStringField
      FieldName = 'STATUSFORNECEDOR'
      Origin = '"FORNECEDOR"."STATUSFORNECEDOR"'
      Size = 10
    end
    object TBFornecedorcidade: TStringField
      FieldKind = fkLookup
      FieldName = 'cidade'
      LookupDataSet = TBCidade
      LookupKeyFields = 'IDCIDADE'
      LookupResultField = 'NOMECIDADES'
      KeyFields = 'IDCIDADE'
      Size = 45
      Lookup = True
    end
    object TBFornecedorENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"FORNECEDOR"."ENDERECO"'
      Size = 45
    end
    object TBFornecedorCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"FORNECEDOR"."CELULAR"'
      EditMask = '(00)00000-0000;1;_'
      FixedChar = True
      Size = 14
    end
  end
  object IBFornecedor: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDFORNECEDOR,'
      '  IDCIDADE,'
      '  NOMEFANTASIA,'
      '  CNPJ,'
      '  TELEFONE,'
      '  RAZAOSOCIAL,'
      '  STATUSFORNECEDOR'
      'from FORNECEDOR '
      'where'
      '  IDFORNECEDOR = :IDFORNECEDOR')
    ModifySQL.Strings = (
      'update FORNECEDOR'
      'set'
      '  IDFORNECEDOR = :IDFORNECEDOR,'
      '  IDCIDADE = :IDCIDADE,'
      '  NOMEFANTASIA = :NOMEFANTASIA,'
      '  CNPJ = :CNPJ,'
      '  TELEFONE = :TELEFONE,'
      '  RAZAOSOCIAL = :RAZAOSOCIAL,'
      '  STATUSFORNECEDOR = :STATUSFORNECEDOR'
      'where'
      '  IDFORNECEDOR = :OLD_IDFORNECEDOR')
    InsertSQL.Strings = (
      'insert into FORNECEDOR'
      
        '  (IDFORNECEDOR, IDCIDADE, NOMEFANTASIA, CNPJ, TELEFONE, RAZAOSO' +
        'CIAL, STATUSFORNECEDOR)'
      'values'
      
        '  (:IDFORNECEDOR, :IDCIDADE, :NOMEFANTASIA, :CNPJ, :TELEFONE, :R' +
        'AZAOSOCIAL, '
      '   :STATUSFORNECEDOR)')
    DeleteSQL.Strings = (
      'delete from FORNECEDOR'
      'where'
      '  IDFORNECEDOR = :OLD_IDFORNECEDOR')
    Left = 144
    Top = 704
  end
  object DSFornecedor: TDataSource
    DataSet = TBFornecedor
    Left = 240
    Top = 704
  end
  object TBFuncionario: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnNewRecord = TBFuncionarioNewRecord
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from FUNCIONARIO')
    UpdateObject = IBFuncionario
    GeneratorField.Field = 'IDFUNCIONARIO'
    GeneratorField.Generator = 'GEN_FUNCIONARIO_ID'
    Left = 40
    Top = 776
    object TBFuncionarioIDFUNCIONARIO: TIntegerField
      FieldName = 'IDFUNCIONARIO'
      Origin = '"FUNCIONARIO"."IDFUNCIONARIO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBFuncionarioIDCARGO: TIntegerField
      FieldName = 'IDCARGO'
      Origin = '"FUNCIONARIO"."IDCARGO"'
      Required = True
    end
    object TBFuncionarioIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = '"FUNCIONARIO"."IDCIDADE"'
      Required = True
    end
    object TBFuncionarioNOMEFUNCIONARIO: TIBStringField
      FieldName = 'NOMEFUNCIONARIO'
      Origin = '"FUNCIONARIO"."NOMEFUNCIONARIO"'
      Size = 45
    end
    object TBFuncionarioCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"FUNCIONARIO"."CPF"'
      EditMask = '000\.000\.000\-00;1;_'
      FixedChar = True
      Size = 14
    end
    object TBFuncionarioRG: TIBStringField
      FieldName = 'RG'
      Origin = '"FUNCIONARIO"."RG"'
      EditMask = '00\.000\.000\-0;1;_'
      Size = 25
    end
    object TBFuncionarioSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"FUNCIONARIO"."SEXO"'
      Size = 15
    end
    object TBFuncionarioDATANASCIMENTO: TDateField
      FieldName = 'DATANASCIMENTO'
      Origin = '"FUNCIONARIO"."DATANASCIMENTO"'
      EditMask = '!99/99/0000;1;_'
    end
    object TBFuncionarioENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"FUNCIONARIO"."ENDERECO"'
      Size = 45
    end
    object TBFuncionarioTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"FUNCIONARIO"."TELEFONE"'
      EditMask = '!\(99\)00000-0000;1;_'
      FixedChar = True
      Size = 15
    end
    object TBFuncionarioEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"FUNCIONARIO"."EMAIL"'
      Size = 45
    end
    object TBFuncionarioSALARIO: TIntegerField
      FieldName = 'SALARIO'
      Origin = '"FUNCIONARIO"."SALARIO"'
    end
    object TBFuncionarioCARTEIRADETRABALHO: TIBStringField
      FieldName = 'CARTEIRADETRABALHO'
      Origin = '"FUNCIONARIO"."CARTEIRADETRABALHO"'
      EditMask = '000\.00000\.00\-0;1;_'
      Size = 45
    end
    object TBFuncionarioSTATUSFUNCIONARIO: TIBStringField
      FieldName = 'STATUSFUNCIONARIO'
      Origin = '"FUNCIONARIO"."STATUSFUNCIONARIO"'
      Size = 10
    end
    object TBFuncionariocidade: TStringField
      FieldKind = fkLookup
      FieldName = 'cidade'
      LookupDataSet = TBCidade
      LookupKeyFields = 'IDCIDADE'
      LookupResultField = 'NOMECIDADES'
      KeyFields = 'IDCIDADE'
      Size = 45
      Lookup = True
    end
    object TBFuncionariocargo: TStringField
      FieldKind = fkLookup
      FieldName = 'cargo'
      LookupDataSet = TBCargo
      LookupKeyFields = 'IDCARGO'
      LookupResultField = 'NOMECARGO'
      KeyFields = 'IDCARGO'
      Size = 45
      Lookup = True
    end
  end
  object IBFuncionario: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDFUNCIONARIO,'
      '  IDCARGO,'
      '  IDCIDADE,'
      '  NOMEFUNCIONARIO,'
      '  CPF,'
      '  RG,'
      '  SEXO,'
      '  DATANASCIMENTO,'
      '  ENDERECO,'
      '  TELEFONE,'
      '  EMAIL,'
      '  SALARIO,'
      '  CARTEIRADETRABALHO,'
      '  STATUSFUNCIONARIO'
      'from FUNCIONARIO '
      'where'
      '  IDFUNCIONARIO = :IDFUNCIONARIO')
    ModifySQL.Strings = (
      'update FUNCIONARIO'
      'set'
      '  IDFUNCIONARIO = :IDFUNCIONARIO,'
      '  IDCARGO = :IDCARGO,'
      '  IDCIDADE = :IDCIDADE,'
      '  NOMEFUNCIONARIO = :NOMEFUNCIONARIO,'
      '  CPF = :CPF,'
      '  RG = :RG,'
      '  SEXO = :SEXO,'
      '  DATANASCIMENTO = :DATANASCIMENTO,'
      '  ENDERECO = :ENDERECO,'
      '  TELEFONE = :TELEFONE,'
      '  EMAIL = :EMAIL,'
      '  SALARIO = :SALARIO,'
      '  CARTEIRADETRABALHO = :CARTEIRADETRABALHO,'
      '  STATUSFUNCIONARIO = :STATUSFUNCIONARIO'
      'where'
      '  IDFUNCIONARIO = :OLD_IDFUNCIONARIO')
    InsertSQL.Strings = (
      'insert into FUNCIONARIO'
      
        '  (IDFUNCIONARIO, IDCARGO, IDCIDADE, NOMEFUNCIONARIO, CPF, RG, S' +
        'EXO, DATANASCIMENTO, '
      
        '   ENDERECO, TELEFONE, EMAIL, SALARIO, CARTEIRADETRABALHO, STATU' +
        'SFUNCIONARIO)'
      'values'
      
        '  (:IDFUNCIONARIO, :IDCARGO, :IDCIDADE, :NOMEFUNCIONARIO, :CPF, ' +
        ':RG, :SEXO, '
      
        '   :DATANASCIMENTO, :ENDERECO, :TELEFONE, :EMAIL, :SALARIO, :CAR' +
        'TEIRADETRABALHO, '
      '   :STATUSFUNCIONARIO)')
    DeleteSQL.Strings = (
      'delete from FUNCIONARIO'
      'where'
      '  IDFUNCIONARIO = :OLD_IDFUNCIONARIO')
    Left = 144
    Top = 776
  end
  object DSFuncionario: TDataSource
    DataSet = TBFuncionario
    Left = 240
    Top = 776
  end
  object TBItemCompra: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnNewRecord = TBItemCompraNewRecord
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ITEMCOMPRA')
    UpdateObject = IBItemCompra
    GeneratorField.Field = 'IDITEMCOMPRA'
    GeneratorField.Generator = 'GEN_ITEMCOMPRA_ID'
    Left = 40
    Top = 832
    object TBItemCompraIDITEMCOMPRA: TIntegerField
      FieldName = 'IDITEMCOMPRA'
      Origin = '"ITEMCOMPRA"."IDITEMCOMPRA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBItemCompraIDCOMPRA: TIntegerField
      FieldName = 'IDCOMPRA'
      Origin = '"ITEMCOMPRA"."IDCOMPRA"'
      Required = True
    end
    object TBItemCompraIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = '"ITEMCOMPRA"."IDPRODUTO"'
      Required = True
    end
    object TBItemCompraQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = '"ITEMCOMPRA"."QUANTIDADE"'
    end
    object TBItemCompraVALORITEMCOMPRA: TIntegerField
      FieldName = 'VALORITEMCOMPRA'
      Origin = '"ITEMCOMPRA"."VALORITEMCOMPRA"'
    end
    object TBItemCompraTOTAL: TIntegerField
      FieldName = 'TOTAL'
      Origin = '"ITEMCOMPRA"."TOTAL"'
    end
    object TBItemCompraProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = TBProduto
      LookupKeyFields = 'IDPRODUTO'
      LookupResultField = 'NOMEPRODUTO'
      KeyFields = 'IDPRODUTO'
      Size = 30
      Lookup = True
    end
  end
  object IBItemCompra: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDITEMCOMPRA,'
      '  IDCOMPRA,'
      '  IDPRODUTO,'
      '  QUANTIDADE,'
      '  VALORITEMCOMPRA,'
      '  TOTAL'
      'from ITEMCOMPRA '
      'where'
      '  IDITEMCOMPRA = :IDITEMCOMPRA')
    ModifySQL.Strings = (
      'update ITEMCOMPRA'
      'set'
      '  IDITEMCOMPRA = :IDITEMCOMPRA,'
      '  IDCOMPRA = :IDCOMPRA,'
      '  IDPRODUTO = :IDPRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  VALORITEMCOMPRA = :VALORITEMCOMPRA,'
      '  TOTAL = :TOTAL'
      'where'
      '  IDITEMCOMPRA = :OLD_IDITEMCOMPRA')
    InsertSQL.Strings = (
      'insert into ITEMCOMPRA'
      
        '  (IDITEMCOMPRA, IDCOMPRA, IDPRODUTO, QUANTIDADE, VALORITEMCOMPR' +
        'A, TOTAL)'
      'values'
      
        '  (:IDITEMCOMPRA, :IDCOMPRA, :IDPRODUTO, :QUANTIDADE, :VALORITEM' +
        'COMPRA, '
      '   :TOTAL)')
    DeleteSQL.Strings = (
      'delete from ITEMCOMPRA'
      'where'
      '  IDITEMCOMPRA = :OLD_IDITEMCOMPRA')
    Left = 144
    Top = 832
  end
  object DSItemCompra: TDataSource
    DataSet = TBItemCompra
    Left = 240
    Top = 832
  end
  object TBItemVenda: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnNewRecord = TBItemVendaNewRecord
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ITEMVENDA')
    UpdateObject = IBItemVenda
    GeneratorField.Field = 'IDITEMVENDA'
    GeneratorField.Generator = 'GEN_ITEMVENDA_ID'
    Left = 40
    Top = 904
    object TBItemVendaIDITEMVENDA: TIntegerField
      FieldName = 'IDITEMVENDA'
      Origin = '"ITEMVENDA"."IDITEMVENDA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBItemVendaIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = '"ITEMVENDA"."IDPRODUTO"'
      Required = True
    end
    object TBItemVendaIDVENDA: TIntegerField
      FieldName = 'IDVENDA'
      Origin = '"ITEMVENDA"."IDVENDA"'
      Required = True
    end
    object TBItemVendaQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = '"ITEMVENDA"."QUANTIDADE"'
    end
    object TBItemVendaVALOR: TIntegerField
      FieldName = 'VALOR'
      Origin = '"ITEMVENDA"."VALOR"'
    end
    object TBItemVendaTOTAL: TIntegerField
      FieldName = 'TOTAL'
      Origin = '"ITEMVENDA"."TOTAL"'
    end
    object TBItemVendaProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = TBProduto
      LookupKeyFields = 'IDPRODUTO'
      LookupResultField = 'NOMEPRODUTO'
      KeyFields = 'IDPRODUTO'
      Size = 25
      Lookup = True
    end
  end
  object IBItemVenda: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDITEMVENDA,'
      '  IDPRODUTO,'
      '  IDVENDA,'
      '  QUANTIDADE,'
      '  VALOR,'
      '  TOTAL'
      'from ITEMVENDA '
      'where'
      '  IDITEMVENDA = :IDITEMVENDA')
    ModifySQL.Strings = (
      'update ITEMVENDA'
      'set'
      '  IDITEMVENDA = :IDITEMVENDA,'
      '  IDPRODUTO = :IDPRODUTO,'
      '  IDVENDA = :IDVENDA,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  VALOR = :VALOR,'
      '  TOTAL = :TOTAL'
      'where'
      '  IDITEMVENDA = :OLD_IDITEMVENDA')
    InsertSQL.Strings = (
      'insert into ITEMVENDA'
      '  (IDITEMVENDA, IDPRODUTO, IDVENDA, QUANTIDADE, VALOR, TOTAL)'
      'values'
      
        '  (:IDITEMVENDA, :IDPRODUTO, :IDVENDA, :QUANTIDADE, :VALOR, :TOT' +
        'AL)')
    DeleteSQL.Strings = (
      'delete from ITEMVENDA'
      'where'
      '  IDITEMVENDA = :OLD_IDITEMVENDA')
    Left = 144
    Top = 904
  end
  object DSItemVenda: TDataSource
    DataSet = TBItemVenda
    Left = 240
    Top = 904
  end
  object TBMarca: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnNewRecord = TBMarcaNewRecord
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from MARCA')
    UpdateObject = IBMarca
    GeneratorField.Field = 'IDMARCA'
    GeneratorField.Generator = 'GEN_MARCA_ID'
    Left = 40
    Top = 968
    object TBMarcaIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
      Origin = '"MARCA"."IDMARCA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBMarcaNOMEMARCA: TIBStringField
      FieldName = 'NOMEMARCA'
      Origin = '"MARCA"."NOMEMARCA"'
      Size = 45
    end
    object TBMarcaSTATUSMARCA: TIBStringField
      FieldName = 'STATUSMARCA'
      Origin = '"MARCA"."STATUSMARCA"'
      Size = 10
    end
  end
  object IBMarca: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDMARCA,'
      '  NOMEMARCA,'
      '  STATUSMARCA'
      'from MARCA '
      'where'
      '  IDMARCA = :IDMARCA')
    ModifySQL.Strings = (
      'update MARCA'
      'set'
      '  IDMARCA = :IDMARCA,'
      '  NOMEMARCA = :NOMEMARCA,'
      '  STATUSMARCA = :STATUSMARCA'
      'where'
      '  IDMARCA = :OLD_IDMARCA')
    InsertSQL.Strings = (
      'insert into MARCA'
      '  (IDMARCA, NOMEMARCA, STATUSMARCA)'
      'values'
      '  (:IDMARCA, :NOMEMARCA, :STATUSMARCA)')
    DeleteSQL.Strings = (
      'delete from MARCA'
      'where'
      '  IDMARCA = :OLD_IDMARCA')
    Left = 144
    Top = 968
  end
  object DSMarca: TDataSource
    DataSet = TBMarca
    Left = 240
    Top = 968
  end
  object TBPagamento: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PAGAMENTO')
    UpdateObject = IBPagamento
    GeneratorField.Field = 'IDPAGAMENTO'
    GeneratorField.Generator = 'GEN_PAGAMENTO_ID'
    Left = 40
    Top = 1032
    object TBPagamentoIDPAGAMENTO: TIntegerField
      FieldName = 'IDPAGAMENTO'
      Origin = '"PAGAMENTO"."IDPAGAMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBPagamentoIDPARCELASCONTASAPAGAR: TIntegerField
      FieldName = 'IDPARCELASCONTASAPAGAR'
      Origin = '"PAGAMENTO"."IDPARCELASCONTASAPAGAR"'
      Required = True
    end
    object TBPagamentoVALORDOPAGAMENTO: TIntegerField
      FieldName = 'VALORDOPAGAMENTO'
      Origin = '"PAGAMENTO"."VALORDOPAGAMENTO"'
    end
    object TBPagamentoDATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      Origin = '"PAGAMENTO"."DATAPAGAMENTO"'
    end
    object TBPagamentoHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"PAGAMENTO"."HORA"'
    end
  end
  object IBPagamento: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDPAGAMENTO,'
      '  IDPARCELASCONTASAPAGAR,'
      '  VALORDOPAGAMENTO,'
      '  DATAPAGAMENTO,'
      '  HORA'
      'from PAGAMENTO '
      'where'
      '  IDPAGAMENTO = :IDPAGAMENTO')
    ModifySQL.Strings = (
      'update PAGAMENTO'
      'set'
      '  IDPAGAMENTO = :IDPAGAMENTO,'
      '  IDPARCELASCONTASAPAGAR = :IDPARCELASCONTASAPAGAR,'
      '  VALORDOPAGAMENTO = :VALORDOPAGAMENTO,'
      '  DATAPAGAMENTO = :DATAPAGAMENTO,'
      '  HORA = :HORA'
      'where'
      '  IDPAGAMENTO = :OLD_IDPAGAMENTO')
    InsertSQL.Strings = (
      'insert into PAGAMENTO'
      
        '  (IDPAGAMENTO, IDPARCELASCONTASAPAGAR, VALORDOPAGAMENTO, DATAPA' +
        'GAMENTO, '
      '   HORA)'
      'values'
      
        '  (:IDPAGAMENTO, :IDPARCELASCONTASAPAGAR, :VALORDOPAGAMENTO, :DA' +
        'TAPAGAMENTO, '
      '   :HORA)')
    DeleteSQL.Strings = (
      'delete from PAGAMENTO'
      'where'
      '  IDPAGAMENTO = :OLD_IDPAGAMENTO')
    Left = 144
    Top = 1032
  end
  object DSPagamento: TDataSource
    DataSet = TBPagamento
    Left = 240
    Top = 1032
  end
  object TBParcelaContaAReceber: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PARCELASCONTASARECEBER')
    UpdateObject = IBParcelaContaAReceber
    GeneratorField.Field = 'IDPARCELASCONTASARECEBER'
    GeneratorField.Generator = 'GEN_PARCELASCONTASARECEBER_ID'
    Left = 40
    Top = 1104
    object TBParcelaContaAReceberIDPARCELASCONTASARECEBER: TIntegerField
      FieldName = 'IDPARCELASCONTASARECEBER'
      Origin = '"PARCELASCONTASARECEBER"."IDPARCELASCONTASARECEBER"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBParcelaContaAReceberIDCONTASARESCEBER: TIntegerField
      FieldName = 'IDCONTASARESCEBER'
      Origin = '"PARCELASCONTASARECEBER"."IDCONTASARESCEBER"'
      Required = True
    end
    object TBParcelaContaAReceberDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PARCELASCONTASARECEBER"."DESCRICAO"'
      Size = 45
    end
    object TBParcelaContaAReceberDATAPARCELACONTAARECEBER: TDateField
      FieldName = 'DATAPARCELACONTAARECEBER'
      Origin = '"PARCELASCONTASARECEBER"."DATAPARCELACONTAARECEBER"'
    end
    object TBParcelaContaAReceberVALORPARCELAS: TIntegerField
      FieldName = 'VALORPARCELAS'
      Origin = '"PARCELASCONTASARECEBER"."VALORPARCELAS"'
    end
    object TBParcelaContaAReceberSTATUSPARCELASCONTASARECEBER: TIBStringField
      FieldName = 'STATUSPARCELASCONTASARECEBER'
      Origin = '"PARCELASCONTASARECEBER"."STATUSPARCELASCONTASARECEBER"'
      Size = 10
    end
  end
  object IBParcelaContaAReceber: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDPARCELASCONTASARECEBER,'
      '  IDCONTASARESCEBER,'
      '  DESCRICAO,'
      '  DATAPARCELACONTAARECEBER,'
      '  VALORPARCELAS,'
      '  STATUSPARCELASCONTASARECEBER'
      'from PARCELASCONTASARECEBER '
      'where'
      '  IDPARCELASCONTASARECEBER = :IDPARCELASCONTASARECEBER')
    ModifySQL.Strings = (
      'update PARCELASCONTASARECEBER'
      'set'
      '  IDPARCELASCONTASARECEBER = :IDPARCELASCONTASARECEBER,'
      '  IDCONTASARESCEBER = :IDCONTASARESCEBER,'
      '  DESCRICAO = :DESCRICAO,'
      '  DATAPARCELACONTAARECEBER = :DATAPARCELACONTAARECEBER,'
      '  VALORPARCELAS = :VALORPARCELAS,'
      '  STATUSPARCELASCONTASARECEBER = :STATUSPARCELASCONTASARECEBER'
      'where'
      '  IDPARCELASCONTASARECEBER = :OLD_IDPARCELASCONTASARECEBER')
    InsertSQL.Strings = (
      'insert into PARCELASCONTASARECEBER'
      
        '  (IDPARCELASCONTASARECEBER, IDCONTASARESCEBER, DESCRICAO, DATAP' +
        'ARCELACONTAARECEBER, '
      '   VALORPARCELAS, STATUSPARCELASCONTASARECEBER)'
      'values'
      
        '  (:IDPARCELASCONTASARECEBER, :IDCONTASARESCEBER, :DESCRICAO, :D' +
        'ATAPARCELACONTAARECEBER, '
      '   :VALORPARCELAS, :STATUSPARCELASCONTASARECEBER)')
    DeleteSQL.Strings = (
      'delete from PARCELASCONTASARECEBER'
      'where'
      '  IDPARCELASCONTASARECEBER = :OLD_IDPARCELASCONTASARECEBER')
    Left = 176
    Top = 1104
  end
  object DSParcelaContaAReceber: TDataSource
    DataSet = TBParcelaContaAPagar
    Left = 312
    Top = 1104
  end
  object TBParcelaContaAPagar: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PARCELASCONTASAPAGAR')
    UpdateObject = IBParcelaContaAPagar
    GeneratorField.Field = 'IDPARCELASCONTASAPAGAR'
    GeneratorField.Generator = 'GEN_PARCELASCONTASAPAGAR_ID'
    Left = 40
    Top = 1168
    object TBParcelaContaAPagarIDPARCELASCONTASAPAGAR: TIntegerField
      FieldName = 'IDPARCELASCONTASAPAGAR'
      Origin = '"PARCELASCONTASAPAGAR"."IDPARCELASCONTASAPAGAR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBParcelaContaAPagarIDCONTASAPAGAR: TIntegerField
      FieldName = 'IDCONTASAPAGAR'
      Origin = '"PARCELASCONTASAPAGAR"."IDCONTASAPAGAR"'
      Required = True
    end
    object TBParcelaContaAPagarDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PARCELASCONTASAPAGAR"."DESCRICAO"'
      Size = 45
    end
    object TBParcelaContaAPagarDATAPARCELASCONTASAPAGAR: TDateField
      FieldName = 'DATAPARCELASCONTASAPAGAR'
      Origin = '"PARCELASCONTASAPAGAR"."DATAPARCELASCONTASAPAGAR"'
    end
    object TBParcelaContaAPagarVALOR: TIntegerField
      FieldName = 'VALOR'
      Origin = '"PARCELASCONTASAPAGAR"."VALOR"'
    end
    object TBParcelaContaAPagarSTATUSPARCELASCONTASAPAGAR: TIBStringField
      FieldName = 'STATUSPARCELASCONTASAPAGAR'
      Origin = '"PARCELASCONTASAPAGAR"."STATUSPARCELASCONTASAPAGAR"'
      Size = 10
    end
  end
  object IBParcelaContaAPagar: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDPARCELASCONTASAPAGAR,'
      '  IDCONTASAPAGAR,'
      '  DESCRICAO,'
      '  DATAPARCELASCONTASAPAGAR,'
      '  VALOR,'
      '  STATUSPARCELASCONTASAPAGAR'
      'from PARCELASCONTASAPAGAR '
      'where'
      '  IDPARCELASCONTASAPAGAR = :IDPARCELASCONTASAPAGAR')
    ModifySQL.Strings = (
      'update PARCELASCONTASAPAGAR'
      'set'
      '  IDPARCELASCONTASAPAGAR = :IDPARCELASCONTASAPAGAR,'
      '  IDCONTASAPAGAR = :IDCONTASAPAGAR,'
      '  DESCRICAO = :DESCRICAO,'
      '  DATAPARCELASCONTASAPAGAR = :DATAPARCELASCONTASAPAGAR,'
      '  VALOR = :VALOR,'
      '  STATUSPARCELASCONTASAPAGAR = :STATUSPARCELASCONTASAPAGAR'
      'where'
      '  IDPARCELASCONTASAPAGAR = :OLD_IDPARCELASCONTASAPAGAR')
    InsertSQL.Strings = (
      'insert into PARCELASCONTASAPAGAR'
      
        '  (IDPARCELASCONTASAPAGAR, IDCONTASAPAGAR, DESCRICAO, DATAPARCEL' +
        'ASCONTASAPAGAR, '
      '   VALOR, STATUSPARCELASCONTASAPAGAR)'
      'values'
      
        '  (:IDPARCELASCONTASAPAGAR, :IDCONTASAPAGAR, :DESCRICAO, :DATAPA' +
        'RCELASCONTASAPAGAR, '
      '   :VALOR, :STATUSPARCELASCONTASAPAGAR)')
    DeleteSQL.Strings = (
      'delete from PARCELASCONTASAPAGAR'
      'where'
      '  IDPARCELASCONTASAPAGAR = :OLD_IDPARCELASCONTASAPAGAR')
    Left = 176
    Top = 1168
  end
  object DSParcelaContaAPagar: TDataSource
    DataSet = TBParcelaContaAPagar
    Left = 312
    Top = 1168
  end
  object DSRecebimento: TDataSource
    DataSet = TBRecebimento
    Left = 240
    Top = 1296
  end
  object IBRecebimento: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDRESCEBIMENTO,'
      '  IDPARCELASCONTASARECEBER,'
      '  VALORDACONTA,'
      '  DATARECEBIMENTO,'
      '  HORA,'
      '  VALORRECEBIMENTO'
      'from RESCEBIMENTO '
      'where'
      '  IDRESCEBIMENTO = :IDRESCEBIMENTO')
    ModifySQL.Strings = (
      'update RESCEBIMENTO'
      'set'
      '  IDRESCEBIMENTO = :IDRESCEBIMENTO,'
      '  IDPARCELASCONTASARECEBER = :IDPARCELASCONTASARECEBER,'
      '  VALORDACONTA = :VALORDACONTA,'
      '  DATARECEBIMENTO = :DATARECEBIMENTO,'
      '  HORA = :HORA,'
      '  VALORRECEBIMENTO = :VALORRECEBIMENTO'
      'where'
      '  IDRESCEBIMENTO = :OLD_IDRESCEBIMENTO')
    InsertSQL.Strings = (
      'insert into RESCEBIMENTO'
      
        '  (IDRESCEBIMENTO, IDPARCELASCONTASARECEBER, VALORDACONTA, DATAR' +
        'ECEBIMENTO, '
      '   HORA, VALORRECEBIMENTO)'
      'values'
      
        '  (:IDRESCEBIMENTO, :IDPARCELASCONTASARECEBER, :VALORDACONTA, :D' +
        'ATARECEBIMENTO, '
      '   :HORA, :VALORRECEBIMENTO)')
    DeleteSQL.Strings = (
      'delete from RESCEBIMENTO'
      'where'
      '  IDRESCEBIMENTO = :OLD_IDRESCEBIMENTO')
    Left = 144
    Top = 1296
  end
  object TBRecebimento: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from RESCEBIMENTO')
    UpdateObject = IBRecebimento
    GeneratorField.Field = 'IDRESCEBIMENTO'
    GeneratorField.Generator = 'GEN_RESCEBIMENTO_ID'
    Left = 40
    Top = 1296
    object TBRecebimentoIDRESCEBIMENTO: TIntegerField
      FieldName = 'IDRESCEBIMENTO'
      Origin = '"RESCEBIMENTO"."IDRESCEBIMENTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBRecebimentoIDPARCELASCONTASARECEBER: TIntegerField
      FieldName = 'IDPARCELASCONTASARECEBER'
      Origin = '"RESCEBIMENTO"."IDPARCELASCONTASARECEBER"'
      Required = True
    end
    object TBRecebimentoVALORDACONTA: TIntegerField
      FieldName = 'VALORDACONTA'
      Origin = '"RESCEBIMENTO"."VALORDACONTA"'
    end
    object TBRecebimentoDATARECEBIMENTO: TDateField
      FieldName = 'DATARECEBIMENTO'
      Origin = '"RESCEBIMENTO"."DATARECEBIMENTO"'
    end
    object TBRecebimentoHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"RESCEBIMENTO"."HORA"'
    end
    object TBRecebimentoVALORRECEBIMENTO: TIntegerField
      FieldName = 'VALORRECEBIMENTO'
      Origin = '"RESCEBIMENTO"."VALORRECEBIMENTO"'
    end
  end
  object DSProduto: TDataSource
    DataSet = TBProduto
    Left = 240
    Top = 1232
  end
  object IBProduto: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDPRODUTO,'
      '  IDMARCA,'
      '  NOMEPRODUTO,'
      '  PRECOCUSTO,'
      '  PRECOVENDA,'
      '  QUANTIDADE,'
      '  STATUSPRODUTO'
      'from PRODUTO '
      'where'
      '  IDPRODUTO = :IDPRODUTO')
    ModifySQL.Strings = (
      'update PRODUTO'
      'set'
      '  IDPRODUTO = :IDPRODUTO,'
      '  IDMARCA = :IDMARCA,'
      '  NOMEPRODUTO = :NOMEPRODUTO,'
      '  PRECOCUSTO = :PRECOCUSTO,'
      '  PRECOVENDA = :PRECOVENDA,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  STATUSPRODUTO = :STATUSPRODUTO'
      'where'
      '  IDPRODUTO = :OLD_IDPRODUTO')
    InsertSQL.Strings = (
      'insert into PRODUTO'
      
        '  (IDPRODUTO, IDMARCA, NOMEPRODUTO, PRECOCUSTO, PRECOVENDA, QUAN' +
        'TIDADE, '
      '   STATUSPRODUTO)'
      'values'
      
        '  (:IDPRODUTO, :IDMARCA, :NOMEPRODUTO, :PRECOCUSTO, :PRECOVENDA,' +
        ' :QUANTIDADE, '
      '   :STATUSPRODUTO)')
    DeleteSQL.Strings = (
      'delete from PRODUTO'
      'where'
      '  IDPRODUTO = :OLD_IDPRODUTO')
    Left = 144
    Top = 1232
  end
  object TBProduto: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnNewRecord = TBProdutoNewRecord
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PRODUTO')
    UpdateObject = IBProduto
    GeneratorField.Field = 'IDPRODUTO'
    GeneratorField.Generator = 'GEN_PRODUTO_ID'
    Left = 40
    Top = 1232
    object TBProdutoIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = '"PRODUTO"."IDPRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBProdutoIDMARCA: TIntegerField
      FieldName = 'IDMARCA'
      Origin = '"PRODUTO"."IDMARCA"'
      Required = True
    end
    object TBProdutoNOMEPRODUTO: TIBStringField
      FieldName = 'NOMEPRODUTO'
      Origin = '"PRODUTO"."NOMEPRODUTO"'
      Size = 45
    end
    object TBProdutoPRECOCUSTO: TIntegerField
      FieldName = 'PRECOCUSTO'
      Origin = '"PRODUTO"."PRECOCUSTO"'
    end
    object TBProdutoPRECOVENDA: TIntegerField
      FieldName = 'PRECOVENDA'
      Origin = '"PRODUTO"."PRECOVENDA"'
    end
    object TBProdutoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = '"PRODUTO"."QUANTIDADE"'
    end
    object TBProdutoSTATUSPRODUTO: TIBStringField
      FieldName = 'STATUSPRODUTO'
      Origin = '"PRODUTO"."STATUSPRODUTO"'
      Size = 10
    end
    object TBProdutomarca: TStringField
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = TBMarca
      LookupKeyFields = 'IDMARCA'
      LookupResultField = 'NOMEMARCA'
      KeyFields = 'IDMARCA'
      Size = 45
      Lookup = True
    end
  end
  object DSVenda: TDataSource
    DataSet = TBVenda
    Left = 240
    Top = 1368
  end
  object IBVenda: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDVENDA,'
      '  IDFUNCIONARIO,'
      '  IDCLIENTE,'
      '  DATAVENDA,'
      '  TIPO,'
      '  HORA,'
      '  STATUSVENDA'
      'from VENDA '
      'where'
      '  IDVENDA = :IDVENDA')
    ModifySQL.Strings = (
      'update VENDA'
      'set'
      '  IDVENDA = :IDVENDA,'
      '  IDFUNCIONARIO = :IDFUNCIONARIO,'
      '  IDCLIENTE = :IDCLIENTE,'
      '  DATAVENDA = :DATAVENDA,'
      '  TIPO = :TIPO,'
      '  HORA = :HORA,'
      '  STATUSVENDA = :STATUSVENDA'
      'where'
      '  IDVENDA = :OLD_IDVENDA')
    InsertSQL.Strings = (
      'insert into VENDA'
      
        '  (IDVENDA, IDFUNCIONARIO, IDCLIENTE, DATAVENDA, TIPO, HORA, STA' +
        'TUSVENDA)'
      'values'
      
        '  (:IDVENDA, :IDFUNCIONARIO, :IDCLIENTE, :DATAVENDA, :TIPO, :HOR' +
        'A, :STATUSVENDA)')
    DeleteSQL.Strings = (
      'delete from VENDA'
      'where'
      '  IDVENDA = :OLD_IDVENDA')
    Left = 144
    Top = 1368
  end
  object TBVenda: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    AfterScroll = TBVendaAfterScroll
    OnCalcFields = TBVendaCalcFields
    OnNewRecord = TBVendaNewRecord
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from VENDA')
    UpdateObject = IBVenda
    GeneratorField.Field = 'IDVENDA'
    GeneratorField.Generator = 'GEN_VENDA_ID'
    Left = 40
    Top = 1368
    object TBVendaIDVENDA: TIntegerField
      FieldName = 'IDVENDA'
      Origin = '"VENDA"."IDVENDA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBVendaIDFUNCIONARIO: TIntegerField
      FieldName = 'IDFUNCIONARIO'
      Origin = '"VENDA"."IDFUNCIONARIO"'
      Required = True
    end
    object TBVendaIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = '"VENDA"."IDCLIENTE"'
      Required = True
    end
    object TBVendaDATAVENDA: TDateField
      FieldName = 'DATAVENDA'
      Origin = '"VENDA"."DATAVENDA"'
    end
    object TBVendaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VENDA"."TIPO"'
      Size = 10
    end
    object TBVendaHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"VENDA"."HORA"'
    end
    object TBVendaSTATUSVENDA: TIBStringField
      FieldName = 'STATUSVENDA'
      Origin = '"VENDA"."STATUSVENDA"'
      Size = 10
    end
    object TBVendatotalvenda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totalvenda'
      Calculated = True
    end
    object TBVendaqtdproduto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtdproduto'
      Calculated = True
    end
    object TBVendaqtditvenda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'qtditvenda'
      Calculated = True
    end
  end
  object QuCalc: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 392
    Top = 8
  end
  object QUPesquisa: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 552
    Top = 8
  end
  object DSPesquisa: TDataSource
    DataSet = QUPesquisa
    Left = 632
    Top = 8
  end
  object TBDescarte: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    OnNewRecord = TBDescarteNewRecord
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from DESCARTE')
    UpdateObject = IBDescarte
    GeneratorField.Field = 'IDDESCARTE'
    GeneratorField.Generator = 'GEN_DESCARTE_ID'
    Left = 392
    Top = 80
    object TBDescarteIDDESCARTE: TIntegerField
      FieldName = 'IDDESCARTE'
      Origin = '"DESCARTE"."IDDESCARTE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TBDescarteIDFUNCIONARIO: TIntegerField
      FieldName = 'IDFUNCIONARIO'
      Origin = '"DESCARTE"."IDFUNCIONARIO"'
    end
    object TBDescarteIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = '"DESCARTE"."IDPRODUTO"'
    end
    object TBDescarteDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"DESCARTE"."DESCRICAO"'
      Size = 45
    end
    object TBDescarteDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DESCARTE"."DATA"'
    end
    object TBDescarteQTD: TIntegerField
      FieldName = 'QTD'
      Origin = '"DESCARTE"."QTD"'
    end
    object TBDescarteProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = TBProduto
      LookupKeyFields = 'IDPRODUTO'
      LookupResultField = 'NOMEPRODUTO'
      KeyFields = 'IDPRODUTO'
      Lookup = True
    end
    object TBDescarteFuncionario: TStringField
      FieldKind = fkLookup
      FieldName = 'Funcionario'
      LookupDataSet = TBFuncionario
      LookupKeyFields = 'IDFUNCIONARIO'
      LookupResultField = 'NOMEFUNCIONARIO'
      KeyFields = 'IDFUNCIONARIO'
      Lookup = True
    end
  end
  object IBDescarte: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  IDDESCARTE,'
      '  IDFUNCIONARIO,'
      '  IDPRODUTO,'
      '  DESCRICAO,'
      '  DATA,'
      '  QTD'
      'from DESCARTE '
      'where'
      '  IDDESCARTE = :IDDESCARTE')
    ModifySQL.Strings = (
      'update DESCARTE'
      'set'
      '  IDDESCARTE = :IDDESCARTE,'
      '  IDFUNCIONARIO = :IDFUNCIONARIO,'
      '  IDPRODUTO = :IDPRODUTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  DATA = :DATA,'
      '  QTD = :QTD'
      'where'
      '  IDDESCARTE = :OLD_IDDESCARTE')
    InsertSQL.Strings = (
      'insert into DESCARTE'
      '  (IDDESCARTE, IDFUNCIONARIO, IDPRODUTO, DESCRICAO, DATA, QTD)'
      'values'
      
        '  (:IDDESCARTE, :IDFUNCIONARIO, :IDPRODUTO, :DESCRICAO, :DATA, :' +
        'QTD)')
    DeleteSQL.Strings = (
      'delete from DESCARTE'
      'where'
      '  IDDESCARTE = :OLD_IDDESCARTE')
    Left = 480
    Top = 80
  end
  object DSDescarte: TDataSource
    DataSet = TBDescarte
    Left = 568
    Top = 80
  end
end