unit UPesquisaCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, UDM;

type
  TFPesquisaCidade = class(TForm)
    RGPesquisa: TRadioGroup;
    EDPesquisa: TEdit;
    BTPesquisa: TBitBtn;
    DBGrid1: TDBGrid;
    procedure BTPesquisaClick(Sender: TObject);
    procedure EDPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisaCidade: TFPesquisaCidade;

implementation

{$R *.dfm}

procedure TFPesquisaCidade.BTPesquisaClick(Sender: TObject);
begin

  if (RGPesquisa.ItemIndex = 1) and (EDPesquisa.Text = '') then
  begin
  Showmessage('Digite um Código Para Pesquisar Por Código');
  EDPesquisa.SetFocus;
  abort;
  end
  Else

  With DM.QuPesquisa do
  Begin
		Close;
		Sql.clear;
	  Begin
   	  Case RGPesquisa.ItemIndex of
    	  0:SQL.Add('Select * from Cidade');
        1:SQL.Add('Select * from Cidade where  IdCidade = '+EdPesquisa.Text);
        2:SQL.Add('Select * from Cidade where NomeCidades like '+#39+EdPesquisa.text+'%'+#39);
        3:SQL.Add('Select * from Cidade, Estado where Estado.IDEstado = Cidade.IDEstado and Estado.Siglas like '+#39+EdPesquisa.text+'%'+#39);
        4:SQL.Add('Select * from Cidade where StatusCidade like '+#39+EdPesquisa.text+'%'+#39);
        end;
	    open;
    	end;
      DBGrid1.setfocus;
  end;


end;

procedure TFPesquisaCidade.EDPesquisaKeyPress(Sender: TObject; var Key: Char);
begin

  if RGPesquisa.ItemIndex=1 then               //seleciona a opcao nome da consulta
   if not (Key in ['0'..'9',#8]) then       // e faz o bloqueio de numeros, espaco
     key := #0;

  if Key=#13 Then    //quando precionar entrer, ja exec. o botão pesquisar
  BtPesquisa.click;

end;

procedure TFPesquisaCidade.FormShow(Sender: TObject);
begin
 With DM.QuPesquisa do
  Begin
		Close;
		Sql.clear;
  End
end;

end.
