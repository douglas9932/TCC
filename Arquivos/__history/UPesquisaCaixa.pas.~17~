unit UPesquisaCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, UDM;

type
  TFPesquisaCaixa = class(TForm)
    RGPesquisa: TRadioGroup;
    EDPesquisa: TEdit;
    BTPesquisa: TBitBtn;
    DBGrid1: TDBGrid;
    procedure BTPesquisaClick(Sender: TObject);
    procedure EDPesquisaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaCaixa: TFPesquisaCaixa;

implementation

{$R *.dfm}

procedure TFPesquisaCaixa.BTPesquisaClick(Sender: TObject);
  var
    Data:String;
  begin
  if (RGPesquisa.ItemIndex = 1) and (EDPesquisa.Text = '') then
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
    SQL.Add('Select * from Caixa');
    Prepare;
    open;
    DBGrid1.SetFocus;
    end;

    1:begin
    SQL.Add('Select * from Caixa Where dataabertuda=:pData;');
    ParamByName('pData').AsDateTime:=StrToDate(Data);
    Prepare;
    open;
    DBGrid1.SetFocus;
    end
  end;

end;
  End;
  end;

procedure TFPesquisaCaixa.EDPesquisaExit(Sender: TObject);
begin

    try
      strtodate(EDPesquisa.text);
      except

      on EConvertError do
        Showmessage('Data Invalida!!!');
        end;
end;

end.
