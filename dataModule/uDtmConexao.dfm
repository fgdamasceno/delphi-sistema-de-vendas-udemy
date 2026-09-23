object dtmConexao: TdtmConexao
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=vendas'
      'Password=fgd1788'
      'User_Name=postgres'
      'Server=localhost'
      'DriverID=PG')
    LoginPrompt = False
    Left = 80
    Top = 64
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files\PostgreSQL\18\bin\libpq.dll'
    Left = 224
    Top = 64
  end
end
