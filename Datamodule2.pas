unit Datamodule2;

interface

uses
  SysUtils, Classes, Dialogs;

type
  TDataModule5 = class(TDataModule)
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule5: TDataModule5;

implementation

uses Datamodule1, Unit1, Unit2, Unit3, Unit4;

{$R *.dfm}

end.
