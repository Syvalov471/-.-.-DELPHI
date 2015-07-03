unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB,Grids,DBGrids, Menus, StdCtrls, ExtCtrls, DBCtrls,
  ComCtrls, Mask, ExtDlgs, Buttons, ShellAPI;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N10: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Button5: TButton;
    ComboBox1: TComboBox;
    DBRichEdit1: TDBRichEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    DBImage1: TDBImage;
    Button6: TButton;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit2: TEdit;
    Image1: TImage;
    N6: TMenuItem;
    PrintDialog1: TPrintDialog;
    PageSetupDialog1: TPageSetupDialog;
    RadioButton3: TRadioButton;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    DBGrid1: TDBGrid;
    procedure N4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);


  

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2; 
  d:string;

implementation

uses Datamodule1, Unit1, Datamodule2, Unit3, Unit4, Unit5, DateUtils;

{$R *.dfm}



procedure TForm2.N4Click(Sender: TObject);
begin
Datamodule4.ADOTable1.Edit;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
if DataModule4.ADOTable1.Modified then
with CreateMessageDialog('��������� ���������?', mtConfirmation,[mbYes,mbNo]) do
try
  Caption:= '������ �� ����������';
  (FindComponent('Yes') as TButton).Caption := '��';
  (FindComponent('No') as TButton).Caption := '���';
  ShowModal;
  case ModalResult of 
  6: DataModule4.ADOTable1.Post;
  7: ;
  else exit;
  end;
  finally
  Free;
end;
end;

procedure TForm2.N2Click(Sender: TObject);
begin
Datamodule4.ADOTable1.Insert;
end;

procedure TForm2.N3Click(Sender: TObject);
begin
Datamodule4.ADOTable1.Delete;
end;

procedure TForm2.N5Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Datamodule4.ADOTable1.Edit;

end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Datamodule4.ADOTable1.Insert;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
With CreateMessageDialog('������� ������?',mtConfirmation,[mbYes,mbNo]) do
try
Caption:= '������ �� ��������';
(FindComponent('Yes') as TButton).Caption:='��';
(FindComponent('No') as TButton).Caption:='���';
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

procedure TForm2.Button5Click(Sender: TObject);
begin
d:=combobox1.Text;
  if not Datamodule4.ADOTable1.Locate(d, Edit1.Text, [loCaseInsensitive,
    loPartialKey]) then
    ShowMessage('������ �� �������');

end;

procedure TForm2.Button6Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute
then
begin
DataModule4.ADOTable1.Edit;
TBlobField(DataModule4.ADOTable1.FieldByName('�������')).LoadFromFile(OpenPictureDialog1.FileName);
DataModule4.ADOTable1.Post;
end;
end;


procedure TForm2.Edit2Change(Sender: TObject);
begin
if radiobutton1.Checked then
begin
    if Length(Edit2.Text) > 0 then
       begin
            DataModule4.ADOTable1.Filtered:=false;
            DataModule4.ADOTable1.Filter:='���� LIKE '+ #39 + Edit2.Text + '%' + #39;
            DataModule4.ADOTable1.Filtered:=true;
       end
    else DataModule4.ADOTable1.Filtered:=false;
end;
if radiobutton2.Checked then
begin
if Length(Edit2.Text) > 0 then
       begin
            DataModule4.ADOTable1.Filtered:=false;
            DataModule4.ADOTable1.Filter:='��� LIKE '+ #39 + Edit2.Text + '%' + #39;
            DataModule4.ADOTable1.Filtered:=true;
       end
    else DataModule4.ADOTable1.Filtered:=false;
end;
if radiobutton3.Checked then
begin
    if Length(Edit2.Text) > 0 then
       begin
            DataModule4.ADOTable1.Filtered:=false;
            DataModule4.ADOTable1.Filter:='�������� LIKE '+ #39 + Edit2.Text + '%' + #39;
            DataModule4.ADOTable1.Filtered:=true;
       end
    else DataModule4.ADOTable1.Filtered:=false;
end;
end;


procedure TForm2.N6Click(Sender: TObject);
begin
if pagesetupdialog1.execute then
if printdialog1.execute then
begin
DBRichEdit1.Print('');
end;
end;

procedure TForm2.N8Click(Sender: TObject);
begin
Datamodule4.ADOTable1.IndexFieldNames:='��������';
end;

procedure TForm2.N11Click(Sender: TObject);
begin
Datamodule4.ADOTable1.IndexFieldNames:='����';
end;

procedure TForm2.N9Click(Sender: TObject);
begin
Datamodule4.ADOTable1.IndexFieldNames:='���';
end;

procedure TForm2.N10Click(Sender: TObject);
begin
Shellexecute(Application.Handle,'Open',Pchar(ExtractFilePath(Application.ExeName)+'/Help.chm'),nil,nil,1)
end;



end.
