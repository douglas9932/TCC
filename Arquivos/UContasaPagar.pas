unit UContasaPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, UFrame, Vcl.Mask, Vcl.Menus;

type
  TFContasaPagar = class(TForm)
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
    Label10: TLabel;
    Frame11: TFrame1;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    PopupMenu1: TPopupMenu;
    PagarConta1: TMenuItem;
    Cancelar1: TMenuItem;
    procedure Frame11BTNovoClick(Sender: TObject);
    procedure Frame11BTEditarClick(Sender: TObject);
    procedure Frame11BTFecharClick(Sender: TObject);
    procedure PagarConta1Click(Sender: TObject);
    procedure Frame11BTExcluirClick(Sender: TObject);
    procedure Frame11BTCancelarClick(Sender: TObject);
    procedure Frame11BTSalvarClick(Sender: TObject);
    procedure Frame11BitBtn7Click(Sender: TObject);
    procedure Frame11BitBtn8Click(Sender: TObject);
    procedure Frame11BitBtn9Click(Sender: TObject);
    procedure Frame11BitBtn10Click(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure Frame11BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FContasaPagar: TFContasaPagar;

implementation

{$R *.dfm}

uses UDM, UPesquisaContasAPagar;

procedure TFContasaPagar.DBEdit8Exit(Sender: TObject);
{var
  result:real;}
begin
  {result:=StrToFloat(DBEdit8.Text);
  DBEdit8.Text:=FormatFloat('R$ ##.##' ,result);}

end;

procedure TFContasaPagar.Frame11BitBtn10Click(Sender: TObject);
begin
  Dm.TBContasAPagar.Last;
end;

procedure TFContasaPagar.Frame11BitBtn11Click(Sender: TObject);
begin
FPesquisaContasAPagar.Showmodal;
end;

procedure TFContasaPagar.Frame11BitBtn7Click(Sender: TObject);
begin
Dm.TBContasAPagar.First;
end;

procedure TFContasaPagar.Frame11BitBtn8Click(Sender: TObject);
begin
 Dm.TBContasAPagar.Prior;
end;

procedure TFContasaPagar.Frame11BitBtn9Click(Sender: TObject);
begin
Dm.TBContasAPagar.Next;
end;

procedure TFContasaPagar.Frame11BTCancelarClick(Sender: TObject);
begin
  Frame11.BTCancelarClick(Sender);
   Dm.TBContasAPagar.Cancel;
end;

procedure TFContasaPagar.Frame11BTEditarClick(Sender: TObject);
begin
  Frame11.BTEditarClick(Sender);
          Dm.TBContasAPagar.Edit;
end;

procedure TFContasaPagar.Frame11BTExcluirClick(Sender: TObject);
begin
  Frame11.BTExcluirClick(Sender);
   if  Application.MessageBox('Deseja Mesmo Excluir?','',MB_YESNO+ MB_ICONQUESTION) = ID_YES
 then
     begin
        Dm.TBContasAPagar.Delete;
     end;

end;

procedure TFContasaPagar.Frame11BTFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFContasaPagar.Frame11BTNovoClick(Sender: TObject);
begin
  Frame11.BTNovoClick(Sender);
  DM.TBContasAPagar.Insert;

  DM.TBContasAPagarCONTROLE.AsString := 'MANUAL';
  DM.TBContasAPagarDATACOMPRA.AsDateTime:=DATE;
  DM.TBContasAPagarSTATUSCOMPRASAPAGAR.AsString:='PENDENTE';
  DM.TBContasAPagarHORA.AsDateTime:=Time;

end;

procedure TFContasaPagar.Frame11BTSalvarClick(Sender: TObject);
begin
if DBLookupComboBox1.Text = '' then
   begin
   Showmessage('Informe O Nome Do Fornecedor Para Cadastrar Uma Nova Conta');
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
  Dm.TBContasAPagar.Post;
end;

procedure TFContasaPagar.PagarConta1Click(Sender: TObject);
begin


        if Dm.TBContasAPagarSTATUSCOMPRASAPAGAR.AsString = 'PAGA'
    then
    begin
    Showmessage('Conta J� Recebida');
    abort;
    end
    else
    if Dm.TBCaixaSTATUSCAIXA.AsString = 'FECHADO' then
    Begin
    showmessage('N�o � Poss�vel Pagar Uma Conta Com O Caixa Fechado');
    Abort;
    End
    else
     if DM.TBCaixaSALDO.AsFloat < DM.TBContasAPagarVALORCONTASAPAGAR.ASFloat then
    Begin
      Showmessage('N�o H� Saldo No Caixa');
      Abort;
    End
    else
    Dm.TBContasAPagar.Edit;
    Dm.TBContasAPagarSTATUSCOMPRASAPAGAR.AsString:= 'PAGA';
    Dm.TBContasAPagar.Post;
    DM.TBContasAPagar.Refresh;
    //Inserir Parcela
    Dm.TBParcelaContaAPagar.Insert;
    Dm.TBParcelaContaAPagarIDCONTASAPAGAR.AsInteger:=
    DM.TBContasAPagarIDCONTASAPAGAR.AsInteger;
    Dm.TBParcelaContaAPagarVALOR.AsFloat:=
    DM.TBContasAPagarVALORCONTASAPAGAR.AsFloat;
    Dm.TBParcelaContaAPagarSTATUSPARCELASCONTASAPAGAR.AsString:='PAGA';
    Dm.TBParcelaContaAPagar.Post;
    Dm.TBParcelaContaAPagar.Refresh;
    //inserir recebimento
    DM.TBPagamento.Insert;
    DM.TBPagamentoIDPARCELASCONTASAPAGAR.AsInteger:=
    DM.TBParcelaContaAPagarIDPARCELASCONTASAPAGAR.AsInteger;
    Dm.TBPagamentoVALORDOPAGAMENTO.AsFloat:=
    DM.TBParcelaContaAPagarVALOR.AsFloat;
    Dm.TBPagamentoHORA.AsDateTime:=Time;
    DM.TBPagamentoDATAPAGAMENTO.AsDateTime:= Date;
    Dm.TBPagamento.Post;
    Dm.TBPagamento.Refresh;

    //Inserir Caixa
    DM.TBCaixa.Edit;
    DM.TBCaixaIDPAGAMENTO.AsInteger:=
    DM.TBPagamentoIDPAGAMENTO.AsInteger;
    DM.TBCaixaVALORSAIDA.AsFloat:=
    DM.TBCaixaVALORSAIDA.AsFloat+DM.TBPagamentoVALORDOPAGAMENTO.AsFloat;
    DM.TBCaixaSALDO.AsFloat:=
    DM.TBCaixaSALDO.AsFloat-DM.TBPagamentoVALORDOPAGAMENTO.AsFloat;
    DM.TBCaixa.Post;
    DM.TBCaixa.Refresh;

end;

end.
