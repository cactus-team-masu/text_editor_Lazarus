unit unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, StrUtils, LCLProc;

type

  { TForm4 }

  TForm4 = class(TForm)
    Replace: TButton;
    Replace_All: TButton;
    Cancel: TButton;
    Register: TCheckBox;
    Replace_What: TEdit;
    Replace_with_what: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure CancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure RegisterChange(Sender: TObject);
    procedure ReplaceClick(Sender: TObject);
    procedure Replace_AllClick(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation

uses Unit1;
{$R *.lfm}

{ TForm4 }

procedure TForm4.RegisterChange(Sender: TObject);
begin

end;

procedure TForm4.ReplaceClick(Sender: TObject);
begin
   if (POS(AnsiLowerCase(Replace_What.Text), AnsiLowerCase(Unit1.Form1.SynEdit1.Text)) = 0) or (POS(AnsiLowerCase(Replace_What.Text), AnsiLowerCase(Unit1.Form1.SynEdit1.Text)) = 0) then
     ShowMessage('Не удается найти "' + Replace_What.Text + '".')
   else
       begin
          if Register.Checked = True Then
             begin
                  Unit1.Form1.SynEdit1.Text:= StringReplace(Unit1.Form1.SynEdit1.Text, Replace_What.Text, Replace_with_what.Text, []);
                  Unit1.Form1.SynEdit1.SelStart:=POS(AnsiLowerCase(Replace_What.Text), AnsiLowerCase(Unit1.Form1.SynEdit1.Text));
             end
          else
              begin
                Unit1.Form1.SynEdit1.Text:= StringReplace(Unit1.Form1.SynEdit1.Text, Replace_What.Text, Replace_with_what.Text, [rfIgnoreCase]);
                Unit1.Form1.SynEdit1.SelStart:=POS(AnsiLowerCase(Replace_What.Text), AnsiLowerCase(Unit1.Form1.SynEdit1.Text));
              end;
      end;
end;

procedure TForm4.Replace_AllClick(Sender: TObject);
begin
   if Register.Checked = True Then
      begin
           Unit1.Form1.SynEdit1.Text:= StringReplace(Unit1.Form1.SynEdit1.Text, Replace_What.Text, Replace_with_what.Text, [rfReplaceAll]);
      end
   else
      begin
           Unit1.Form1.SynEdit1.Text:= StringReplace(Unit1.Form1.SynEdit1.Text, Replace_What.Text, Replace_with_what.Text, [rfReplaceAll, rfIgnoreCase]);
      end;
end;

procedure TForm4.CancelClick(Sender: TObject);
begin
  form4.close;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin

end;

procedure TForm4.Label1Click(Sender: TObject);
begin

end;

end.

