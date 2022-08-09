Unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet,
  IBX.IBUpdateSQL, IBX.IBQuery, IBX.IBDatabase;

type
  TDM = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    TBEstado: TIBQuery;
    IBEstado: TIBUpdateSQL;
    DSEstado: TDataSource;
    TBContasAReceber: TIBQuery;
    IBContasAReceber: TIBUpdateSQL;
    DSContasAReceber: TDataSource;
    TBCaixa: TIBQuery;
    TBCargo: TIBQuery;
    IBCargo: TIBUpdateSQL;
    IBCaixa: TIBUpdateSQL;
    DSCaixa: TDataSource;
    DSCargo: TDataSource;
    TBCidade: TIBQuery;
    IBCidade: TIBUpdateSQL;
    DSCidade: TDataSource;
    TBCliente: TIBQuery;
    IBCliente: TIBUpdateSQL;
    DSCliente: TDataSource;
    TBCompra: TIBQuery;
    IBCompra: TIBUpdateSQL;
    DSCompra: TDataSource;
    TBContasAPagar: TIBQuery;
    IBContasAPagar: TIBUpdateSQL;
    DSContasAPagar: TDataSource;
    TBFornecedor: TIBQuery;
    IBFornecedor: TIBUpdateSQL;
    DSFornecedor: TDataSource;
    TBFuncionario: TIBQuery;
    IBFuncionario: TIBUpdateSQL;
    DSFuncionario: TDataSource;
    TBItemCompra: TIBQuery;
    IBItemCompra: TIBUpdateSQL;
    DSItemCompra: TDataSource;
    TBItemVenda: TIBQuery;
    IBItemVenda: TIBUpdateSQL;
    DSItemVenda: TDataSource;
    TBMarca: TIBQuery;
    IBMarca: TIBUpdateSQL;
    DSMarca: TDataSource;
    TBPagamento: TIBQuery;
    IBPagamento: TIBUpdateSQL;
    DSPagamento: TDataSource;
    TBParcelaContaAReceber: TIBQuery;
    IBParcelaContaAReceber: TIBUpdateSQL;
    DSParcelaContaAReceber: TDataSource;
    TBParcelaContaAPagar: TIBQuery;
    IBParcelaContaAPagar: TIBUpdateSQL;
    DSParcelaContaAPagar: TDataSource;
    DSRecebimento: TDataSource;
    IBRecebimento: TIBUpdateSQL;
    TBRecebimento: TIBQuery;
    DSProduto: TDataSource;
    IBProduto: TIBUpdateSQL;
    TBProduto: TIBQuery;
    DSVenda: TDataSource;
    IBVenda: TIBUpdateSQL;
    TBVenda: TIBQuery;
    TBEstadoIDESTADO: TIntegerField;
    TBEstadoNOMEESTADO: TIBStringField;
    TBEstadoSIGLAS: TIBStringField;
    TBEstadoSTATUSESTADOS: TIBStringField;
    TBCaixaIDCAIXA: TIntegerField;
    TBCaixaIDRESCEBIMENTO: TIntegerField;
    TBCaixaIDPAGAMENTO: TIntegerField;
    TBCaixaVALORENTRADA: TIntegerField;
    TBCaixaVALORSAIDA: TIntegerField;
    TBCaixaDESCRICAO: TIBStringField;
    TBCaixaSALDO: TIntegerField;
    TBCaixaDATAABERTUDA: TDateField;
    TBCaixaDATAFECHAMENTO: TDateField;
    TBCaixaSTATUSCAIXA: TIBStringField;
    TBCidadeIDCIDADE: TIntegerField;
    TBCidadeIDESTADO: TIntegerField;
    TBCidadeNOMECIDADES: TIBStringField;
    TBCidadeSTATUSCIDADE: TIBStringField;
    TBCidadesigla: TStringField;
    TBClienteIDCLIENTE: TIntegerField;
    TBClienteIDCIDADE: TIntegerField;
    TBClienteNOMECLIENTE: TIBStringField;
    TBClienteCPF: TIBStringField;
    TBClienteSEXO: TIBStringField;
    TBClienteDATANASCIMENTO: TDateField;
    TBClienteENDERECO: TIBStringField;
    TBClienteTELEFONE: TIBStringField;
    TBClienteEMAIL: TIBStringField;
    TBClienteRG: TIBStringField;
    TBClienteSTATUSCLIENTE: TIBStringField;
    TBClientecidade: TStringField;
    TBFornecedorIDFORNECEDOR: TIntegerField;
    TBFornecedorIDCIDADE: TIntegerField;
    TBFornecedorNOMEFANTASIA: TIBStringField;
    TBFornecedorCNPJ: TIBStringField;
    TBFornecedorTELEFONE: TIBStringField;
    TBFornecedorRAZAOSOCIAL: TIBStringField;
    TBFornecedorSTATUSFORNECEDOR: TIBStringField;
    TBFuncionarioIDFUNCIONARIO: TIntegerField;
    TBFuncionarioIDCARGO: TIntegerField;
    TBFuncionarioIDCIDADE: TIntegerField;
    TBFuncionarioNOMEFUNCIONARIO: TIBStringField;
    TBFuncionarioCPF: TIBStringField;
    TBFuncionarioRG: TIBStringField;
    TBFuncionarioSEXO: TIBStringField;
    TBFuncionarioDATANASCIMENTO: TDateField;
    TBFuncionarioENDERECO: TIBStringField;
    TBFuncionarioTELEFONE: TIBStringField;
    TBFuncionarioEMAIL: TIBStringField;
    TBFuncionarioSALARIO: TIntegerField;
    TBFuncionarioCARTEIRADETRABALHO: TIBStringField;
    TBFuncionarioSTATUSFUNCIONARIO: TIBStringField;
    TBProdutoIDPRODUTO: TIntegerField;
    TBProdutoIDMARCA: TIntegerField;
    TBProdutoNOMEPRODUTO: TIBStringField;
    TBProdutoPRECOCUSTO: TIntegerField;
    TBProdutoPRECOVENDA: TIntegerField;
    TBProdutoQUANTIDADE: TIntegerField;
    TBProdutoSTATUSPRODUTO: TIBStringField;
    TBMarcaIDMARCA: TIntegerField;
    TBMarcaNOMEMARCA: TIBStringField;
    TBMarcaSTATUSMARCA: TIBStringField;
    TBCargoIDCARGO: TIntegerField;
    TBCargoNOMECARGO: TIBStringField;
    TBCargoSTATUSCARGO: TIBStringField;
    TBFornecedorcidade: TStringField;
    TBProdutomarca: TStringField;
    TBFuncionariocidade: TStringField;
    TBFuncionariocargo: TStringField;
    TBVendaIDVENDA: TIntegerField;
    TBVendaIDFUNCIONARIO: TIntegerField;
    TBVendaIDCLIENTE: TIntegerField;
    TBVendaDATAVENDA: TDateField;
    TBVendaTIPO: TIBStringField;
    TBVendaHORA: TTimeField;
    TBVendaSTATUSVENDA: TIBStringField;
    TBVendatotalvenda: TFloatField;
    TBVendaqtdproduto: TFloatField;
    TBVendaqtditvenda: TFloatField;
    QuCalc: TIBQuery;
    TBItemVendaIDITEMVENDA: TIntegerField;
    TBItemVendaIDPRODUTO: TIntegerField;
    TBItemVendaIDVENDA: TIntegerField;
    TBItemVendaQUANTIDADE: TIntegerField;
    TBItemVendaVALOR: TIntegerField;
    TBItemVendaTOTAL: TIntegerField;
    QUPesquisa: TIBQuery;
    DSPesquisa: TDataSource;
    TBCompraIDCOMPRA: TIntegerField;
    TBCompraIDFORNECEDOR: TIntegerField;
    TBCompraDATACOMPRA: TDateField;
    TBCompraTIPO: TIBStringField;
    TBCompraHORA: TTimeField;
    TBCompraSTATUSCOMPRA: TIBStringField;
    TBCompraIDFUNCIONARIO: TIntegerField;
    TBCompratotalcompra: TFloatField;
    TBCompraqtdproduto: TFloatField;
    TBCompraqtditcompra: TFloatField;
    TBItemCompraIDITEMCOMPRA: TIntegerField;
    TBItemCompraIDCOMPRA: TIntegerField;
    TBItemCompraIDPRODUTO: TIntegerField;
    TBItemCompraQUANTIDADE: TIntegerField;
    TBItemCompraVALORITEMCOMPRA: TIntegerField;
    TBItemCompraTOTAL: TIntegerField;
    TBPagamentoIDPAGAMENTO: TIntegerField;
    TBPagamentoIDPARCELASCONTASAPAGAR: TIntegerField;
    TBPagamentoVALORDOPAGAMENTO: TIntegerField;
    TBPagamentoDATAPAGAMENTO: TDateField;
    TBPagamentoHORA: TTimeField;
    TBParcelaContaAReceberIDPARCELASCONTASARECEBER: TIntegerField;
    TBParcelaContaAReceberIDCONTASARESCEBER: TIntegerField;
    TBParcelaContaAReceberDESCRICAO: TIBStringField;
    TBParcelaContaAReceberDATAPARCELACONTAARECEBER: TDateField;
    TBParcelaContaAReceberVALORPARCELAS: TIntegerField;
    TBParcelaContaAReceberSTATUSPARCELASCONTASARECEBER: TIBStringField;
    TBParcelaContaAPagarIDPARCELASCONTASAPAGAR: TIntegerField;
    TBParcelaContaAPagarIDCONTASAPAGAR: TIntegerField;
    TBParcelaContaAPagarDESCRICAO: TIBStringField;
    TBParcelaContaAPagarDATAPARCELASCONTASAPAGAR: TDateField;
    TBParcelaContaAPagarVALOR: TIntegerField;
    TBParcelaContaAPagarSTATUSPARCELASCONTASAPAGAR: TIBStringField;
    TBRecebimentoIDRESCEBIMENTO: TIntegerField;
    TBRecebimentoIDPARCELASCONTASARECEBER: TIntegerField;
    TBRecebimentoVALORDACONTA: TIntegerField;
    TBRecebimentoDATARECEBIMENTO: TDateField;
    TBRecebimentoHORA: TTimeField;
    TBRecebimentoVALORRECEBIMENTO: TIntegerField;
    TBDescarte: TIBQuery;
    IBDescarte: TIBUpdateSQL;
    DSDescarte: TDataSource;
    TBDescarteIDDESCARTE: TIntegerField;
    TBDescarteIDFUNCIONARIO: TIntegerField;
    TBDescarteIDPRODUTO: TIntegerField;
    TBDescarteDESCRICAO: TIBStringField;
    TBDescarteDATA: TDateField;
    TBDescarteQTD: TIntegerField;
    TBContasAPagarIDCONTASAPAGAR: TIntegerField;
    TBContasAPagarIDFORNECEDOR: TIntegerField;
    TBContasAPagarIDCOMPRA: TIntegerField;
    TBContasAPagarDESCRICAO: TIBStringField;
    TBContasAPagarDATACOMPRA: TDateField;
    TBContasAPagarDATAVENCIMENTO: TDateField;
    TBContasAPagarHORA: TTimeField;
    TBContasAPagarVALORCONTASAPAGAR: TIntegerField;
    TBContasAPagarSTATUSCOMPRASAPAGAR: TIBStringField;
    TBContasAReceberIDCONTASARESCEBER: TIntegerField;
    TBContasAReceberIDVENDA: TIntegerField;
    TBContasAReceberIDCLIENTE: TIntegerField;
    TBContasAReceberDESCRICAO: TIBStringField;
    TBContasAReceberDATAVENDA: TDateField;
    TBContasAReceberDATAVENCIMENTO: TDateField;
    TBContasAReceberHORA: TTimeField;
    TBContasAReceberVALOR: TIntegerField;
    TBContasAReceberSTATUSCONTASARECEBER: TIBStringField;
    TBContasAPagarTIPO: TIBStringField;
    TBContasAReceberTIPO: TIBStringField;
    TBContasAPagarCONTROLE: TIBStringField;
    TBContasAReceberCONTROLE: TIBStringField;
    TBItemVendaProduto: TStringField;
    TBItemCompraProduto: TStringField;
    TBDescarteProduto: TStringField;
    TBDescarteFuncionario: TStringField;
    TBContasAPagarFornecedor: TStringField;
    TBContasAReceberCliente: TStringField;
    TBFornecedorENDERECO: TIBStringField;
    TBFornecedorCELULAR: TIBStringField;
    procedure TBEstadoNewRecord(DataSet: TDataSet);
    procedure TBCidadeNewRecord(DataSet: TDataSet);
    procedure TBCargoNewRecord(DataSet: TDataSet);
    procedure TBClienteNewRecord(DataSet: TDataSet);
    procedure TBFornecedorNewRecord(DataSet: TDataSet);
    procedure TBFuncionarioNewRecord(DataSet: TDataSet);
    procedure TBMarcaNewRecord(DataSet: TDataSet);
    procedure TBProdutoNewRecord(DataSet: TDataSet);
    procedure TBVendaNewRecord(DataSet: TDataSet);
    procedure TBVendaCalcFields(DataSet: TDataSet);
    procedure TBVendaAfterScroll(DataSet: TDataSet);
    procedure TBItemVendaNewRecord(DataSet: TDataSet);
    procedure TBCompraNewRecord(DataSet: TDataSet);
    procedure TBCompraAfterScroll(DataSet: TDataSet);
    procedure TBCompraCalcFields(DataSet: TDataSet);
    procedure TBItemCompraNewRecord(DataSet: TDataSet);
    procedure TBDescarteNewRecord(DataSet: TDataSet);
    procedure TBContasAReceberNewRecord(DataSet: TDataSet);
    procedure TBContasAPagarNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.TBCargoNewRecord(DataSet: TDataSet);
