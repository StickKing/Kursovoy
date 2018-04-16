unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    beg: TButton;
    Button5: TButton;
    ans: TCheckGroup;
    cont: TButton;
    cl: TButton;
    Button4: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Memo1: TMemo;
    ans1: TRadioGroup;
    teory: TGroupBox;
    test: TGroupBox;
    menu_: TGroupBox;
    test1: TGroupBox;
    test2: TGroupBox;
    test3: TGroupBox;
    test4: TGroupBox;
    test5: TGroupBox;
    test6: TGroupBox;
    test7: TGroupBox;
    test8: TGroupBox;
    procedure begClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure clClick(Sender: TObject);
    procedure contClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  levels:string;
  save_file:TextFile;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.begClick(Sender: TObject);
begin

  levels:= '1';
  Memo1.Text:='Что такое логические переменные ?' + #13#10;
  Memo1.Text:= Memo1.Text + 'Логические переменные - это переменная, которая может принимать два значения: "истина" или "ложь" ';
  Memo1.Text:= Memo1.Text + #13#10 + #13#10 + 'Истина принимает значение 1, Ложь является 0 ' + #13#10 + #13#10 + 'Логические переменные изображают в виде латинских букв(A,B,C,D и т.д.).'

end;

procedure TForm1.Button4Click(Sender: TObject);
begin


  case levels of
  '1': test.Enabled:=true;
  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin

  if ans.Items[0] = true and ans.Items[3] = true then ShowMessage('Lol')

end;

procedure TForm1.clClick(Sender: TObject);
begin

  //Закрытие программы

    {if levels <> '0' then
    begin

      try

         if not FileExists('C:\levels.txt') then
         begin

           AssignFile(save_file, 'C:\levels.txt');
           Rewrite(save_file);


         end


         else Append(save_file);


         writeln(save_file,levels);

      finally
             CloseFile(save_file);
      end;


    end;


  Form1.Close; }

end;

procedure TForm1.contClick(Sender: TObject);
begin

  if not FileExists('levels.txt') then ShowMessage('Файл сохранения отсутствует')

  else
  begin

       AssignFile(save_file, 'levels.txt');
       try
          Reset(save_file);

          while not Eof(save_file) do
       begin

            levels:='0';
            Readln(save_file, levels);

       end;
       finally

              CloseFile(save_file);

       end;

  end;

end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

  //Закрытие программы
  {if FileExists('C:\Program Files\levels.txt') then
  begin

    if levels <> '0' then
    begin

      AssignFile(save_file, 'C:\Program Files\levels.txt');

      try

         if not FileExists('C:\Program Files\levels.txt') then Rewrite(save_file)
         else Append(save_file);
         writeln(save_file,levels);

      finally
             CloseFile(save_file);
      end;


    end;

    end;

  Form1.Close; }



end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.FormShow(Sender: TObject);
begin

  levels:= '0';

end;

end.

