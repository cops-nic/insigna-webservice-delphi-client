unit Client;
 interface
 uses
  InsignaWs, xmldom,WSSecurity, Soap.InvokeRegistry,
  Soap.Rio, Soap.SOAPHTTPClient,Xml.XMLIntf,Soap.XSBuiltIns;

type

  TClient=Class

  published
  const
  //Las credenciales para autenticarse en Certipass
  stUsername = 'usuario';
  stPassword = 'password';
  var
  stWebServiceProxy:InsignaSOAPWS;
  constructor Create();

  procedure addSecurityHeader(Service: InsignaSOAPWS);
  function cancelCfdi(transactionId:string; uuid:string; signatureValue:string; cancelationDate:TXSDateTime):CfdiCancelResult;

  end;

  implementation
  //Configuración del endpoint
  constructor TClient.Create;
  var
  stHTTPRIO1: THTTPRIO;
  begin
        stHTTPRIO1:=THTTPRIO.Create(nil);
        stHTTPRIO1.URL:='https://beta.ws.insigna.mx/services';
        stHTTPRIO1.WSDLLocation:= 'https://beta.ws.insigna.mx/services?wsdl';
        //Se obtiene la instancia del webservice
        stWebServiceProxy:=GetInsignaSOAPWS(true,stHTTPRIO1.WSDLLocation,stHTTPRIO1);
        //Se agrega el SegurityHeader
        addSecurityHeader(stWebServiceProxy);
  end;


  //Configuración del Header de seguridad
  procedure TClient.addSecurityHeader(Service: InsignaSOAPWS);
  var
    Header: Security;
    Headers: ISOAPHeaders;
  begin
    Header := Security.Create;
    Header.MustUnderstand := false;
    Header.UsernameToken := UsernameToken.Create;
    Header.UsernameToken.Id := 'UsernameToken';
    Header.UsernameToken.Username := TClient.stUsername;
    Header.UsernameToken.Password := Password.Create;
    Header.UsernameToken.Password.Type_ :='http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText';
    Header.UsernameToken.Password.Text := TClient.stPassword;
    Header.UsernameToken.Nonce := Nonce.Create;
    Header.UsernameToken.Nonce.EncodingType :='http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary';
    Header.UsernameToken.Created := Created.Create;
    Headers := (Service as ISOAPHeaders);
    Headers.OwnsSentHeaders := True;
    Headers.Send(Header);
  end;

  // Llamada al método getCfdiCancel de Certipass web service
  function TClient.cancelCfdi(transactionId:string; uuid:string; signatureValue:string; cancelationDate:TXSDateTime):CfdiCancelResult;

  var
  stWrapper:CfdiCancelWrapper;
  begin
  stWrapper:= CfdiCancelWrapper.Create;
  stWrapper.uuid:=uuid;
  stWrapper.transactionId:= transactionId;
  stWrapper.signatureValue:= signatureValue;
  stWrapper.cancelationDate:=cancelationDate;
  Result:= stWebServiceProxy.cancelCfdi(stWrapper);
  end;
  end.