begin
 DM.TBCargoSTATUSCARGO.AsString:= 'ATIVO';
end;

procedure TDM.TBCidadeNewRecord(DataSet: TDataSet);
begin
  DM.TBCidadeSTATUSCIDADE.AsString:= 'ATIVO';
end;

procedure TDM.TBClienteNewRecord(DataSet: TDataSet);
begin
   DM.TBClienteSTATUSCLIENTE.AsString:= 'ATIVO';
end;

procedure TDM.TBCompraAfterScroll(DataSet: TDataSet);
begin

With TBItemCompra do
    begin
      if TBCompraIDCOMPRA.AsString='' Then
      exit;

      close;
      SQL.Clear;
      SQL.Add('select * from itemcompra');
      SQL.Add('where idcompra = :idcompra'); // mostrar apenas os produtos de determinada compra
      ParamByName('idcompra').AsInteger :=
        TBCompraIDCOMPRA.AsInteger;
      Open;
    end;

end;

procedure TDM.TBCompraCalcFields(DataSet: TDataSet);
begin

  if TBCompraIDCOMPRA.AsString='' then
    Exit;

  With QuCalc do   // CALCULAR O TOTAL
    Begin
      close;
      SQL.Clear;
      SQL.Add('select sum(quantidade*valoritemcompra),sum(quantidade),count(quantidade) from itemcompra');
      SQL.Add('Where idCompra = :idCompra');
      ParambyName('idCompra').AsInteger :=
      TBCompraIDCOMPRA.AsInteger;
      Open;
      TBCompratotalcompra.AsFloat := Fields[0].AsFloat;
      TBCompraqtdproduto.AsFloat := Fields[1].AsFloat;
      TBCompraqtditcompra.AsFloat := Fields[2].AsFloat;

      Close;
    end;

