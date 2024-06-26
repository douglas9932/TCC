unit UDescarte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrame, UDM, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TFDescarte = class(TForm)
    Frame11: TFrame1;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBText1: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    procedure Frame11BTNovoClick(Sender: TObject);
    procedure Frame11BTSalvarClick(Sender: TObject);
    procedure Frame11BTFecharClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure Frame11BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDescarte: TFDescarte;

implementation

{$R *.dfm}

uses UPesquisaDescartes;

procedure TFDescarte.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin

 Inherited;
 Key:= AnsiUpperCase(Key) [Length (key)];

end;

procedure TFDescarte.Frame11BitBtn11Click(Sender: TObject);
begin
 FPesquisaDescartes.Showmodal;
end;

procedure TFDescarte.Frame11BTFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFDescarte.Frame11BTNovoClick(Sender: TObject);
begin
  Frame11.BTNovoClick(Sender);
  DM.TBdescarte.Insert;
end;

procedure TFDescarte.Frame11BTSalvarClick(Sender: TObject);
begin


  if DBLookupComboBox1.Text='' Then
    begin
      messageDLG('Escolha Um Funcion�rio',mtInformation,[mbok],0);
      DBLooKupComboBox1.SetFocus;
      Exit;
    end
    else

  if DBLookupComboBox2.Text='' Then
    begin
      messageDLG('Escolha Um Produto',mtInformation,[mbok],0);
      DBLooKupComboBox2.SetFocus;
      Exit;
    end
    else

  if DM.TBDescarteQTD.AsInteger<=0 then
    begin
      MessageDlg('Quantidade Deve Ser Maior Que Zero',
      mtInformation,[mbok],0);
      DbEdit6.SetFocus;
      Exit;

    end
    else

    if DBEdit1.Text = '' then
    begin
      MessageDlg('A Descri��o N�o Deve Estar Em Branco',
      mtInformation,[mbok],0);
      DbEdit1.SetFocus;
      Exit;

    end
    else

      if DBEdit6.Text = '' then
    begin
      MessageDlg('Quantidade N�o Deve Estar Em Branco',
      mtInformation,[mbok],0);
      DbEdit6.SetFocus;
      Exit;

    end
    else

    if DM.TBDescarteQTD.AsInteger > DM.TBProdutoQUANTIDADE.AsInteger then
    begin
      MessageDlg('Quantidade Descartada N�o Pode Ser Maior Que Do Estoque',
      mtInformation,[mbok],0);
      DbEdit6.SetFocus;
      Exit;

    end;

    Frame11.BTSalvarClick(Sender);
    DM.TBProduto.Edit;
    DM.TBProdutoQUANTIDADE.AsFloat :=
    DM.TBProdutoQUANTIDADE.AsFloat - DM.TBDescarteQTD.AsInteger;
    DM.TBProduto.Post;
    DM.TBProduto.Refresh;
    DM.TBDescarte.Post;
end;

end.
