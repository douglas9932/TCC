unit UPesquisaVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TFPesquisaVenda = class(TForm)
    RGPesquisa: TRadioGroup;
    EDPesquisa: TEdit;
    BTPesquisa: TBitBtn;
    DBGrid1: TDBGrid;
    procedure BTPesquisaClick(Sender: TObject);
    procedure EDPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure EDPesquisaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaVenda: TFPesquisaVenda;

implementation

{$R *.dfm}

uses UDM;

procedure TFPesquisaVenda.BTPesquisaClick(Sender: TObject);
var
  Data:String;

begin


  if (RGPesquisa.ItemIndex = 1) and (EDPesquisa.Text = '') then
  begin
  Showmessage('Digite um C�digo Para Pesquisar Por C�digo');
  EDPesquisa.SetFocus;
  abort;
  end
  Else
  if (RGPesquisa.ItemIndex = 4) and (EDPesquisa.Text = '') then
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
       SQL.Add('Select * from Venda');
       Prepare;
       open;
       DBGrid1.SetFocus;
       end;
       1:begin
       SQL.Add('Select * from  Venda where  IdVenda = '+EdPesquisa.Text);
       Prepare;
       open;
       DBGrid1.SetFocus;
       end;
       2:begin
       SQL.Add('Select * from  Venda, Funcionario where Venda.IDFuncionario = Funcionario.IDFuncionario and Funcionario.NomeFuncionario like '+#39+EdPesquisa.text+'%'+#39);
       Prepare;
       open;
       DBGrid1.SetFocus;
       end;

       3:begin
       SQL.Add('Select * from  Venda, Cliente where Venda.IDCliente = Cliente.IDCliente and Cliente.NomeCliente like '+#39+EdPesquisa.text+'%'+#39);
       Prepare;
       open;
       DBGrid1.SetFocus;
       end;

       4:begin
       SQL.Add('Select * from Venda Where datavenda=:pData;');
       ParamByName('pData').AsDateTime:=StrToDate(Data);
       Prepare;
       open;
        DBGrid1.SetFocus;
       end;
       5:begin
       SQL.Add('Select * from  Venda where TIPO like '+#39+EdPesquisa.text+'%'+#39);
       Prepare;
       open;
       DBGrid1.SetFocus;
       end;
       6:begin
       SQL.Add('Select * from  Venda where STATUSVENDA like '+#39+EdPesquisa.text+'%'+#39);
       Prepare;
       open;
       DBGrid1.SetFocus;
       end;
      End;
    End;
  End;
end;

procedure TFPesquisaVenda.EDPesquisaExit(Sender: TObject);
begin
 try
      strtodate(EDPesquisa.text);
      except

      on EConvertError do
        Showmessage('Data Invalida!!!');
        end;
end;

procedure TFPesquisaVenda.EDPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
 if RGPesquisa.ItemIndex=1 then               //seleciona a opcao nome da consulta
   if not (Key in ['0'..'9',#8]) then       // e faz o bloqueio de numeros, espaco
     key := #0;

  if Key=#13 Then    //quando precionar entrer, ja exec. o bot�o pesquisar
  BtPesquisa.click;
end;

procedure TFPesquisaVenda.FormShow(Sender: TObject);
begin
 With DM.QuPesquisa do
  Begin
		Close;
		Sql.clear;
  End
end;

end.
