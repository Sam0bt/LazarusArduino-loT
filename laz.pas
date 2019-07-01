unit laz;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  LazSerial;

type

  { TForm1 }

  TForm1 = class(TForm)
    aktif: TButton;
    Label1: TLabel;
    pasif: TButton;
    ayar: TButton;
    LazSerial1: TLazSerial;
    procedure aktifClick(Sender: TObject);
    procedure ayarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure pasifClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.pasifClick(Sender: TObject);
var str:String;
begin
  LazSerial1.WriteData('1');

end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
   if LazSerial1.Active then
    LazSerial1.Active := false ;
    Application.Terminate;
end;

procedure TForm1.aktifClick(Sender: TObject);
var Str : string;
begin
  LazSerial1.WriteData('0');
end;

procedure TForm1.ayarClick(Sender: TObject);
begin
  LazSerial1.ShowSetupDialog;
  LazSerial1.Open;
end;

end.

