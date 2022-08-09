unit UBiblioteca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass;

procedure CarregarRelatorio (const pReport: TFrxReport);

implementation

{$R *.dfm}



  procedure CarregarRelatorio (const pReport: TFrxReport);
  begin
    pReport.PrepareReport;
    pReport.Preview;     end;
end.