end;

procedure TDM.TBCompraNewRecord(DataSet: TDataSet);
begin

    DM.TBCompraDATACOMPRA.AsDateTime:=Date;
    DM.TBCompraHORA.AsDateTime:=Time;
    DM.TBCompraTIPO.AsString:='� VISTA';
    DM.TBCompraSTATUSCOMPRA.AsString:= 'N�O CONF';

end;

procedure TDM.TBContasAPagarNewRecord(DataSet: TDataSet);
begin
DM.TBContasAPagarTIPO.AsString:= '� VISTA';
end;

procedure TDM.TBContasAReceberNewRecord(DataSet: TDataSet);
begin
DM.TBContasAReceberTIPO.AsString:= '� VISTA';
end;

procedure TDM.TBDescarteNewRecord(DataSet: TDataSet);
begin

  DM.TBDescarteDATA.AsDateTime:= DATE;

end;

procedure TDM.TBEstadoNewRecord(DataSet: TDataSet);
begin
  DM.TBEstadoSTATUSESTADOS.AsString:= 'ATIVO';

end;

procedure TDM.TBFornecedorNewRecord(DataSet: TDataSet);
begin
   DM.TBFornecedorSTATUSFORNECEDOR.AsString:= 'ATIVO';
end;

procedure TDM.TBFuncionarioNewRecord(DataSet: TDataSet);
begin
   DM.TBFuncionarioSTATUSFUNCIONARIO.AsString:= 'ATIVO';
