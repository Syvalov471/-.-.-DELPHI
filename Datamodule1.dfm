object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 914
  Top = 241
  Height = 204
  Width = 222
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = ADOTable1
    Left = 16
    Top = 8
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='#1043#1083#1072#1074#1085 +
      #1072#1103'.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLED' +
      'B:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Databa' +
      'se Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lockin' +
      'g Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bu' +
      'lk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:C' +
      'reate System Database=False;Jet OLEDB:Encrypt Database=False;Jet' +
      ' OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact With' +
      'out Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 104
    Top = 8
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1048#1075#1088#1099
    Left = 16
    Top = 56
    object ADOTable1DSDesigner: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
      Visible = False
    end
    object ADOTable1DSDesigner2: TWideStringField
      DisplayWidth = 37
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
      Size = 255
    end
    object ADOTable1DSDesigner3: TWideStringField
      FieldName = #1046#1072#1085#1088
      Size = 15
    end
    object ADOTable1DSDesigner4: TWideStringField
      FieldName = #1043#1086#1076
      EditMask = '####;1;_'
      Size = 10
    end
    object ADOTable1DSDesigner5: TMemoField
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      Visible = False
      BlobType = ftMemo
    end
    object ADOTable1DSDesigner6: TBlobField
      FieldName = #1054#1073#1083#1086#1078#1082#1072
      Visible = False
    end
    object ADOTable1DSDesigner7: TBCDField
      FieldName = #1047#1072#1083#1086#1075
      Precision = 19
    end
    object ADOTable1DSDesigner8: TBCDField
      FieldName = #1062#1077#1085#1072' '#1079#1072' '#1089#1091#1090#1082#1080' '#1087#1088#1086#1082#1072#1090#1072
      Precision = 19
    end
  end
end