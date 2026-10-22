object dtmPrincipal: TdtmPrincipal
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object ConexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    SQLHourGlass = True
    DisableSavepoints = False
    HostName = ''
    Port = 0
    Database = ''
    User = ''
    Password = ''
    Protocol = 'postgresql'
    Left = 80
    Top = 56
  end
end
