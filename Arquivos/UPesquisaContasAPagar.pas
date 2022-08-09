unit UPesquisaContasAPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFPesquisaContasAPagar = class(TForm)
    EDPesquisa: TEdit;
    BTPesquisa: TBitBtn;
    DBGrid1: TDBGrid;
    RGPesquisa: TRadioGroup;
    procedure BTPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaContasAPagar: TFPesquisaContasAPagar;

implementation

{$R *.dfm}

uses UDM;

procedure TFPesquisaContasAPagar.BTPesquisaClick(Sender: TObject);
var
    Data:String;
begin

  if (RGPesquisa.ItemIndex = 2) and (EDPesquisa.Text = '') then
  begin
  Showmessage('Digite Uma Data Para Pesquisar Por Data');
  EDPesquisa.SetFocus;
  abort;
  end
  Else
   if (RGPesquisa.ItemIndex = 3) and (EDPesquisa.Text = '') then
  begin
  Showmessage('Digite Uma Data Para Pesquisar Por Data');
  EDPesquisa.SetFocus;
  abort;
  end
  Else
    Data:=EDPesquisa.Text;
    With DM.QuPesquisa do
  Begin
		Close;
		Sql.clear;
    Begin
   	  Case RGPesquisa.ItemIndex of

    0:begin
    SQL.Add('Select * from ContasAPagar');
    Prepare;
    open;
    DBGrid1.SetFocus;
    end;

    1:begin
    SQL.Add('Select * from  ContasAPagar, Fornecedor where ContasAPagar.IDFornecedor = Fornecedor.IDFornecedor and Fornecedor.NomeFantasia like '+#39+EdPesquisa.text+'%'+#39);
    Prepare;
    open;
    DBGrid1.SetFocus;
    end;
    2:begin
    SQL.Add('Select * from ContasAPagar Where DATACOMPRA=:pData;');
    ParamByName('pData').AsDateTime:=StrToDate(Data);
    Prepare;
    open;
    DBGrid1.SetFocus;
    end;
    3:begin
    SQL.Add('Select * from ContasAPagar Where DATAVENCIMENTO=:pData;');
    ParamByName('pData').AsDateTime:=StrToDate(Data);
    Prepare;
    open;
    DBGrid1.SetFocus;
    end;
    4:begin
    SQL.Add('Select * from  ContasAPagar where STATUSComprasAPagar like '+#39+EdPesquisa.text+'%'+#39);
    Prepare;
    open;
    DBGrid1.SetFocus;
    end;
   end;

  end;
 End;
end;

end.