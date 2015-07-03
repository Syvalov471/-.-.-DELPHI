unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB,Grids,DBGrids, Menus, StdCtrls, ExtCtrls, DBCtrls,
  ComCtrls, Mask, ExtDlgs, Buttons, jpeg;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Image1: TImage;
  procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Datamodule1, Datamodule2, Unit4;

{$R *.dfm}


procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
Form4.Show;
end;

end.
