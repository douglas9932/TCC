unit UDebitoCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  UDM;

type
  TFDebitoCredito = class(TForm)
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EDValor: TEdit;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDebitoCredito: TFDebitoCredito;

implementation

{$R *.dfm}

procedure TFDebitoCredito.BitBtn1Click(Sender: TObject);
begin

    if (EDValor.Text='') then
    begin
    Showmessage('Informe o Valor');
    EDValor.SetFocus;
    Abort;
    end
    else

    if (EDValor.Text<= '0' ) then
    begin
      MessageDlg('Valor Deve Ser Maior Que Zero',
      mtInformation,[mbok],0);
      EDValor.SetFocus;
      Exit;
    end;





    if RadioGroup1.ItemIndex = 0 then

    if strtoFloat (Edvalor.Text)>DM.TBCaixaSALDO.AsFloat then
    begin
    Showmessage('N�o H� Saldo O Suficiente Em Caixa');
    EDValor.SetFocus;
    Abort;
    end
     else
    begin
    DM.TBCaixa.Edit;
    DM.TBCaixaSALDO.AsFloat:= DM.TBCaixaSALDO.AsFloat-strtoFloat (Edvalor.Text);
    DM.TBCaixaVALORSAIDA.AsFloat:= DM.TBCaixaVALORSAIDA.AsFloat+strtoFloat(Edvalor.Text);
    DM.TBCaixa.Post;
    DM.TBCaixa.Refresh;
    Close;
    end
    else
    begin
    DM.TBCaixa.Edit;
    DM.TBCaixaSALDO.AsFloat:= DM.TBCaixaSALDO.AsFloat+strtoFloat (Edvalor.Text);
    DM.TBCaixaVALORENTRADA.AsFloat:=  DM.TBCaixaVALORENTRADA.AsFloat+strtoFloat (Edvalor.Text);
    DM.TBCaixa.Post;
    DM.TBCaixa.Refresh;
    Close;
    End



end;

procedure TFDebitoCredito.BitBtn2Click(Sender: TObject);
begin
        Close;
end;
procedure TFDebitoCredito.FormShow(Sender: TObject);
begin
EDValor.Text:='0';

end;

end.
