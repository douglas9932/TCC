
unit UVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrame, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, frxClass,
  frxDBSet;

type
  TFVenda = class(TForm)
    Frame11: TFrame1;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBText1: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    Panel2: TPanel;
    BTNovoItem: TBitBtn;
    BTEditarItem: TBitBtn;
    BTExcluirItem: TBitBtn;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label11: TLabel;
    procedure Frame11BTNovoClick(Sender: TObject);
    procedure Frame11BTEditarClick(Sender: TObject);
    procedure Frame11BTExcluirClick(Sender: TObject);
    procedure Frame11BTCancelarClick(Sender: TObject);
    procedure Frame11BTSalvarClick(Sender: TObject);
    procedure Frame11BTFecharClick(Sender: TObject);
    procedure Frame11BitBtn7Click(Sender: TObject);
    procedure Frame11BitBtn8Click(Sender: TObject);
    procedure Frame11BitBtn9Click(Sender: TObject);
    procedure Frame11BitBtn10Click(Sender: TObject);
    procedure BTNovoItemClick(Sender: TObject);
    procedure BTEditarItemClick(Sender: TObject);
    procedure BTExcluirItemClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Frame11BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVenda: TFVenda;

implementation

{$R *.dfm}

uses UDM, UItVenda, UConfVenda, UPesquisaVenda;

procedure TFVenda.BitBtn1Click(Sender: TObject);
begin

    if DM.TBVendaSTATUSVENDA.AsString = 'CONF' then
    begin
    Showmessage ('Venda Já Confirmada');
    Abort;
    end
    else


    if DM.TBVenda.RecordCount =0 then
    begin
      MessageDLG ('Adicione Produtos Antes De Finalizar',
      mtInformation, [mbok],0);
      Abort;
    end;
    FConfVenda.Showmodal;
    DM.TBVenda.Edit; //permite alterar status e condição de pagamento

end;

procedure TFVenda.BTEditarItemClick(Sender: TObject);
begin

  if DM.TBVendaSTATUSVENDA.AsString = 'CONF' then
    Begin
     Showmessage('Venda Já Confirmada Não Pode Ser Alterada');
     Abort;
    End
else


  if DM.TBItemVenda.RecordCount < 0 then
  exit;
  DM.TBItemVenda.Edit;
  FItVenda.Showmodal;

end;

procedure TFVenda.BTExcluirItemClick(Sender: TObject);
begin

  if DM.TBVendaSTATUSVENDA.AsString = 'CONF' then
 Begin
  Showmessage('Venda Já Confirmada Não Pode Ser Alterada');
  Abort;
 End
else

  if DM.TBItemVenda.RecordCount = 0 then
  exit;

  if MessageDLG('Deseja excluir este registro?',
  mtConfirmation,[mbyes,mbno],0) in [mrCancel,mrNo] then
  exit
  else
  DM.TBItemVenda.Delete;
  DM.TBVenda.Refresh;

end;

procedure TFVenda.Frame11BitBtn10Click(Sender: TObject);
begin
 Dm.TBVenda.Last;
end;

procedure TFVenda.Frame11BitBtn11Click(Sender: TObject);
begin
  FPesquisaVenda.ShowModal;
end;

procedure TFVenda.Frame11BitBtn7Click(Sender: TObject);
begin
Dm.TBVenda.First;
end;

procedure TFVenda.Frame11BitBtn8Click(Sender: TObject);
begin
Dm.TBVenda.Prior;
end;

procedure TFVenda.Frame11BitBtn9Click(Sender: TObject);
begin
Dm.TBVenda.Next;
end;

procedure TFVenda.Frame11BTCancelarClick(Sender: TObject);
begin
  Frame11.BTCancelarClick(Sender);
  DM.TBVenda.Cancel;
end;

procedure TFVenda.Frame11BTEditarClick(Sender: TObject);
begin


  if DM.TBVendaSTATUSVENDA.AsString = 'CONF' then
  begin
  Showmessage('Venda Confirmada Não Pode Ser Alterada');
  Abort;
  end
  else

  Frame11.BTEditarClick(Sender);

  BTNovoItem.Enabled:=True;
  BTEditarItem.Enabled:=True;
  BTExcluirItem.Enabled:=True;

  DM.TBVenda.Edit;


end;

procedure TFVenda.Frame11BTExcluirClick(Sender: TObject);
begin
  Frame11.BTExcluirClick(Sender);
  DM.TBVenda.Delete;
end;

procedure TFVenda.Frame11BTFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TFVenda.Frame11BTNovoClick(Sender: TObject);
begin
  Frame11.BTNovoClick(Sender);
  DM.TBVenda.Insert;

  BTNovoItem.Enabled:=False;
  BTEditarItem.Enabled:=False;
  BTExcluirItem.Enabled:=False;


end;

procedure TFVenda.Frame11BTSalvarClick(Sender: TObject);
begin


  if DBLookupComboBox1.Text = '' then
   begin
   Showmessage('Informe O Nome Do Funcionário Para Realizar A Venda');
   DBLookupComboBox1.SetFocus;
   Abort;
   end
   else
    if DBLookupComboBox1.Text = '' then
   begin
   Showmessage('Informe O Nome Do Cliente Para Realizar A Venda');
   DBLookupComboBox1.SetFocus;
   Abort;
   end
   else

  Frame11.BTSalvarClick(Sender);
  DM.TBVenda.Post;


  BTNovoItem.Enabled:=True;
  BTEditarItem.Enabled:=True;
  BTExcluirItem.Enabled:=True;

end;

procedure TFVenda.BTNovoItemClick(Sender: TObject);
begin

if DM.TBVendaSTATUSVENDA.AsString = 'CONF' then
 Begin
  Showmessage('Venda Já Confirmada Não Pode Ser Alterada');
  Abort;
 End
else

  DM.TBItemVenda.Append;
  FItVenda.Showmodal;



end;

end.
