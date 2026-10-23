object dtmPrincipal: TdtmPrincipal
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object ConexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    SQLHourGlass = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 5432
    Database = 'vendas'
    User = 'postgres'
    Password = 'fgd1788'
    Protocol = 'postgresql'
    LibraryLocation = 
      'C:\dev\workspace\Delphi\projetos\Delphi Sistema de Vendas Udemy\' +
      'Win32\Debug\libpq.dll'
    Left = 80
    Top = 56
  end
end
