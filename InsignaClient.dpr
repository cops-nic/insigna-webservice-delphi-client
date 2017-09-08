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
  //Inicializaci�n del cliente
  proxy:=TClient.Create;
  //Inicializaci�n del objeto que guardar� la respuesta
  consultResult:=CfdiCancelResult.Create;
  WriteLn('Cliente creado');
  try
    //Llamada al m�todo que se definio en la unidad Client
     consultResult:=proxy.cancelCfdi('', 'd170f2c1-885f-4a64-95ec-5a22e75d07a4', '', date);

     WriteLn('C�digo de Respuesta: '+consultResult.responseCode.ToString());
     WriteLn('Descripci�n de Respuesta: '+consultResult.responseDescription);
     WriteLn('ID de transacci�n: '+consultResult.transactionId);
     WriteLn('ID de transacci�n en el Servidor: '+consultResult.serverTransactionId);
     WriteLn('Fecha de Solicitud: '+DateTimeToStr(consultResult.requestDate.AsDateTime));
     WriteLn('Fecha de Respuesta: '+ DateTimeToStr(consultResult.responseDate.AsDateTime));
     WriteLn('Tiempo de Ejecuci�n: '+consultResult.executionTime.ToString());

     ReadLn(userExit);
    except
    on E: ERemotableException do
    begin
          Writeln('Error '+E.FaultDetail);
          ReadLn(userExit);
    end;
  end;
end.

