unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm6 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Datamodule1, Datamodule2, Unit1, Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
Form3.ADOTable2.Delete;
Form6.Close;
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
form6.Close;
end;

end.
