unit Datamodule1;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule4 = class(TDataModule)
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1DSDesigner: TAutoIncField;
    ADOTable1DSDesigner2: TWideStringField;
    ADOTable1DSDesigner3: TWideStringField;
    ADOTable1DSDesigner4: TWideStringField;
    ADOTable1DSDesigner5: TMemoField;
    ADOTable1DSDesigner6: TBlobField;
    ADOTable1DSDesigner7: TBCDField;
    ADOTable1DSDesigner8: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

uses Datamodule2, Unit1, Unit2, Unit3, Unit4;

{$R *.dfm}

end.
