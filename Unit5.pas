unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm5 = class(TForm)
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
  Form5: TForm5;

implementation

uses Datamodule1, Datamodule2, Unit1, Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
Datamodule4.ADOTable1.Delete;
Form5.Close;
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
Form5.Close;
end;

end.
