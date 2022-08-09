unit UConfCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDM, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls;

type
  TFConfCompra = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LBTroco: TLabel;
    DBText1: TDBText;
    DBComboBox1: TDBComboBox;
    EDValorPago: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure EDValorPagoExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfCompra: TFConfCompra;

implementation

{$R *.dfm}

procedure TFConfCompra.BitBtn1Click(Sender: TObject);
begin

     if DM.TBCaixaSTATUSCAIXA.AsString = 'FECHADO' then
    begin
      Showmessage('Caixa Fechado');
      Abort;
    end
    else

    if DM.TBCompratotalcompra.ASFloat > DM.TBCaixaSALDO.AsFloat  then
    Begin
      Showmessage('N�o H� Saldo No Caixa');
      Abort;
    End

    else
    if DBComboBox1.Text='' then
    begin
    Showmessage ('Escolha o Tipo De Condi��o Da Venda');
    Abort;
    end
    else
    if (EDValorPago.Text='') or (EDValorPago.Text='0') then
    begin
    Showmessage('Informe o Valor Recebido');
    EDValorPago.SetFocus;
    Abort;
    end
    else

    if DM.TBCompraSTATUSCOMPRA.AsString='N�O CONF' then
      {With DM.TBItemCompra do
        begin
          First;
          While not EOF do
            begin;
              DM.TBProduto.Locate('IDPRODUTO',DM.TBItemCompraIDPRODUTO.AsInteger,
                []);
              if (DM.TBProdutoQUANTIDADE.AsFloat-
                  DM.TBItemCompraQUANTIDADE.AsFloat)<=0 Then
                begin
                  MessageDLG('N�o h� estoque suficiente para o produto'+#13
                    +DM.TBProdutoNOMEPRODUTO.AsString,
                  mtinformation,[mbok],0);
                  Abort;
                end;
              Next;
            end;
          end;}

    with DM.TBItemCompra do
        begin
          First;
          While not EOF do
            begin
              DM.TBProduto.Locate('IDPRODUTO',DM.TBItemCompraIDPRODUTO.AsInteger,
                []);
              DM.TBProduto.Edit;
              DM.TBProdutoQUANTIDADE.AsFloat :=
                DM.TBProdutoQUANTIDADE.AsFloat +
                FieldByName('QUANTIDADE').AsFloat;
              DM.TBProdutoPRECOCUSTO.AsFloat:= (DM.TBItemCompraVALORITEMCOMPRA.AsFloat+DM.TBProdutoPRECOCUSTO.AsFloat)/2;
              DM.TBProduto.Post;

              Next;
            end;
          end;



    DM.TBProduto.Refresh;
    DM.TBCompra.Edit;
    DM.TBCompraSTATUSCOMPRA.AsString:= 'CONF';
    DM.TBCompra.Post;
    Close;


    //Gera Conta A Pagar
    DM.TBContasAPagar.Insert;
    DM.TBContasAPagarIDCOMPRA.AsInteger:=
    DM.TBCompraIDCOMPRA.AsInteger;
    DM.TBContasAPagarDATACOMPRA.AsDateTime:=Date;
    if DM.TBCompraTIPO.AsString = '� VISTA' then
    begin
    DM.TBContasAPagarDATAVENCIMENTO.AsDateTime:=Date;
    end;

    DM.TBContasAPagarDESCRICAO.AsString:= 'Conta � Receber De Compra';
    DM.TBContasAPagarVALORCONTASAPAGAR.AsFloat:=
    DM.TBCompratotalcompra.AsFloat;
    DM.TBContasAPagarHORA.AsDateTime:=Time;
    DM.TBContasAPagarSTATUSCOMPRASAPAGAR.AsString:='CONF';
    DM.TBContasAPagarIDFORNECEDOR.AsInteger:=
    DM.TBCompraIDFORNECEDOR.AsInteger;
    DM.TBContasAPagarTIPO.AsString:= '� VISTA';
    DM.TBContasAPagar.Post;
    Dm.TBContasAPagar.Refresh;

    //Gera Parcela Conta A Pagar
    DM.TBParcelaContaAPagar.Insert;
    DM.TBParcelaContaAPagarIDCONTASAPAGAR.AsInteger:=
    DM.TBContasAPagarIDCONTASAPAGAR.AsInteger;
    DM.TBParcelaContaAPagarVALOR.AsFloat:=
    DM.TBContasAPagarVALORCONTASAPAGAR.AsFloat;
    DM.TBParcelaContaAPagarSTATUSPARCELASCONTASAPAGAR.AsString:='PAGA';
    DM.TBParcelaContaAPagar.Post;
    DM.TBParcelaContaAPagar.Refresh;

    //Gera o Pagamento
    DM.TBPagamento.Insert;
    DM.TBPagamentoIDPARCELASCONTASAPAGAR.AsInteger:=
    DM.TBParcelaContaAPagarIDPARCELASCONTASAPAGAR.AsInteger;
    DM.TBPagamentoDATAPAGAMENTO.AsDateTime:= DATE;
    DM.TBPagamentoHORA.AsDateTime:= TIME;
    //DM.TBPagamentoVALORDOPAGAMENTO.AsFloat:= DM.TBParcelaContaAPagarVALOR.AsFloat;
    DM.TBPagamentoVALORDOPAGAMENTO.AsFloat:= DM.TBParcelaContaAPagarVALOR.AsFloat;
    DM.TBPagamento.Post;
    DM.TBPagamento.Refresh;

    //Gera Caixa
   DM.TBCaixa.Edit;
    DM.TBCaixaIDPAGAMENTO.AsInteger := DM.TBPagamentoIDPAGAMENTO.AsInteger;

    DM.TBCaixaVALORSAIDA.AsFloat:= DM.TBCaixaVALORSAIDA.AsFloat + DM.TBPagamentoVALORDOPAGAMENTO.AsFloat;

    DM.TBCaixaSALDO.AsFloat:= DM.TBCaixaSALDO.AsFloat - DM.TBPagamentoVALORDOPAGAMENTO.AsFloat;

    DM.TBCaixa.Post;
    DM.TBCaixa.Refresh;


end;

procedure TFConfCompra.BitBtn2Click(Sender: TObject);
begin
DM.TBCompra.Cancel;
        Close;
end;

procedure TFConfCompra.EDValorPagoExit(Sender: TObject);
begin

    if StrtoFloat (EDValorPago.Text)>=
      StrtoFloat (DBText1.Caption)
    then

    Begin
    LBTroco.Caption:= FloattoStr
    (StrtoFloat (EDValorPago.Text)-
    StrtoFloat (DBText1.Caption));

    End
    else
    Showmessage('O Valor Recebido N�o Pode Ser Menor Que O Valor Total Da Venda') ;
end;

procedure TFConfCompra.FormShow(Sender: TObject);
begin
EDValorPago.Text:='0';
LBTroco.Caption:='0';
end;

end.