end;

procedure TDM.TBItemCompraNewRecord(DataSet: TDataSet);
begin
 DM.TBItemCompraIDCOMPRA.AsInteger:=DM.TBCompraIDCOMPRA.AsInteger;
end;

procedure TDM.TBItemVendaNewRecord(DataSet: TDataSet);
begin

  DM.TBItemVendaIDVENDA.AsInteger:=DM.TBVendaIDVENDA.AsInteger;

end;

procedure TDM.TBMarcaNewRecord(DataSet: TDataSet);
begin
   DM.TBMarcaSTATUSMARCA.AsString:= 'ATIVO';
end;

procedure TDM.TBProdutoNewRecord(DataSet: TDataSet);
begin
   DM.TBProdutoSTATUSPRODUTO.AsString:= 'ATIVO';
end;

procedure TDM.TBVendaAfterScroll(DataSet: TDataSet);
begin

  With TBItemVenda do
    begin
      if TbVendaIDVENDA.AsString='' Then
      exit;

      close;
      SQL.Clear;
      SQL.Add('select * from itemvenda');
      SQL.Add('where idvenda = :idvenda'); // mostrar apenas os produtos de determinada venda
      ParamByName('idvenda').AsInteger :=
        TbVendaIDVENDA.AsInteger;
      Open;
    end;

end;

procedure TDM.TBVendaCalcFields(DataSet: TDataSet);
begin

     if TbVendaIDVENDA.AsString='' then
    Exit;

  With QuCalc do   // CALCULAR O TOTAL
    Begin
      close;
      SQL.Clear;
      SQL.Add('select sum(quantidade*valor),sum(quantidade),count(quantidade) from itemvenda');
      SQL.Add('Where idvenda = :idVenda');
      ParambyName('idVenda').AsInteger :=
      TbVendaIDVENDA.AsInteger;
      Open;
      TbVendatotalvenda.AsFloat := Fields[0].AsFloat;
      TbVendaqtdproduto.AsFloat := Fields[1].AsFloat;
      TbVendaqtditvenda.AsFloat := Fields[2].AsFloat;

      Close;
    end;

end;

procedure TDM.TBVendaNewRecord(DataSet: TDataSet);
begin

    DM.TBVendaDATAVENDA.AsDateTime:=Date;
    DM.TBVendaHORA.AsDateTime:=Time;
    DM.TBVendaTIPO.AsString:='� VISTA';
    DM.TBVendaSTATUSVENDA.AsString:= 'N�O CONF';
    end;

end.
