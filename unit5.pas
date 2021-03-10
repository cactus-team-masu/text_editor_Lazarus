unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, StrUtils;

type

  { TForm5 }

  TForm5 = class(TForm)
    Cancel: TButton;
    Find_Next: TButton;
    Label1: TLabel;
    Register: TCheckBox;
    Replace_What: TEdit;
    procedure CancelClick(Sender: TObject);
    procedure Find_NextClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;

implementation

uses Unit1;

{$R *.lfm}

{ TForm5 }

procedure TForm5.Label1Click(Sender: TObject);
begin

end;

procedure TForm5.Find_NextClick(Sender: TObject);
var sStart, sEnd : integer;
  begin
    if Register.Checked = True Then
       begin
            sStart:=PosEx(Replace_What.Text, Unit1.Form1.SynEdit1.Text, Unit1.Form1.SynEdit1.SelEnd);
            sEnd:= sStart+ Length(Replace_What.Text);
       end
    else
        begin
            sStart:=PosEx(AnsiLowerCase(Replace_What.Text), AnsiLowerCase(Unit1.Form1.SynEdit1.Text), Unit1.Form1.SynEdit1.SelEnd);
            sEnd:= sStart+ Length(Replace_What.Text);
        end;
    if  sStart = 0 then
        ShowMessage('Не удается найти "' + Replace_What.Text + '".')
    else
        begin
           Unit1.Form1.SynEdit1.SelStart:=sStart;
           Unit1.Form1.SynEdit1.SelEnd :=sEnd;
        end;
  end;

procedure TForm5.CancelClick(Sender: TObject);
begin
   form5.close;
end;

end.

