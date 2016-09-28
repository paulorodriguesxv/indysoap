unit ClientForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IdBaseComponent, IdComponent, IdSoapComponent, IdSoapITIProvider,
  IdSoapClient, IdSoapClientWinInet, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    IdSoapClientWinInet1: TIdSoapClientWinInet;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Splitter2: TSplitter;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    eISBN: TEdit;
    Button1: TButton;
    mDetails: TMemo;
    mSent: TMemo;
    mRecvd: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure IdSoapClientWinInet1SendMessage(ASender: TObject;
      AMessage: TStream);
    procedure IdSoapClientWinInet1ReceiveMessage(ASender: TObject;
      AMessage: TStream);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

uses
  IdSoapUtilities,
  LookyBook;

const crlf = #13#10;
  
procedure TForm1.Button1Click(Sender: TObject);
var
  LIntf : ILookyBook;
  LInfo : TbookInfo;
  i : integer;
  s : string;
begin
  LIntf := GetILookyBook(IdSoapClientWinInet1);
  LInfo := LIntf.GetInfo(eISBN.text);
  if assigned(LInfo) then
    begin
    try
      s :=
        'isbn: '+LInfo.isbn+crlf+
        'title: '+LInfo.title+crlf+
        'author: '+LInfo.author+crlf+
        'pubdate: '+LInfo.pubdate+crlf+
        'publisher: '+LInfo.publisher+crlf+
        'imgUrl: '+LInfo.imgUrl+crlf+
        'timestamp: '+LInfo.timestamp+crlf;
      for i := Low(LInfo.vendorprice) to High(LInfo.vendorprice) do
        begin
        s := s + '  '+LInfo.vendorprice[i].name+': '+LInfo.vendorprice[i].pricePrefix+Linfo.vendorprice[i].price+crlf;
        end;
      mDetails.text := s;
    finally
      FreeAndNil(LInfo);
    end;
    end
  else
    begin
    showmessage('no book found');
    end;
end;

procedure TForm1.IdSoapClientWinInet1SendMessage(ASender: TObject; AMessage: TStream);
var
  s : string;
begin
  SetLength(s, AMessage.Size);
  AMessage.Read(s[1], AMessage.Size);
  mSent.text := IdSoapMakeXmlPretty(s);
end;

procedure TForm1.IdSoapClientWinInet1ReceiveMessage(ASender: TObject;  AMessage: TStream);
var
  s : string;
begin
  SetLength(s, AMessage.Size);
  AMessage.Read(s[1], AMessage.Size);
  mRecvd.text := IdSoapMakeXmlPretty(s);
end;

end.
