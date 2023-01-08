{ 
* ********************************************** 
*  بِسْــــــــــــــــــمِ اﷲِالرَّحْمَنِ اارَّحِيم       *
* This File Created By CodesTube               * 
* Lazarus - FPCUPdeluxe - Android              *
* Minggu Wage, 08 Januari 2023 04.42.38
* ********************************************** 
}
unit ufrmPO;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Buttons, DateTimePicker;

type

  { TFrmPO }

  TFrmPO = class(TForm)
    BtnSave: TBitBtn;
    btnNew: TBitBtn;
    ekasir: TEdit;
    etanggal: TDateTimePicker;
    enopo: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    procedure btnNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  FrmPO: TFrmPO;
  no:integer;
  nopo:string;
implementation

{$R *.lfm}

{ TFrmPO }

procedure TFrmPO.btnNewClick(Sender: TObject);
var
  s:string;
begin
  //PO5012023-0001
  //PO+ekasir+bulan+tahun+"-"+autonumber/incremant
  if no=0 then
  begin
    s:='PO'+ekasir.Text+formatdatetime('mmyyyy',now())+'-'+'0001';
    nopo:=s;
    no:=no+1;
  end
  else
  begin
     //PO5012023-0001
     //1234567890
     s:=enopo.Text;
     s:=copy(s,11,4);
     no:=strtoint(s)+1;
     s:='0000'+trim(inttostr(no)); //00002
     s:=copy(s,length(s)-3,4);
     s:='PO'+ekasir.Text+formatdatetime('mmyyyy',now())+'-'+s;
    // showmessage(s);
     nopo:=s;
  end;

  enopo.text:=nopo;
  etanggal.Date:=now();

end;

procedure TFrmPO.FormShow(Sender: TObject);
begin
  no:=0;
end;

end.

