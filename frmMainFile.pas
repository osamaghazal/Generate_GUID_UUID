unit frmMainFile;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    editGUID: TEdit;
    editUUID: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    editwoBrackets: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  UID : TGUID;
  GUID : String;
  Result : HResult;
begin
  Result := CreateGUID(UID);

  if Result = S_OK then
  GUID := GUIDToString(UID);

  editGUID.Text := GUID;

  GUID := StringReplace(GUID, '{', '', [rfReplaceAll]);
  GUID := StringReplace(GUID, '}', '', [rfReplaceAll]);

  editwoBrackets.Text := GUID;
  editUUID.Text := LowerCase(GUID);
end;

end.
