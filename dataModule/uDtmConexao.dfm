object dtmPrincipal: TdtmPrincipal
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object ConexaoDB: TFDConnection
    Params.Strings = (
      'User_Name=postgres'
      'Password=fgd1788'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object PgDllLinkDB: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files\PostgreSQL\18\bin\libpq.dll'
    Left = 152
    Top = 32
  end
  object WaitCursorDB: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 272
    Top = 32
  end
end
