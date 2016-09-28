Unit LRIService-service;

{---------------------------------------------------------------------------
This file generated by the IndySoap WSDL -> Pascal translator

Source:   file://WsdlSamples\LRIService-service.wsdl
Date:     1/11/2002 08:46:42
IndySoap: V0.05
---------------------------------------------------------------------------}

Interface

Uses
  Classes,
  IdSoapClient,
  IdSoapTypeRegistry;

Type

  AttributeValue = class;
  CommonUserData = class;

  ArrayOfAttributeValue = array of AttributeValue;
  ArrayOfString = array of String;

  AttributeValue = class (TIdBaseSoapableClass)
  Private
    FsoftwareVersion : String;
    FdataVersion : String;
    FlastAccessDate : String;
    FshortDescr5 : String;
    FshortDescr4 : String;
    FshortDescr3 : String;
    FshortDescr2 : String;
    FshortDescr1 : String;
    FcreatedDate : String;
  Published
    property softwareVersion : String read FsoftwareVersion write FsoftwareVersion;
    property dataVersion : String read FdataVersion write FdataVersion;
    property lastAccessDate : String read FlastAccessDate write FlastAccessDate;
    property shortDescr5 : String read FshortDescr5 write FshortDescr5;
    property shortDescr4 : String read FshortDescr4 write FshortDescr4;
    property shortDescr3 : String read FshortDescr3 write FshortDescr3;
    property shortDescr2 : String read FshortDescr2 write FshortDescr2;
    property shortDescr1 : String read FshortDescr1 write FshortDescr1;
    property createdDate : String read FcreatedDate write FcreatedDate;
  end;

  CommonUserData = class (TIdBaseSoapableClass)
  Private
    FhomepageURL : String;
    FstatisticalArea : String;
    Fprofession : String;
    FcontactOrBuyer : Integer;
    FpoBoxCity : String;
    Fphone : String;
    Ffax : String;
    Fcity : String;
    Fsalutation : String;
    FlastName : String;
    FcountrySpecific : String;
    FuserCategory : String;
    Femail : String;
    FpreferredLanguage : String;
    Fstreet : String;
    FcompanyName : String;
    FpoBoxNo : String;
    FmaritalStatus : Integer;
    Ftitle : String;
    FuserSubCategory : String;
    Fmobile : String;
    Fcomment : String;
    FpreferredContactMethod : Integer;
    FcityOfBirth : String;
    FmiddleName : String;
    FvalidAddress : Integer;
    FcountryCode : String;
    FfirstName : String;
    Fcountry : String;
    FallowMarketingFlag : Integer;
    FzipCode : String;
    FstateOfBirth : String;
    FdateOfBirth : String;
    FpoBoxZipCode : String;
    Fgender : Integer;
    FcountryOfBirth : String;
    FstreetNumber : String;
    FstoreAgreementFlag : Integer;
    Fstate : String;
  Published
    property homepageURL : String read FhomepageURL write FhomepageURL;
    property statisticalArea : String read FstatisticalArea write FstatisticalArea;
    property profession : String read Fprofession write Fprofession;
    property contactOrBuyer : Integer read FcontactOrBuyer write FcontactOrBuyer;
    property poBoxCity : String read FpoBoxCity write FpoBoxCity;
    property phone : String read Fphone write Fphone;
    property fax : String read Ffax write Ffax;
    property city : String read Fcity write Fcity;
    property salutation : String read Fsalutation write Fsalutation;
    property lastName : String read FlastName write FlastName;
    property countrySpecific : String read FcountrySpecific write FcountrySpecific;
    property userCategory : String read FuserCategory write FuserCategory;
    property email : String read Femail write Femail;
    property preferredLanguage : String read FpreferredLanguage write FpreferredLanguage;
    property street : String read Fstreet write Fstreet;
    property companyName : String read FcompanyName write FcompanyName;
    property poBoxNo : String read FpoBoxNo write FpoBoxNo;
    property maritalStatus : Integer read FmaritalStatus write FmaritalStatus;
    property title : String read Ftitle write Ftitle;
    property userSubCategory : String read FuserSubCategory write FuserSubCategory;
    property mobile : String read Fmobile write Fmobile;
    property comment : String read Fcomment write Fcomment;
    property preferredContactMethod : Integer read FpreferredContactMethod write FpreferredContactMethod;
    property cityOfBirth : String read FcityOfBirth write FcityOfBirth;
    property middleName : String read FmiddleName write FmiddleName;
    property validAddress : Integer read FvalidAddress write FvalidAddress;
    property countryCode : String read FcountryCode write FcountryCode;
    property firstName : String read FfirstName write FfirstName;
    property country : String read Fcountry write Fcountry;
    property allowMarketingFlag : Integer read FallowMarketingFlag write FallowMarketingFlag;
    property zipCode : String read FzipCode write FzipCode;
    property stateOfBirth : String read FstateOfBirth write FstateOfBirth;
    property dateOfBirth : String read FdateOfBirth write FdateOfBirth;
    property poBoxZipCode : String read FpoBoxZipCode write FpoBoxZipCode;
    property gender : Integer read Fgender write Fgender;
    property countryOfBirth : String read FcountryOfBirth write FcountryOfBirth;
    property streetNumber : String read FstreetNumber write FstreetNumber;
    property storeAgreementFlag : Integer read FstoreAgreementFlag write FstoreAgreementFlag;
    property state : String read Fstate write Fstate;
  end;


  {Soap Address for this Interface: http://www.is.danet.de/LRInterimWeb/servlet/rpcrouter}
  ILRIServiceService = Interface (IIdSoapInterface) ['{C36A2F68-0E95-4FF0-92BE-4F8A71E7AE03}']
       {!Namespace: http://www.is.danet.de/LRIService;
         Name: type_ = type;
         Type: ArrayOfAttributeValue = in http://www.lriservice.com/schemas/LRIServiceRemoteInterface;
         Type: ArrayOfString = in http://www.lriservice.com/schemas/LRIServiceRemoteInterface;
         Type: AttributeValue = in http://www.lriservice.com/schemas/LRIServiceRemoteInterface;
         Type: CommonUserData = in http://www.lriservice.com/schemas/LRIServiceRemoteInterface}
    function  getSpecificUserDataBlob(userName : String; accountCountryCode : String; applicationId : String; type_ : String; name : String) : TStream; stdcall;
    procedure deleteAllSpecificUserDataForApplication(userName : String; accountCountryCode : String; applicationId : String); stdcall;
    procedure registerUser(userName : String; passwd : String; userData : CommonUserData; accountCountryCode : String; applicationId : String); stdcall;
    procedure authenticateUser(userName : String; passwd : String; accountCountryCode : String; anApplicationId : String); stdcall;
    function  getSpecificUserData(userName : String; accountCountryCode : String; applicationId : String; type_ : String; name : String) : AttributeValue; stdcall;
    procedure updateCommonUserData(userName : String; userData : CommonUserData; accountCountryCode : String; applicationId : String); stdcall;
    procedure expireUser(userName : String; accountCountryCode : String); stdcall;
    function  getDistinctAttributeNames(userName : String; accountCountryCode : String; applicationId : String; objektType : String) : ArrayOfString; stdcall;
    function  getAllSpecificUserDataOfTypeOrderByName(userName : String; accountCountryCode : String; applicationId : String; objectType : String) : ArrayOfAttributeValue; stdcall;
    procedure addSpecificUserData(userName : String; accountCountryCode : String; applicationId : String; type_ : String; name : String; dataVersion : String; softwareVersion : String; shortDescr1 : String; shortDescr2 : String; shortDescr3 : String; shortDescr4 : String; shortDescr5 : String; blob : TStream); stdcall;
    function  getAttributeCount(userName : String; accountCountryCode : String; applicationId : String; objektType : String) : Integer; stdcall;
    procedure logoutUser(userName : String; accountCountryCode : String); stdcall;
    procedure forgottenPasswdUsingTempPasswd(userName : String; accountCountryCode : String); stdcall;
    procedure updatePasswd(userName : String; accountCountryCode : String; newPasswd : String); stdcall;
    procedure deleteSpecificUserData(userName : String; accountCountryCode : String; applicationId : String; type_ : String; name : String); stdcall;
    procedure deleteAllSpecificUserData(userName : String; accountCountryCode : String); stdcall;
    procedure deleteUser(userName : String; accountCountryCode : String); stdcall;
    function  getAllSpecificUserDataOfTypeOrderByDate(userName : String; accountCountryCode : String; applicationId : String; objectType : String) : ArrayOfAttributeValue; stdcall;
    procedure updateNameOfSpecificAttribute(userName : String; accountCountryCode : String; applicationId : String; type_ : String; oldAttributeName : String; newAttributeName : String); stdcall;
    function  getCommonUserData(userName : String; accountCountryCode : String) : CommonUserData; stdcall;
  end;

function GetILRIServiceService(AClient : TIdSoapBaseSender) : ILRIServiceService;

Implementation

uses
  IdSoapRTTIHelpers,
  IdSoapUtilities,
  SysUtils;




function GetILRIServiceService(AClient : TIdSoapBaseSender) : ILRIServiceService;
begin
  result := IdSoapD4Interface(AClient) as ILRIServiceService;
end;

Initialization
  IdSoapRegisterType(TypeInfo(ArrayOfAttributeValue), '', TypeInfo(AttributeValue));
  IdSoapRegisterType(TypeInfo(ArrayOfString), '', TypeInfo(String));
  IdSoapRegisterType(TypeInfo(AttributeValue));
  IdSoapRegisterType(TypeInfo(CommonUserData));
End.
