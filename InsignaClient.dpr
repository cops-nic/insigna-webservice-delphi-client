program InsignaClient;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Soap.XSBuiltIns,
  InsignaWS in 'InsignaWS.pas',
  WSSecurity in 'WSSecurity.pas',
  Client in 'Client.pas',
  ActiveX,
  Windows,
  InvokeRegistry;

var
  proxy : TClient;
  userExit : string; //Variable de apoyo para evitar que la consola se cierre cuando se completa el proceso
  consultResult : CfdiCancelResult;
  date : TXSDateTime;

begin
date:=TXSDateTime.Create();
       date.XSToNative('2014-12-01T00:00:00');
        CoInitialize(nil);
  //Inicialización del cliente
  proxy:=TClient.Create;
  //Inicialización del objeto que guardará la respuesta
  consultResult:=CfdiCancelResult.Create;
  WriteLn('Cliente creado');
  try
    //Llamada al método que se definio en la unidad Client
     consultResult:=proxy.cancelCfdi('', 'd170f2c1-885f-4a64-95ec-5a22e75d07a4', '', date);

     WriteLn('Código de Respuesta: '+consultResult.responseCode.ToString());
     WriteLn('Descripción de Respuesta: '+consultResult.responseDescription);
     WriteLn('ID de transacción: '+consultResult.transactionId);
     WriteLn('ID de transacción en el Servidor: '+consultResult.serverTransactionId);
     WriteLn('Fecha de Solicitud: '+DateTimeToStr(consultResult.requestDate.AsDateTime));
     WriteLn('Fecha de Respuesta: '+ DateTimeToStr(consultResult.responseDate.AsDateTime));
     WriteLn('Tiempo de Ejecución: '+consultResult.executionTime.ToString());

     ReadLn(userExit);
    except
    on E: ERemotableException do
    begin
          Writeln('Error '+E.FaultDetail);
          ReadLn(userExit);
    end;
  end;
end.

