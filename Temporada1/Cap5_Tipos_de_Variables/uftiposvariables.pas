unit uFTiposVariables;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  StdCtrls;

type

  { TFTiposVariables }

  TFTiposVariables = class(TForm)
    bCalcular: TButton;
    edNum1: TEdit;
    edNum2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    mCalcBasica: TMemo;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    tabCalculadora: TTabSheet;
    procedure realizarCalculo(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure paginaMenuPrincipalChange(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private

  public

  end;

var
  // Variables Globales
  FTiposVariables: TFTiposVariables;
  suma: Integer;
implementation

{$R *.lfm}

{ TFTiposVariables }

procedure TFTiposVariables.FormCreate(Sender: TObject);
begin

end;

procedure TFTiposVariables.realizarCalculo(Sender: TObject);
var
   // Variables Locales
  a, b, c: Integer;
begin
     //realizarCalculoVariablesEnteras - Camel Case
     a := StrToInt( edNum1.Text );
     b := StrToInt(edNum2.Text);

     mCalcBasica.Lines.Add('=============================');
     mCalcBasica.Lines.Add('                             ');
     // Realizar cálculos básicos
     c := a + b;
     mCalcBasica.Lines.add('Suma = ' + IntToStr(c));

     c := a - b;
     mCalcBasica.Lines.add('Diferencia = ' + IntToStr(c));

     c := a * b;
     mCalcBasica.Lines.add('Producto = ' + IntToStr(c));

     c := a div b;
     mCalcBasica.Lines.add('Cociente = ' + IntToStr(c));

     c := a mod b;
     mCalcBasica.Lines.add('Residuo = ' + IntToStr(c));

end;

procedure TFTiposVariables.PageControl1Change(Sender: TObject);
begin

end;

procedure TFTiposVariables.paginaMenuPrincipalChange(Sender: TObject);
begin

end;

procedure TFTiposVariables.Panel1Click(Sender: TObject);
begin

end;

procedure TFTiposVariables.Panel2Click(Sender: TObject);
begin

end;

end.

