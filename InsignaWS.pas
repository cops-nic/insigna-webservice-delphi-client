// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://beta.ws.insigna.mx/services?wsdl
//  >Import : https://beta.ws.insigna.mx/services?wsdl>0
//  >Import : https://beta.ws.insigna.mx/services?xsd=InsignaSOAPWSService_schema1.xsd
// Encoding : UTF-8
// Version  : 1.0
// (8/30/2017 4:03:09 PM - - $Rev: 90173 $)
// ************************************************************************ //

unit InsignaWS;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  verifyOperationWrapper2 = class;              { "http://ws.certipass.mx/"[GblCplx] }
  VerifyOperationWrapper = class;               { "http://ws.certipass.mx/"[GblElm] }
  operationFailed2     = class;                 { "http://ws.certipass.mx/"[GblCplx] }
  GenericResult        = class;                 { "http://ws.certipass.mx/"[GblCplx] }
  OperationVerifyResult = class;                { "http://ws.certipass.mx/"[GblCplx] }
  cfdiInfoWrapper2     = class;                 { "http://ws.certipass.mx/"[GblCplx] }
  CfdiInfoResult       = class;                 { "http://ws.certipass.mx/"[GblCplx] }
  validateCfdiWrapper2 = class;                 { "http://ws.certipass.mx/"[GblCplx] }
  ValidateCfdiWrapper  = class;                 { "http://ws.certipass.mx/"[GblElm] }
  cfdiCancelWrapper2   = class;                 { "http://ws.certipass.mx/"[GblCplx] }
  CfdiCancelResult     = class;                 { "http://ws.certipass.mx/"[GblCplx] }
  CfdiValidateResult   = class;                 { "http://ws.certipass.mx/"[GblCplx] }
  CfdiInfoWrapper      = class;                 { "http://ws.certipass.mx/"[GblElm] }
  OperationFailed      = class;                 { "http://ws.certipass.mx/"[Flt][GblElm] }
  cfdiSignWrapper2     = class;                 { "http://ws.certipass.mx/"[GblCplx] }
  CfdiSignWrapper      = class;                 { "http://ws.certipass.mx/"[GblElm] }
  CfdiSignResult       = class;                 { "http://ws.certipass.mx/"[GblCplx] }
  CfdiCancelWrapper    = class;                 { "http://ws.certipass.mx/"[GblElm] }



  // ************************************************************************ //
  // XML       : verifyOperationWrapper, global, <complexType>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  verifyOperationWrapper2 = class(TRemotable)
  private
    ForiginalChain: string;
    ForiginalChain_Specified: boolean;
    FsignTransactionId: string;
    FsignTransactionId_Specified: boolean;
    FtransactionId: string;
    FtransactionId_Specified: boolean;
    procedure SetoriginalChain(Index: Integer; const Astring: string);
    function  originalChain_Specified(Index: Integer): boolean;
    procedure SetsignTransactionId(Index: Integer; const Astring: string);
    function  signTransactionId_Specified(Index: Integer): boolean;
    procedure SettransactionId(Index: Integer; const Astring: string);
    function  transactionId_Specified(Index: Integer): boolean;
  published
    property originalChain:     string  Index (IS_OPTN) read ForiginalChain write SetoriginalChain stored originalChain_Specified;
    property signTransactionId: string  Index (IS_OPTN) read FsignTransactionId write SetsignTransactionId stored signTransactionId_Specified;
    property transactionId:     string  Index (IS_OPTN) read FtransactionId write SettransactionId stored transactionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : VerifyOperationWrapper, global, <element>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  VerifyOperationWrapper = class(verifyOperationWrapper2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : operationFailed, global, <complexType>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  operationFailed2 = class(TRemotable)
  private
    FerrorCode: Integer;
    FerrorDescription: string;
    FerrorDescription_Specified: boolean;
    FtransactionId: string;
    FtransactionId_Specified: boolean;
    FserverTransactionId: string;
    FserverTransactionId_Specified: boolean;
    FrequestDate: TXSDateTime;
    FrequestDate_Specified: boolean;
    FresponseDate: TXSDateTime;
    FresponseDate_Specified: boolean;
    FexecutionTime: Int64;
    procedure SeterrorDescription(Index: Integer; const Astring: string);
    function  errorDescription_Specified(Index: Integer): boolean;
    procedure SettransactionId(Index: Integer; const Astring: string);
    function  transactionId_Specified(Index: Integer): boolean;
    procedure SetserverTransactionId(Index: Integer; const Astring: string);
    function  serverTransactionId_Specified(Index: Integer): boolean;
    procedure SetrequestDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  requestDate_Specified(Index: Integer): boolean;
    procedure SetresponseDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  responseDate_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property errorCode:           Integer      read FerrorCode write FerrorCode;
    property errorDescription:    string       Index (IS_OPTN) read FerrorDescription write SeterrorDescription stored errorDescription_Specified;
    property transactionId:       string       Index (IS_OPTN) read FtransactionId write SettransactionId stored transactionId_Specified;
    property serverTransactionId: string       Index (IS_OPTN) read FserverTransactionId write SetserverTransactionId stored serverTransactionId_Specified;
    property requestDate:         TXSDateTime  Index (IS_OPTN) read FrequestDate write SetrequestDate stored requestDate_Specified;
    property responseDate:        TXSDateTime  Index (IS_OPTN) read FresponseDate write SetresponseDate stored responseDate_Specified;
    property executionTime:       Int64        read FexecutionTime write FexecutionTime;
  end;



  // ************************************************************************ //
  // XML       : GenericResult, global, <complexType>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  GenericResult = class(TRemotable)
  private
    FresponseCode: Integer;
    FresponseDescription: string;
    FresponseDescription_Specified: boolean;
    FtransactionId: string;
    FtransactionId_Specified: boolean;
    FserverTransactionId: string;
    FserverTransactionId_Specified: boolean;
    FrequestDate: TXSDateTime;
    FrequestDate_Specified: boolean;
    FresponseDate: TXSDateTime;
    FresponseDate_Specified: boolean;
    FexecutionTime: Int64;
    procedure SetresponseDescription(Index: Integer; const Astring: string);
    function  responseDescription_Specified(Index: Integer): boolean;
    procedure SettransactionId(Index: Integer; const Astring: string);
    function  transactionId_Specified(Index: Integer): boolean;
    procedure SetserverTransactionId(Index: Integer; const Astring: string);
    function  serverTransactionId_Specified(Index: Integer): boolean;
    procedure SetrequestDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  requestDate_Specified(Index: Integer): boolean;
    procedure SetresponseDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  responseDate_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property responseCode:        Integer      read FresponseCode write FresponseCode;
    property responseDescription: string       Index (IS_OPTN) read FresponseDescription write SetresponseDescription stored responseDescription_Specified;
    property transactionId:       string       Index (IS_OPTN) read FtransactionId write SettransactionId stored transactionId_Specified;
    property serverTransactionId: string       Index (IS_OPTN) read FserverTransactionId write SetserverTransactionId stored serverTransactionId_Specified;
    property requestDate:         TXSDateTime  Index (IS_OPTN) read FrequestDate write SetrequestDate stored requestDate_Specified;
    property responseDate:        TXSDateTime  Index (IS_OPTN) read FresponseDate write SetresponseDate stored responseDate_Specified;
    property executionTime:       Int64        read FexecutionTime write FexecutionTime;
  end;



  // ************************************************************************ //
  // XML       : OperationVerifyResult, global, <complexType>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  OperationVerifyResult = class(GenericResult)
  private
    Fuuid: string;
    Fuuid_Specified: boolean;
    FcfdiStatus: string;
    FcfdiStatus_Specified: boolean;
    Fcfdi: string;
    Fcfdi_Specified: boolean;
    procedure Setuuid(Index: Integer; const Astring: string);
    function  uuid_Specified(Index: Integer): boolean;
    procedure SetcfdiStatus(Index: Integer; const Astring: string);
    function  cfdiStatus_Specified(Index: Integer): boolean;
    procedure Setcfdi(Index: Integer; const Astring: string);
    function  cfdi_Specified(Index: Integer): boolean;
  published
    property uuid:       string  Index (IS_OPTN) read Fuuid write Setuuid stored uuid_Specified;
    property cfdiStatus: string  Index (IS_OPTN) read FcfdiStatus write SetcfdiStatus stored cfdiStatus_Specified;
    property cfdi:       string  Index (IS_OPTN) read Fcfdi write Setcfdi stored cfdi_Specified;
  end;



  // ************************************************************************ //
  // XML       : cfdiInfoWrapper, global, <complexType>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  cfdiInfoWrapper2 = class(TRemotable)
  private
    Fuuid: string;
    FtransactionId: string;
    FtransactionId_Specified: boolean;
    procedure SettransactionId(Index: Integer; const Astring: string);
    function  transactionId_Specified(Index: Integer): boolean;
  published
    property uuid:          string  read Fuuid write Fuuid;
    property transactionId: string  Index (IS_OPTN) read FtransactionId write SettransactionId stored transactionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : CfdiInfoResult, global, <complexType>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  CfdiInfoResult = class(GenericResult)
  private
    Fuuid: string;
    Fuuid_Specified: boolean;
    FcfdiStatus: string;
    FcfdiStatus_Specified: boolean;
    Fcfdi: string;
    Fcfdi_Specified: boolean;
    procedure Setuuid(Index: Integer; const Astring: string);
    function  uuid_Specified(Index: Integer): boolean;
    procedure SetcfdiStatus(Index: Integer; const Astring: string);
    function  cfdiStatus_Specified(Index: Integer): boolean;
    procedure Setcfdi(Index: Integer; const Astring: string);
    function  cfdi_Specified(Index: Integer): boolean;
  published
    property uuid:       string  Index (IS_OPTN) read Fuuid write Setuuid stored uuid_Specified;
    property cfdiStatus: string  Index (IS_OPTN) read FcfdiStatus write SetcfdiStatus stored cfdiStatus_Specified;
    property cfdi:       string  Index (IS_OPTN) read Fcfdi write Setcfdi stored cfdi_Specified;
  end;



  // ************************************************************************ //
  // XML       : validateCfdiWrapper, global, <complexType>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  validateCfdiWrapper2 = class(TRemotable)
  private
    Fcfdi: string;
    FtransactionId: string;
    FtransactionId_Specified: boolean;
    procedure SettransactionId(Index: Integer; const Astring: string);
    function  transactionId_Specified(Index: Integer): boolean;
  published
    property cfdi:          string  read Fcfdi write Fcfdi;
    property transactionId: string  Index (IS_OPTN) read FtransactionId write SettransactionId stored transactionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : ValidateCfdiWrapper, global, <element>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  ValidateCfdiWrapper = class(validateCfdiWrapper2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : cfdiCancelWrapper, global, <complexType>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  cfdiCancelWrapper2 = class(TRemotable)
  private
    Fuuid: string;
    FsignatureValue: string;
    FsignatureValue_Specified: boolean;
    FcancelationDate: TXSDateTime;
    Fcertificate: string;
    Fcertificate_Specified: boolean;
    FtransactionId: string;
    FtransactionId_Specified: boolean;
    procedure SetsignatureValue(Index: Integer; const Astring: string);
    function  signatureValue_Specified(Index: Integer): boolean;
    procedure Setcertificate(Index: Integer; const Astring: string);
    function  certificate_Specified(Index: Integer): boolean;
    procedure SettransactionId(Index: Integer; const Astring: string);
    function  transactionId_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property uuid:            string       read Fuuid write Fuuid;
    property signatureValue:  string       Index (IS_OPTN) read FsignatureValue write SetsignatureValue stored signatureValue_Specified;
    property cancelationDate: TXSDateTime  read FcancelationDate write FcancelationDate;
    property certificate:     string       Index (IS_OPTN) read Fcertificate write Setcertificate stored certificate_Specified;
    property transactionId:   string       Index (IS_OPTN) read FtransactionId write SettransactionId stored transactionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : CfdiCancelResult, global, <complexType>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  CfdiCancelResult = class(GenericResult)
  private
    Freceipt: string;
    Freceipt_Specified: boolean;
    procedure Setreceipt(Index: Integer; const Astring: string);
    function  receipt_Specified(Index: Integer): boolean;
  published
    property receipt: string  Index (IS_OPTN) read Freceipt write Setreceipt stored receipt_Specified;
  end;



  // ************************************************************************ //
  // XML       : CfdiValidateResult, global, <complexType>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  CfdiValidateResult = class(GenericResult)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : CfdiInfoWrapper, global, <element>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  CfdiInfoWrapper = class(cfdiInfoWrapper2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : OperationFailed, global, <element>
  // Namespace : http://ws.certipass.mx/
  // Info      : Fault
  // Base Types: operationFailed
  // ************************************************************************ //
  OperationFailed = class(ERemotableException)
  private
    FerrorCode: Integer;
    FerrorDescription: string;
    FerrorDescription_Specified: boolean;
    FtransactionId: string;
    FtransactionId_Specified: boolean;
    FserverTransactionId: string;
    FserverTransactionId_Specified: boolean;
    FrequestDate: TXSDateTime;
    FrequestDate_Specified: boolean;
    FresponseDate: TXSDateTime;
    FresponseDate_Specified: boolean;
    FexecutionTime: Int64;
    procedure SeterrorDescription(Index: Integer; const Astring: string);
    function  errorDescription_Specified(Index: Integer): boolean;
    procedure SettransactionId(Index: Integer; const Astring: string);
    function  transactionId_Specified(Index: Integer): boolean;
    procedure SetserverTransactionId(Index: Integer; const Astring: string);
    function  serverTransactionId_Specified(Index: Integer): boolean;
    procedure SetrequestDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  requestDate_Specified(Index: Integer): boolean;
    procedure SetresponseDate(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  responseDate_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property errorCode:           Integer      read FerrorCode write FerrorCode;
    property errorDescription:    string       Index (IS_OPTN) read FerrorDescription write SeterrorDescription stored errorDescription_Specified;
    property transactionId:       string       Index (IS_OPTN) read FtransactionId write SettransactionId stored transactionId_Specified;
    property serverTransactionId: string       Index (IS_OPTN) read FserverTransactionId write SetserverTransactionId stored serverTransactionId_Specified;
    property requestDate:         TXSDateTime  Index (IS_OPTN) read FrequestDate write SetrequestDate stored requestDate_Specified;
    property responseDate:        TXSDateTime  Index (IS_OPTN) read FresponseDate write SetresponseDate stored responseDate_Specified;
    property executionTime:       Int64        read FexecutionTime write FexecutionTime;
  end;



  // ************************************************************************ //
  // XML       : cfdiSignWrapper, global, <complexType>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  cfdiSignWrapper2 = class(TRemotable)
  private
    Fcfdi: string;
    FtransactionId: string;
    FtransactionId_Specified: boolean;
    procedure SettransactionId(Index: Integer; const Astring: string);
    function  transactionId_Specified(Index: Integer): boolean;
  published
    property cfdi:          string  read Fcfdi write Fcfdi;
    property transactionId: string  Index (IS_OPTN) read FtransactionId write SettransactionId stored transactionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : CfdiSignWrapper, global, <element>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  CfdiSignWrapper = class(cfdiSignWrapper2)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : CfdiSignResult, global, <complexType>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  CfdiSignResult = class(GenericResult)
  private
    FsignedXml: string;
    FsignedXml_Specified: boolean;
    Fuuid: string;
    Fuuid_Specified: boolean;
    procedure SetsignedXml(Index: Integer; const Astring: string);
    function  signedXml_Specified(Index: Integer): boolean;
    procedure Setuuid(Index: Integer; const Astring: string);
    function  uuid_Specified(Index: Integer): boolean;
  published
    property signedXml: string  Index (IS_OPTN) read FsignedXml write SetsignedXml stored signedXml_Specified;
    property uuid:      string  Index (IS_OPTN) read Fuuid write Setuuid stored uuid_Specified;
  end;



  // ************************************************************************ //
  // XML       : CfdiCancelWrapper, global, <element>
  // Namespace : http://ws.certipass.mx/
  // ************************************************************************ //
  CfdiCancelWrapper = class(cfdiCancelWrapper2)
  private
  published
  end;


  // ************************************************************************ //
  // Namespace : http://ws.certipass.mx/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : InsignaSOAPWSServiceSoapBinding
  // service   : InsignaSOAPWSService
  // port      : InsignaSOAPWSPort
  // URL       : https://beta.ws.insigna.mx/services
  // ************************************************************************ //
  InsignaSOAPWS = interface(IInvokable)
  ['{1048E337-803F-58BD-5344-EC5C034589AE}']
    function  verifyOperation(const verifyOperationWrapper: verifyOperationWrapper2): OperationVerifyResult; stdcall;
    function  validateCfdi(const validateCfdiWrapper: validateCfdiWrapper2): CfdiValidateResult; stdcall;
    function  cancelCfdi(const cfdiCancelWrapper: cfdiCancelWrapper2): CfdiCancelResult; stdcall;
    function  getCfdiInfo(const cfdiInfoWrapper: cfdiInfoWrapper2): CfdiInfoResult; stdcall;
    function  signCfdi(const cfdiSignWrapper: cfdiSignWrapper2): CfdiSignResult; stdcall;
  end;

function GetInsignaSOAPWS(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): InsignaSOAPWS;


implementation
  uses System.SysUtils;

function GetInsignaSOAPWS(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): InsignaSOAPWS;
const
  defWSDL = 'https://beta.ws.insigna.mx/services?wsdl';
  defURL  = 'https://beta.ws.insigna.mx/services';
  defSvc  = 'InsignaSOAPWSService';
  defPrt  = 'InsignaSOAPWSPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as InsignaSOAPWS);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure verifyOperationWrapper2.SetoriginalChain(Index: Integer; const Astring: string);
begin
  ForiginalChain := Astring;
  ForiginalChain_Specified := True;
end;

function verifyOperationWrapper2.originalChain_Specified(Index: Integer): boolean;
begin
  Result := ForiginalChain_Specified;
end;

procedure verifyOperationWrapper2.SetsignTransactionId(Index: Integer; const Astring: string);
begin
  FsignTransactionId := Astring;
  FsignTransactionId_Specified := True;
end;

function verifyOperationWrapper2.signTransactionId_Specified(Index: Integer): boolean;
begin
  Result := FsignTransactionId_Specified;
end;

procedure verifyOperationWrapper2.SettransactionId(Index: Integer; const Astring: string);
begin
  FtransactionId := Astring;
  FtransactionId_Specified := True;
end;

function verifyOperationWrapper2.transactionId_Specified(Index: Integer): boolean;
begin
  Result := FtransactionId_Specified;
end;

destructor operationFailed2.Destroy;
begin
  System.SysUtils.FreeAndNil(FrequestDate);
  System.SysUtils.FreeAndNil(FresponseDate);
  inherited Destroy;
end;

procedure operationFailed2.SeterrorDescription(Index: Integer; const Astring: string);
begin
  FerrorDescription := Astring;
  FerrorDescription_Specified := True;
end;

function operationFailed2.errorDescription_Specified(Index: Integer): boolean;
begin
  Result := FerrorDescription_Specified;
end;

procedure operationFailed2.SettransactionId(Index: Integer; const Astring: string);
begin
  FtransactionId := Astring;
  FtransactionId_Specified := True;
end;

function operationFailed2.transactionId_Specified(Index: Integer): boolean;
begin
  Result := FtransactionId_Specified;
end;

procedure operationFailed2.SetserverTransactionId(Index: Integer; const Astring: string);
begin
  FserverTransactionId := Astring;
  FserverTransactionId_Specified := True;
end;

function operationFailed2.serverTransactionId_Specified(Index: Integer): boolean;
begin
  Result := FserverTransactionId_Specified;
end;

procedure operationFailed2.SetrequestDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FrequestDate := ATXSDateTime;
  FrequestDate_Specified := True;
end;

function operationFailed2.requestDate_Specified(Index: Integer): boolean;
begin
  Result := FrequestDate_Specified;
end;

procedure operationFailed2.SetresponseDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FresponseDate := ATXSDateTime;
  FresponseDate_Specified := True;
end;

function operationFailed2.responseDate_Specified(Index: Integer): boolean;
begin
  Result := FresponseDate_Specified;
end;

destructor GenericResult.Destroy;
begin
  System.SysUtils.FreeAndNil(FrequestDate);
  System.SysUtils.FreeAndNil(FresponseDate);
  inherited Destroy;
end;

procedure GenericResult.SetresponseDescription(Index: Integer; const Astring: string);
begin
  FresponseDescription := Astring;
  FresponseDescription_Specified := True;
end;

function GenericResult.responseDescription_Specified(Index: Integer): boolean;
begin
  Result := FresponseDescription_Specified;
end;

procedure GenericResult.SettransactionId(Index: Integer; const Astring: string);
begin
  FtransactionId := Astring;
  FtransactionId_Specified := True;
end;

function GenericResult.transactionId_Specified(Index: Integer): boolean;
begin
  Result := FtransactionId_Specified;
end;

procedure GenericResult.SetserverTransactionId(Index: Integer; const Astring: string);
begin
  FserverTransactionId := Astring;
  FserverTransactionId_Specified := True;
end;

function GenericResult.serverTransactionId_Specified(Index: Integer): boolean;
begin
  Result := FserverTransactionId_Specified;
end;

procedure GenericResult.SetrequestDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FrequestDate := ATXSDateTime;
  FrequestDate_Specified := True;
end;

function GenericResult.requestDate_Specified(Index: Integer): boolean;
begin
  Result := FrequestDate_Specified;
end;

procedure GenericResult.SetresponseDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FresponseDate := ATXSDateTime;
  FresponseDate_Specified := True;
end;

function GenericResult.responseDate_Specified(Index: Integer): boolean;
begin
  Result := FresponseDate_Specified;
end;

procedure OperationVerifyResult.Setuuid(Index: Integer; const Astring: string);
begin
  Fuuid := Astring;
  Fuuid_Specified := True;
end;

function OperationVerifyResult.uuid_Specified(Index: Integer): boolean;
begin
  Result := Fuuid_Specified;
end;

procedure OperationVerifyResult.SetcfdiStatus(Index: Integer; const Astring: string);
begin
  FcfdiStatus := Astring;
  FcfdiStatus_Specified := True;
end;

function OperationVerifyResult.cfdiStatus_Specified(Index: Integer): boolean;
begin
  Result := FcfdiStatus_Specified;
end;

procedure OperationVerifyResult.Setcfdi(Index: Integer; const Astring: string);
begin
  Fcfdi := Astring;
  Fcfdi_Specified := True;
end;

function OperationVerifyResult.cfdi_Specified(Index: Integer): boolean;
begin
  Result := Fcfdi_Specified;
end;

procedure cfdiInfoWrapper2.SettransactionId(Index: Integer; const Astring: string);
begin
  FtransactionId := Astring;
  FtransactionId_Specified := True;
end;

function cfdiInfoWrapper2.transactionId_Specified(Index: Integer): boolean;
begin
  Result := FtransactionId_Specified;
end;

procedure CfdiInfoResult.Setuuid(Index: Integer; const Astring: string);
begin
  Fuuid := Astring;
  Fuuid_Specified := True;
end;

function CfdiInfoResult.uuid_Specified(Index: Integer): boolean;
begin
  Result := Fuuid_Specified;
end;

procedure CfdiInfoResult.SetcfdiStatus(Index: Integer; const Astring: string);
begin
  FcfdiStatus := Astring;
  FcfdiStatus_Specified := True;
end;

function CfdiInfoResult.cfdiStatus_Specified(Index: Integer): boolean;
begin
  Result := FcfdiStatus_Specified;
end;

procedure CfdiInfoResult.Setcfdi(Index: Integer; const Astring: string);
begin
  Fcfdi := Astring;
  Fcfdi_Specified := True;
end;

function CfdiInfoResult.cfdi_Specified(Index: Integer): boolean;
begin
  Result := Fcfdi_Specified;
end;

procedure validateCfdiWrapper2.SettransactionId(Index: Integer; const Astring: string);
begin
  FtransactionId := Astring;
  FtransactionId_Specified := True;
end;

function validateCfdiWrapper2.transactionId_Specified(Index: Integer): boolean;
begin
  Result := FtransactionId_Specified;
end;

destructor cfdiCancelWrapper2.Destroy;
begin
  System.SysUtils.FreeAndNil(FcancelationDate);
  inherited Destroy;
end;

procedure cfdiCancelWrapper2.SetsignatureValue(Index: Integer; const Astring: string);
begin
  FsignatureValue := Astring;
  FsignatureValue_Specified := True;
end;

function cfdiCancelWrapper2.signatureValue_Specified(Index: Integer): boolean;
begin
  Result := FsignatureValue_Specified;
end;

procedure cfdiCancelWrapper2.Setcertificate(Index: Integer; const Astring: string);
begin
  Fcertificate := Astring;
  Fcertificate_Specified := True;
end;

function cfdiCancelWrapper2.certificate_Specified(Index: Integer): boolean;
begin
  Result := Fcertificate_Specified;
end;

procedure cfdiCancelWrapper2.SettransactionId(Index: Integer; const Astring: string);
begin
  FtransactionId := Astring;
  FtransactionId_Specified := True;
end;

function cfdiCancelWrapper2.transactionId_Specified(Index: Integer): boolean;
begin
  Result := FtransactionId_Specified;
end;

procedure CfdiCancelResult.Setreceipt(Index: Integer; const Astring: string);
begin
  Freceipt := Astring;
  Freceipt_Specified := True;
end;

function CfdiCancelResult.receipt_Specified(Index: Integer): boolean;
begin
  Result := Freceipt_Specified;
end;

destructor OperationFailed.Destroy;
begin
  System.SysUtils.FreeAndNil(FrequestDate);
  System.SysUtils.FreeAndNil(FresponseDate);
  inherited Destroy;
end;

procedure OperationFailed.SeterrorDescription(Index: Integer; const Astring: string);
begin
  FerrorDescription := Astring;
  FerrorDescription_Specified := True;
end;

function OperationFailed.errorDescription_Specified(Index: Integer): boolean;
begin
  Result := FerrorDescription_Specified;
end;

procedure OperationFailed.SettransactionId(Index: Integer; const Astring: string);
begin
  FtransactionId := Astring;
  FtransactionId_Specified := True;
end;

function OperationFailed.transactionId_Specified(Index: Integer): boolean;
begin
  Result := FtransactionId_Specified;
end;

procedure OperationFailed.SetserverTransactionId(Index: Integer; const Astring: string);
begin
  FserverTransactionId := Astring;
  FserverTransactionId_Specified := True;
end;

function OperationFailed.serverTransactionId_Specified(Index: Integer): boolean;
begin
  Result := FserverTransactionId_Specified;
end;

procedure OperationFailed.SetrequestDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FrequestDate := ATXSDateTime;
  FrequestDate_Specified := True;
end;

function OperationFailed.requestDate_Specified(Index: Integer): boolean;
begin
  Result := FrequestDate_Specified;
end;

procedure OperationFailed.SetresponseDate(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FresponseDate := ATXSDateTime;
  FresponseDate_Specified := True;
end;

function OperationFailed.responseDate_Specified(Index: Integer): boolean;
begin
  Result := FresponseDate_Specified;
end;

procedure cfdiSignWrapper2.SettransactionId(Index: Integer; const Astring: string);
begin
  FtransactionId := Astring;
  FtransactionId_Specified := True;
end;

function cfdiSignWrapper2.transactionId_Specified(Index: Integer): boolean;
begin
  Result := FtransactionId_Specified;
end;

procedure CfdiSignResult.SetsignedXml(Index: Integer; const Astring: string);
begin
  FsignedXml := Astring;
  FsignedXml_Specified := True;
end;

function CfdiSignResult.signedXml_Specified(Index: Integer): boolean;
begin
  Result := FsignedXml_Specified;
end;

procedure CfdiSignResult.Setuuid(Index: Integer; const Astring: string);
begin
  Fuuid := Astring;
  Fuuid_Specified := True;
end;

function CfdiSignResult.uuid_Specified(Index: Integer): boolean;
begin
  Result := Fuuid_Specified;
end;

initialization
  { InsignaSOAPWS }
  InvRegistry.RegisterInterface(TypeInfo(InsignaSOAPWS), 'http://ws.certipass.mx/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(InsignaSOAPWS), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(InsignaSOAPWS), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(InsignaSOAPWS), ioSOAP12);
  { InsignaSOAPWS.verifyOperation }
  InvRegistry.RegisterMethodInfo(TypeInfo(InsignaSOAPWS), 'verifyOperation', '',
                                 '[ReturnName="return"]', IS_OPTN);
  { InsignaSOAPWS.validateCfdi }
  InvRegistry.RegisterMethodInfo(TypeInfo(InsignaSOAPWS), 'validateCfdi', '',
                                 '[ReturnName="return"]', IS_OPTN);
  { InsignaSOAPWS.cancelCfdi }
  InvRegistry.RegisterMethodInfo(TypeInfo(InsignaSOAPWS), 'cancelCfdi', '',
                                 '[ReturnName="return"]', IS_OPTN);
  { InsignaSOAPWS.getCfdiInfo }
  InvRegistry.RegisterMethodInfo(TypeInfo(InsignaSOAPWS), 'getCfdiInfo', '',
                                 '[ReturnName="return"]', IS_OPTN);
  { InsignaSOAPWS.signCfdi }
  InvRegistry.RegisterMethodInfo(TypeInfo(InsignaSOAPWS), 'signCfdi', '',
                                 '[ReturnName="return"]', IS_OPTN);
  RemClassRegistry.RegisterXSClass(verifyOperationWrapper2, 'http://ws.certipass.mx/', 'verifyOperationWrapper2', 'verifyOperationWrapper');
  RemClassRegistry.RegisterXSClass(VerifyOperationWrapper, 'http://ws.certipass.mx/', 'verifyOperationWrapper');
  RemClassRegistry.RegisterXSClass(operationFailed2, 'http://ws.certipass.mx/', 'operationFailed2', 'operationFailed');
  RemClassRegistry.RegisterXSClass(GenericResult, 'http://ws.certipass.mx/', 'genericResult');
  RemClassRegistry.RegisterXSClass(OperationVerifyResult, 'http://ws.certipass.mx/', 'operationVerifyResult');
  RemClassRegistry.RegisterXSClass(cfdiInfoWrapper2, 'http://ws.certipass.mx/', 'cfdiInfoWrapper2', 'cfdiInfoWrapper');
  RemClassRegistry.RegisterXSClass(CfdiInfoResult, 'http://ws.certipass.mx/', 'cfdiInfoResult');
  RemClassRegistry.RegisterXSClass(validateCfdiWrapper2, 'http://ws.certipass.mx/', 'validateCfdiWrapper2', 'validateCfdiWrapper');
  RemClassRegistry.RegisterXSClass(ValidateCfdiWrapper, 'http://ws.certipass.mx/', 'validateCfdiWrapper');
  RemClassRegistry.RegisterXSClass(cfdiCancelWrapper2, 'http://ws.certipass.mx/', 'cfdiCancelWrapper2', 'cfdiCancelWrapper');
  RemClassRegistry.RegisterXSClass(CfdiCancelResult, 'http://ws.certipass.mx/', 'cfdiCancelResult');
  RemClassRegistry.RegisterXSClass(CfdiValidateResult, 'http://ws.certipass.mx/', 'cfdiValidateResult');
  RemClassRegistry.RegisterXSClass(CfdiInfoWrapper, 'http://ws.certipass.mx/', 'cfdiInfoWrapper');
  RemClassRegistry.RegisterXSClass(OperationFailed, 'http://ws.certipass.mx/', 'operationFailed');
  RemClassRegistry.RegisterXSClass(cfdiSignWrapper2, 'http://ws.certipass.mx/', 'cfdiSignWrapper2', 'cfdiSignWrapper');
  RemClassRegistry.RegisterXSClass(CfdiSignWrapper, 'http://ws.certipass.mx/', 'cfdiSignWrapper');
  RemClassRegistry.RegisterXSClass(CfdiSignResult, 'http://ws.certipass.mx/', 'cfdiSignResult');
  RemClassRegistry.RegisterXSClass(CfdiCancelWrapper, 'http://ws.certipass.mx/', 'cfdiCancelWrapper');

end.