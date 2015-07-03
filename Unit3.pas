unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB,Grids,DBGrids, Menus, StdCtrls, ExtCtrls, DBCtrls,
  ComCtrls, Mask, ExtDlgs, Buttons,ShellAPI;

type
  TForm3 = class(TForm)
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBImage1: TDBImage;
    BitBtn5: TBitBtn;
    OpenPictureDialog2: TOpenPictureDialog;
    ADOConnection1: TADOConnection;
    DBRichEdit1: TDBRichEdit;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    BitBtn6: TBitBtn;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    RadioButton3: TRadioButton;
    PageSetupDialog1: TPageSetupDialog;
    PrintDialog1: TPrintDialog;
    DBGrid1: TDBGrid;
    ADOTable2DSDesigner: TAutoIncField;
    ADOTable2DSDesigner2: TWideStringField;
    ADOTable2DSDesigner3: TWideStringField;
    ADOTable2DSDesigner4: TWideStringField;
    ADOTable2DSDesigner5: TMemoField;
    ADOTable2DSDesigner6: TBlobField;
    ADOTable2DSDesigner7: TBCDField;
    ADOTable2DSDesigner8: TBCDField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure N11Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3; pole:string;

implementation

uses Datamodule2, Datamodule1, Unit1, Unit2, Unit4, Unit6;

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
Form3.ADOTable2.Insert;
end;

procedure TForm3.BitBtn5Click(Sender: TObject);
begin
if OpenPictureDialog2.Execute
then
begin
Form3.ADOTable2.Edit;
TBlobField(ADOTable2.FieldByName('Обложка')).LoadFromFile(OpenPictureDialog2.FileName);
Form3.ADOTable2.Post;
end;
end;

procedure TForm3.BitBtn6Click(Sender: TObject);
begin
pole:=combobox1.Text;
  if not ADOTable2.Locate(pole, Edit1.Text, [loCaseInsensitive,
    loPartialKey]) then
    ShowMessage('Запись не найдена');
end;

procedure TForm3.Edit2Change(Sender: TObject);
begin
if radiobutton1.Checked then
begin
    if Length(Edit2.Text) > 0 then
       begin
            ADOTable2.Filtered:=false;
            ADOTable2.Filter:='Жанр LIKE '+ #39 + Edit2.Text + '%' + #39;
            ADOTable2.Filtered:=true;
       end
    else ADOTable2.Filtered:=false;
end;
if radiobutton2.Checked then
begin
if Length(Edit2.Text) > 0 then
       begin
            ADOTable2.Filtered:=false;
            ADOTable2.Filter:='Год LIKE '+ #39 + Edit2.Text + '%' + #39;
            ADOTable2.Filtered:=true;
       end
    else ADOTable2.Filtered:=false;
end;
if radiobutton3.Checked then
begin
    if Length(Edit2.Text) > 0 then
       begin
            ADOTable2.Filtered:=false;
            ADOTable2.Filter:='Название LIKE '+ #39 + Edit2.Text + '%' + #39;
            ADOTable2.Filtered:=true;
       end
    else ADOTable2.Filtered:=false;
end;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
Form3.ADOTable2.Edit;
end;

procedure TForm3.BitBtn3Click(Sender: TObject);
begin
With CreateMessageDialog('Удалить запись?',mtConfirmation,[mbYes,mbNo]) do
try
Caption:= 'Запрос на удаление';
(FindComponent('Yes') as TButton).Caption:='Да';
(FindComponent('No') as TButton).Caption:='Нет';
ShowModal;
case ModalResult of
6: DataModule4.ADOTable1.Delete;
7: ;
else exit;
end;
finally
free;
end;

end; 

procedure TForm3.N2Click(Sender: TObject);
begin
Form3.ADOTable2.Insert;
end;

procedure TForm3.N3Click(Sender: TObject);
begin
Form3.ADOTable2.Delete;
end;

procedure TForm3.N4Click(Sender: TObject);
begin
Form3.ADOTable2.Edit;
end;

procedure TForm3.N5Click(Sender: TObject);
begin
if pagesetupdialog1.execute then
if printdialog1.execute then
begin
DBRichEdit1.Print('');
end;
end;

procedure TForm3.N6Click(Sender: TObject);
begin
Form3.Close;
end;

procedure TForm3.N8Click(Sender: TObject);
begin
ADOTable2.IndexFieldNames:='Название';
end;

procedure TForm3.N9Click(Sender: TObject);
begin
ADOTable2.IndexFieldNames:='Жанр';
end;

procedure TForm3.N10Click(Sender: TObject);
begin
ADOTable2.IndexFieldNames:='Год';
end;

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
with CreateMessageDialog('Сохранить изменения?', mtConfirmation,[mbYes,mbNo]) do
try
  Caption:= 'Запрос на применение';
  (FindComponent('Yes') as TButton).Caption := 'Да';
  (FindComponent('No') as TButton).Caption := 'Нет';
  ShowModal;
  case ModalResult of 
  6: Form3.ADOTable2.Post;
  7: ;
  else exit;
  end;
  finally
  Free;
end;
end;

procedure TForm3.N11Click(Sender: TObject);
begin
shellexecute(Application.Handle,'Open',Pchar(ExtractFilePath(Application.ExeName)+'/Help.chm'),nil,nil,1);
end;

end.
 