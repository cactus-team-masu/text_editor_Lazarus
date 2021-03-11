unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  ComCtrls, ExtCtrls, SynEdit, SynHighlighterPas, SynHighlighterCpp,
  SynHighlighterPython, SynHighlighterAny,LCLTranslator;

type

  { TForm1 }

  TForm1 = class(TForm)
    FontDialog1: TFontDialog;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Menu_3_4_1_ru: TMenuItem;
    Menu_lang_3_4_2_en: TMenuItem;
    Menu_3_4_Lang: TMenuItem;
    Menu_3_3_4_none: TMenuItem;
    Menu_3_3_3_py: TMenuItem;
    Menu_3_3_2_cpp: TMenuItem;
    Menu_3_3_1_pas: TMenuItem;
    Menu_3_3_synEdit: TMenuItem;
    Menu_2_3_copy: TMenuItem;
    Menu_2_2_cut: TMenuItem;
    Menu_2_1_select_all: TMenuItem;
    Menu_2_4_paste: TMenuItem;
    Menu_2_edit: TMenuItem;
    Menu_1_6_exit: TMenuItem;
    Menu_1_5_save_as: TMenuItem;
    Menu_1_2_open: TMenuItem;
    Menu_1_3_close: TMenuItem;
    Menu_1_4_save: TMenuItem;
    Menu_1_file: TMenuItem;
    Menu_1_1_new: TMenuItem;
    Menu_3_: TMenuItem;
    Menu_3_1_font: TMenuItem;
    Menu_3_2_theme: TMenuItem;
    Menu_4_1_find: TMenuItem;
    Menu_4_2_replace: TMenuItem;
    Menu_4_search: TMenuItem;
    Menu_5_1_help: TMenuItem;
    Menu_5_2_about: TMenuItem;
    Menu_5_help: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    StatusBar1: TStatusBar;
    SynAnySyn1: TSynAnySyn;
    SynCppSyn1: TSynCppSyn;
    SynEdit1: TSynEdit;
    SynPasSyn1: TSynPasSyn;
    SynPythonSyn1: TSynPythonSyn;
    Timer1: TTimer;
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
  //  procedure MenuItem4Click(Sender: TObject);
    procedure Menu_1_1_newClick(Sender: TObject);
    procedure Menu_1_2_openClick(Sender: TObject);
    procedure Menu_1_3_closeClick(Sender: TObject);
    procedure Menu_1_4_saveClick(Sender: TObject);
    procedure Menu_1_5_save_asClick(Sender: TObject);
    procedure Menu_1_6_exitClick(Sender: TObject);
    procedure Menu_2_1_select_allClick(Sender: TObject);
    procedure Menu_2_2_cutClick(Sender: TObject);
    procedure Menu_2_3_copyClick(Sender: TObject);
    procedure Menu_2_4_pasteClick(Sender: TObject);
    procedure Menu_3_1_fontClick(Sender: TObject);
    procedure Menu_3_2_themeClick(Sender: TObject);
    procedure Menu_3_3_1_pasClick(Sender: TObject);
    procedure Menu_3_3_2_cppClick(Sender: TObject);
    procedure Menu_3_3_3_pyClick(Sender: TObject);
    procedure Menu_3_3_4_noneClick(Sender: TObject);
    procedure Menu_3_4_1_ruClick(Sender: TObject);
    procedure Menu_3_4_LangClick(Sender: TObject);
    procedure Menu_4_1_findClick(Sender: TObject);
    procedure Menu_4_searchClick(Sender: TObject);
    procedure Menu_5_1_helpClick(Sender: TObject);
    procedure Menu_5_2_aboutClick(Sender: TObject);
    procedure Menu_lang_3_4_2_enClick(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure SynEdit1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  CurrentFile: String;

implementation
uses Unit2,Unit3;
{$R *.lfm}

{ TForm1 }

procedure SaveAs;
begin
 If Form1.SaveDialog1.Execute then
 begin
 Form1.SynEdit1.Lines.SaveToFile(Form1.SaveDialog1.FileName);
 CurrentFile := Form1.SaveDialog1.FileName;
 end;
end;

//Светлая
procedure TForm1.MenuItem1Click(Sender: TObject);
begin
 SynEdit1.Color:= clWhite;
 SynEdit1.RightEdgeColor:=clMedGray;
 SynEdit1.SelectedColor.Background:=clAqua;
 SynEdit1.Font.Color:=clBlack;
 SynEdit1.Gutter.Color:=clWhite;
 Synedit1.Gutter.Parts[3].MarkupInfo.Background:=clWhite;
 Synedit1.Gutter.Parts[3].MarkupInfo.Foreground:=clMedGray;
 Synedit1.Gutter.Parts[1].MarkupInfo.Background:=clWhite;

end;
//Темная
procedure TForm1.MenuItem2Click(Sender: TObject);
begin
 SynEdit1.Color:= clBlack;
 SynEdit1.Gutter.Color:=clBlack;
 SynEdit1.RightEdgeColor:=clMedGray;
 SynEdit1.Font.Color:=clWhite;
 SynEdit1.SelectedColor.Background:=clMoneyGreen;
 Synedit1.Gutter.Parts[3].MarkupInfo.Background:=clBlack;
 Synedit1.Gutter.Parts[3].MarkupInfo.Foreground:=clMedGray;
 Synedit1.Gutter.Parts[1].MarkupInfo.Background:=clBlack;
 //StatusBar1.Panels[0].;
end;

//Цветная
procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  SynEdit1.Color:= clSkyBlue;
  SynEdit1.Font.Color:=clBlack;
  SynEdit1.Gutter.Color:=clHighlight;
  Synedit1.Gutter.Parts[3].MarkupInfo.Background:=clHighlight;
  Synedit1.Gutter.Parts[3].MarkupInfo.Foreground:=clBlack;
  Synedit1.Gutter.Parts[1].MarkupInfo.Background:=clHighlight;
  SynEdit1.RightEdgeColor:=clHighlight;
  SynEdit1.SelectedColor.Background:=clWhite;
end;


procedure TForm1.Menu_1_1_newClick(Sender: TObject);
begin
 CurrentFile := '';
 SynEdit1.Clear;
end;

procedure TForm1.Menu_1_2_openClick(Sender: TObject);
begin
 if OpenDialog1.Execute then
  begin
   SynEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
   CurrentFile := OpenDialog1.FileName;
  end;
end;

procedure TForm1.Menu_1_3_closeClick(Sender: TObject);
begin
 If CurrentFile='' then SaveAs else SynEdit1.Lines.SaveToFile(CurrentFile);
 CurrentFile := '';
 SynEdit1.Clear;
end;

procedure TForm1.Menu_1_4_saveClick(Sender: TObject);
begin
 If CurrentFile='' then SaveAs else SynEdit1.Lines.SaveToFile(CurrentFile);
end;

procedure TForm1.Menu_1_5_save_asClick(Sender: TObject);
begin
 SaveAs;
end;

procedure TForm1.Menu_1_6_exitClick(Sender: TObject);
begin
 Close;
end;

procedure TForm1.Menu_2_1_select_allClick(Sender: TObject);
begin
  SynEdit1.SelectAll;
end;

procedure TForm1.Menu_2_2_cutClick(Sender: TObject);
begin
 SynEdit1.CutToClipboard;
end;

procedure TForm1.Menu_2_3_copyClick(Sender: TObject);
begin
 SynEdit1.CopyToClipboard;
end;

procedure TForm1.Menu_2_4_pasteClick(Sender: TObject);
begin
 SynEdit1.PasteFromClipboard;
end;

procedure TForm1.Menu_3_1_fontClick(Sender: TObject);
begin
 if FontDialog1.Execute then
 SynEdit1.Font:=FontDialog1.Font;
end;

procedure TForm1.Menu_3_2_themeClick(Sender: TObject);
begin

end;

procedure TForm1.Menu_3_3_1_pasClick(Sender: TObject);
begin
 SynEdit1.Highlighter := SynPasSyn1;
end;

procedure TForm1.Menu_3_3_2_cppClick(Sender: TObject);
begin
 SynEdit1.Highlighter := SynCppSyn1;
end;

procedure TForm1.Menu_3_3_3_pyClick(Sender: TObject);
begin
 SynEdit1.Highlighter := SynPythonSyn1;
end;

procedure TForm1.Menu_3_3_4_noneClick(Sender: TObject);
begin
  SynEdit1.Highlighter := SynAnySyn1;
end;

procedure TForm1.Menu_3_4_1_ruClick(Sender: TObject);
begin
 SetDefaultLang('ru','languages');
end;

procedure TForm1.Menu_3_4_LangClick(Sender: TObject);
begin

end;

procedure TForm1.Menu_4_1_findClick(Sender: TObject);
begin

end;

procedure TForm1.Menu_4_searchClick(Sender: TObject);
begin

end;

procedure TForm1.Menu_5_1_helpClick(Sender: TObject);
begin
 Unit3.Form3.Show;
end;

procedure TForm1.Menu_5_2_aboutClick(Sender: TObject);
begin
 Unit2.Form2.Show;
end;

procedure TForm1.Menu_lang_3_4_2_enClick(Sender: TObject);
begin
 SetDefaultLang('en','languages');
end;


procedure TForm1.StatusBar1DrawPanel(StatusBar: TStatusBar;
Panel: TStatusPanel; const Rect: TRect);
begin
 StatusBar1.Canvas.Brush.Color := SynEdit1.Color;
 StatusBar1.Canvas.Brush.Style := bsSolid;
 StatusBar1.Canvas.FillRect(StatusBar.Canvas.ClipRect {Rect});
 StatusBar1.Canvas.Font.Color := SynEdit1.Font.Color;
 StatusBar1.Canvas.TextOut(Rect.Left+5, Rect.Top+5, Panel.Text);

end;



procedure TForm1.SynEdit1Change(Sender: TObject);
begin
 StatusBar1.Panels[1].Text := 'Номер текущей строки: ' + IntToStr(SynEdit1.CaretY);

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := DateTimeToStr(now);
  StatusBar1.Panels[2].Text:='Выпуск 1.1';
end;
end.

