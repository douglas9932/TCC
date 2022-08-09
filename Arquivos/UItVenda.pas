unit UItVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Buttons;

type
  TFItvenda = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBText1: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FItvenda: TFItvenda;

implementation

{$R *.dfm}

uses UDM;

procedure TFItvenda.BitBtn1Click(Sender: TObject);
begin

     if DBLookupComboBox1.Text='' Then
    begin
      messageDLG('Escolha Um Produto',mtInformation,[mbok],0);
      DBLooKupComboBox1.SetFocus;
      Exit;
    end;


  if DM.TBItemVendaQUANTIDADE.AsFloat<=0 then
    begin
      MessageDlg('Quantidade Deve Ser Maior Que Zero',
      mtInformation,[mbok],0);
      DbEdit3.SetFocus;
      Exit;
    end;
     if DM.TBItemVendaVALOR.AsFloat<=0 then
    begin
      MessageDlg('Valor Deve Ser Maior Que Zero',
      mtInformation,[mbok],0);
      DbEdit3.SetFocus;
      Exit;
    end;

    DM.TBProduto.Locate('IDPRODUTO',DM.TBItemVendaIDPRODUTO.AsInteger, // nao permite fazer or�amento
      []);
    if (DM.TBProdutoQUANTIDADE.AsFloat-
        DM.TBItemVendaQUANTIDADE.AsFloat)<0 Then
      begin
        MessageDLG('N�o H� Produto Suficiente Para Realizar A Venda'+#13
           +DM.TBProdutoNOMEPRODUTO.AsString,
        mtinformation,[mbok],0);
        //Abort;
      end;    // nao permite fazer or�amento
  DM.TBItemVenda.Post;
  DM.TBVenda.Refresh;
  Close;
end;

procedure TFItvenda.BitBtn2Click(Sender: TObject);
begin

    DM.TBItemVenda.Cancel;
    DM.TBVenda.Refresh;
    Close;

end;

procedure TFItvenda.DBEdit2Exit(Sender: TObject);
begin

     DM.TBItemVendaTOTAL.AsFloat:=
     DM.TBItemVendaQUANTIDADE.AsInteger*
     DM.TBItemVendaVALOR.AsFloat;


end;

procedure TFItvenda.DBLookupComboBox1Exit(Sender: TObject);
begin

    DM.TBItemVendaVALOR.AsFloat:=
    DM.TBProdutoPRECOVENDA.AsFloat;

end;

end.
