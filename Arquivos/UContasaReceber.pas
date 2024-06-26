unit UContasaReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UDM, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, UFrame, Vcl.Menus;

type
  TFContasaReceber = class(TForm)
    Frame11: TFrame1;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    PopupMenu1: TPopupMenu;
    ReceberConta1: TMenuItem;
    Cancelar1: TMenuItem;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    DBComboBox1: TDBComboBox;
    procedure Frame11BTFecharClick(Sender: TObject);
    procedure Frame11BTNovoClick(Sender: TObject);
    procedure Frame11BTSalvarClick(Sender: TObject);
    procedure ReceberConta1Click(Sender: TObject);
    procedure Frame11BTEditarClick(Sender: TObject);
    procedure Frame11BTExcluirClick(Sender: TObject);
    procedure Frame11BTCancelarClick(Sender: TObject);
    procedure Frame11BitBtn7Click(Sender: TObject);
    procedure Frame11BitBtn8Click(Sender: TObject);
    procedure Frame11BitBtn9Click(Sender: TObject);
    procedure Frame11BitBtn10Click(Sender: TObject);
    procedure Frame11BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FContasaReceber: TFContasaReceber;

implementation

{$R *.dfm}

uses UPesquisaContasAReceber;

procedure TFContasaReceber.Frame11BitBtn10Click(Sender: TObject);
begin
  Dm.TBContasAReceber.Last;
end;

procedure TFContasaReceber.Frame11BitBtn11Click(Sender: TObject);
begin
FPesquisaContasAReceber.Showmodal;
end;

procedure TFContasaReceber.Frame11BitBtn7Click(Sender: TObject);
begin
Dm.TBContasAReceber.First;
end;

procedure TFContasaReceber.Frame11BitBtn8Click(Sender: TObject);
begin
 Dm.TBContasAReceber.Prior;
end;

procedure TFContasaReceber.Frame11BitBtn9Click(Sender: TObject);
begin
Dm.TBContasAReceber.Next;
end;

procedure TFContasaReceber.Frame11BTCancelarClick(Sender: TObject);
begin
  Frame11.BTCancelarClick(Sender);
    Dm.TBContasAReceber.Cancel;
end;

procedure TFContasaReceber.Frame11BTEditarClick(Sender: TObject);
begin
  Frame11.BTEditarClick(Sender);
         Dm.TBContasAReceber.Edit;
end;

procedure TFContasaReceber.Frame11BTExcluirClick(Sender: TObject);
begin
  Frame11.BTExcluirClick(Sender);
    if  Application.MessageBox('Deseja Mesmo Excluir?','',MB_YESNO+ MB_ICONQUESTION) = ID_YES
 then
     begin
        Dm.TBContasAReceber.Delete;
     end;

end;

procedure TFContasaReceber.Frame11BTFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFContasaReceber.Frame11BTNovoClick(Sender: TObject);
begin
  Frame11.BTNovoClick(Sender);
  DM.TBContasAReceber.Insert;

  DM.TBContasAReceberCONTROLE.AsString := 'MANUAL';
  DM.TBContasAReceberDATAVENDA.AsDateTime:=DATE;
  DM.TBContasAReceberSTATUSCONTASARECEBER.AsString:='PENDENTE';
  DM.TBContasAReceberHORA.AsDateTime:=Time;


end;

procedure TFContasaReceber.Frame11BTSalvarClick(Sender: TObject);
begin
if DBLookupComboBox1.Text = '' then
   begin
   Showmessage('Informe O Nome Do Cliente Para Cadastrar Uma Nova Conta');
   DBLookupComboBox1.SetFocus;
   Abort;
   end
   else
    if DBEdit6.Text = '' then
   begin
   Showmessage('Informe A Data De Vencimento Da Conta');
   DBEdit6.SetFocus;
   Abort;
   end
   else
   if DBEdit8.Text = '' then
   begin
   Showmessage('Informe O Valor Da Conta');
   DBEdit8.SetFocus;
   Abort;
   end
   else
  Frame11.BTSalvarClick(Sender);
  Dm.TBContasAReceber.Post;
end;

procedure TFContasaReceber.ReceberConta1Click(Sender: TObject);
begin
    if Dm.TBContasAReceberSTATUSCONTASARECEBER.AsString = 'PAGA'
    then
    begin
    Showmessage('Conta J� Recebida');
    abort;
    end
    else
    if Dm.TBCaixaSTATUSCAIXA.AsString = 'FECHADO' then
    Begin
    showmessage('N�o � Poss�vel Receber Uma Conta Com O Caixa Fechado');
    Abort;
    End
    else
    Dm.TBContasAReceber.Edit;
    Dm.TBContasAReceberSTATUSCONTASARECEBER.AsString:= 'PAGA';
    Dm.TBContasAReceber.Post;
    DM.TBContasAReceber.Refresh;
    //Inserir Parcela
    Dm.TBParcelaContaAReceber.Insert;
    Dm.TBParcelaContaAReceberIDCONTASARESCEBER.AsInteger:=
    DM.TBContasAReceberIDCONTASARESCEBER.AsInteger;
    Dm.TBParcelaContaAReceberVALORPARCELAS.AsFloat:=
    DM.TBContasAReceberVALOR.AsFloat;
    Dm.TBParcelaContaAReceberSTATUSPARCELASCONTASARECEBER.AsString:='PAGA';
    Dm.TBParcelaContaAReceber.Post;
    Dm.TBParcelaContaAReceber.Refresh;
    //inserir recebimento
    DM.TBRecebimento.Insert;
    DM.TBRecebimentoIDPARCELASCONTASARECEBER.AsInteger:=
    DM.TBParcelaContaAReceberIDPARCELASCONTASARECEBER.AsInteger;
    Dm.TBRecebimentoVALORRECEBIMENTO.AsFloat:=
    DM.TBParcelaContaAReceberVALORPARCELAS.AsFloat;
    Dm.TBRecebimentoHORA.AsDateTime:=Time;
    DM.TBRecebimentoDATARECEBIMENTO.AsDateTime:= Date;
    Dm.TBRecebimento.Post;
    Dm.TBRecebimento.Refresh;
    //Inserir Caixa
    DM.TBCaixa.Edit;
    DM.TBCaixaIDRESCEBIMENTO.AsInteger:=
    DM.TBRecebimentoIDRESCEBIMENTO.AsInteger;
    DM.TBCaixaVALORENTRADA.AsFloat:=
    DM.TBCaixaVALORENTRADA.AsFloat+DM.TBRecebimentoVALORRECEBIMENTO.AsFloat;
    DM.TBCaixaSALDO.AsFloat:=
    DM.TBCaixaSALDO.AsFloat+DM.TBRecebimentoVALORRECEBIMENTO.AsFloat;
    DM.TBCaixa.Post;
    DM.TBCaixa.Refresh;


end;
end.
