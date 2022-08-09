unit UCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, UFrame, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TFCompra = class(TForm)
    Frame11: TFrame1;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBText1: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    Panel2: TPanel;
    BTNovoItem: TBitBtn;
    BTExcluirItem: TBitBtn;
    BTEditarItem: TBitBtn;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label11: TLabel;
    procedure Frame11BTSalvarClick(Sender: TObject);
    procedure Frame11BTNovoClick(Sender: TObject);
    procedure Frame11BTEditarClick(Sender: TObject);
    procedure Frame11BTExcluirClick(Sender: TObject);
    procedure Frame11BTCancelarClick(Sender: TObject);
    procedure Frame11BTFecharClick(Sender: TObject);
    procedure Frame11BitBtn7Click(Sender: TObject);
    procedure Frame11BitBtn8Click(Sender: TObject);
    procedure Frame11BitBtn9Click(Sender: TObject);
    procedure Frame11BitBtn10Click(Sender: TObject);
    procedure Frame11BitBtn11Click(Sender: TObject);
    procedure BTNovoItemClick(Sender: TObject);
    procedure BTEditarItemClick(Sender: TObject);
    procedure BTExcluirItemClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCompra: TFCompra;

implementation

{$R *.dfm}

uses UDM, UPesquisaCompra, UConfVenda, UItVenda, UConfCompra, UitCompra;

procedure TFCompra.BitBtn1Click(Sender: TObject);
begin

    if DM.TBCompraSTATUSCOMPRA.AsString = 'CONF' then
    begin
    Showmessage ('Venda J� Confirmada');
    Abort;
    end
    else


    if DM.TBCompra.RecordCount =0 then
    begin
      MessageDLG ('Adicione Produtos Antes De Finalizar',
      mtInformation, [mbok],0);
      Abort;
    end;
    FConfCompra.Showmodal;
    DM.TBCompra.Edit; //permite alterar status e condi��o de pagamento

end;

procedure TFCompra.BitBtn2Click(Sender: TObject);
begin
      FConfCompra.Refresh;
    if DM.TBCompraSTATUSCOMPRA.AsString = 'CONF' then
    begin
    Showmessage ('Venda J� Confirmada');
    Abort;
    end
    else


    if DM.TBCompra.RecordCount =0 then
    begin
      MessageDLG ('Adicione Produtos Antes De Finalizar',
      mtInformation, [mbok],0);
      Abort;
    end;
    FConfCompra.Showmodal;
    DM.TBCompra.Edit; //permite alterar status e condi��o de pagamento
end;

procedure TFCompra.BTEditarItemClick(Sender: TObject);
begin

 if DM.TBCompraSTATUSCOMPRA.AsString = 'CONF' then
    Begin
     Showmessage('Compra J� Confirmada N�o Pode Ser Alterada');
     Abort;
    End
else


  if DM.TBItemCompra.RecordCount < 0 then
  exit;
  DM.TBItemCompra.Edit;
  FItCompra.Showmodal;
end;

procedure TFCompra.BTExcluirItemClick(Sender: TObject);
begin

  if DM.TBCompraSTATUSCOMPRA.AsString = 'CONF' then
 Begin
  Showmessage('Compra J� Confirmada N�o Pode Ser Alterada');
  Abort;
 End
else

  if DM.TBItemCompra.RecordCount = 0 then
  exit;

  if MessageDLG('Deseja excluir este registro?',
  mtConfirmation,[mbyes,mbno],0) in [mrCancel,mrNo] then
  exit
  else
  DM.TBItemCompra.Delete;
  DM.TBCompra.Refresh;
end;

procedure TFCompra.BTNovoItemClick(Sender: TObject);
begin

if DM.TBCompraSTATUSCOMPRA.AsString = 'CONF' then
 Begin
  Showmessage('Compra J� Confirmada N�o Pode Ser Alterada');
  Abort;
 End
else

  DM.TBItemCompra.Append;
  FitCompra.Showmodal;

  end;

procedure TFCompra.Frame11BitBtn10Click(Sender: TObject);
begin
 Dm.TBCompra.Last;
end;

procedure TFCompra.Frame11BitBtn11Click(Sender: TObject);
begin
  FPesquisaCompra.ShowModal;
end;

procedure TFCompra.Frame11BitBtn7Click(Sender: TObject);
begin
Dm.TBCompra.First;
end;

procedure TFCompra.Frame11BitBtn8Click(Sender: TObject);
begin
Dm.TBCompra.Prior;
end;

procedure TFCompra.Frame11BitBtn9Click(Sender: TObject);
begin
Dm.TBCompra.Next;
end;

procedure TFCompra.Frame11BTCancelarClick(Sender: TObject);
begin
  Frame11.BTCancelarClick(Sender);
  DM.TBCompra.Cancel;
end;

procedure TFCompra.Frame11BTEditarClick(Sender: TObject);
begin

 if DM.TBCompraSTATUSCOMPRA.AsString = 'CONF' then
  begin
  Showmessage('Compra Confirmada N�o Pode Ser Alterada');
  Abort;
  end
  else

  Frame11.BTEditarClick(Sender);

  BTNovoItem.Enabled:=True;
  BTEditarItem.Enabled:=True;
  BTExcluirItem.Enabled:=True;

  DM.TBCompra.Edit;

end;

procedure TFCompra.Frame11BTExcluirClick(Sender: TObject);
begin
 Frame11.BTExcluirClick(Sender);
  if  Application.MessageBox('Deseja Mesmo Excluir?','',MB_YESNO+ MB_ICONQUESTION) = ID_YES
 then
     begin
        DM.TBCompra.Delete;
     end;


end;

procedure TFCompra.Frame11BTFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TFCompra.Frame11BTNovoClick(Sender: TObject);
begin
Frame11.BTNovoClick(Sender);
  DM.TBCompra.Insert;

  BTNovoItem.Enabled:=False;
  BTEditarItem.Enabled:=False;
  BTExcluirItem.Enabled:=False;


end;

procedure TFCompra.Frame11BTSalvarClick(Sender: TObject);
begin


 if DBLookupComboBox1.Text = '' then
   begin
   Showmessage('Informe O Nome Do Funcion�rio Para Realizar A Compra');
   DBLookupComboBox1.SetFocus;
   Abort;
   end
   else
    if DBLookupComboBox2.Text = '' then
   begin
   Showmessage('Informe O Nome Do Fornecedor Para Realizar A Compra');
   DBLookupComboBox2.SetFocus;
   Abort;
   end
   else


Frame11.BTSalvarClick(Sender);
  DM.TBCompra.Post;


  BTNovoItem.Enabled:=True;
  BTEditarItem.Enabled:=True;
  BTExcluirItem.Enabled:=True;


end;

end.