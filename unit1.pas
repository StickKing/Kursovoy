unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button9: TButton;
    tttttttans5: TRadioGroup;
    tttttttans4: TRadioGroup;
    tttttttans3: TRadioGroup;
    tttttttans2: TRadioGroup;
    tttttttans1: TRadioGroup;
    tttttttans: TRadioGroup;
    beg: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    ans: TCheckGroup;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    img2: TImage;
    img4: TImage;
    img6: TImage;
    ttttttans: TRadioGroup;
    tttttans: TRadioGroup;
    ttttans: TRadioGroup;
    tttans1: TRadioGroup;
    tttans: TCheckGroup;
    img1: TImage;
    ttans1: TCheckGroup;
    img0: TImage;
    ttans: TRadioGroup;
    t1ans1: TCheckGroup;
    t1ans2: TCheckGroup;
    Button4: TButton;
    Label1: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    ans1: TRadioGroup;
    t1ans: TRadioGroup;
    t1ans3: TRadioGroup;
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
    ttans2: TRadioGroup;
    ttans3: TRadioGroup;
    tttans2: TRadioGroup;
    tttans3: TRadioGroup;
    tttans4: TRadioGroup;
    tttans5: TRadioGroup;
    ttttans1: TRadioGroup;
    ttttans2: TRadioGroup;
    ttttans3: TRadioGroup;
    ttttans4: TRadioGroup;
    ttttans5: TRadioGroup;
    tttttans1: TRadioGroup;
    tttttans2: TRadioGroup;
    tttttans3: TRadioGroup;
    tttttans4: TRadioGroup;
    tttttans5: TRadioGroup;
    ttttttans1: TRadioGroup;
    ttttttans2: TRadioGroup;
    ttttttans3: TRadioGroup;
    ttttttans4: TRadioGroup;
    ttttttans5: TRadioGroup;
    tttttttans6: TRadioGroup;
    tttttttans7: TRadioGroup;
    tttttttans8: TRadioGroup;
    tttttttans9: TRadioGroup;
    procedure begClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure clClick(Sender: TObject);
    procedure contClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure img0Click(Sender: TObject);
    procedure img5Click(Sender: TObject);
    procedure test1Click(Sender: TObject);
    procedure ttttans5Click(Sender: TObject);
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


  //1
  levels:= '1';
  Memo1.Text:='Что такое логические переменные ?' + #13#10;
  Memo1.Text:= Memo1.Text + 'Логические переменные - это переменная, которая может принимать два значения: "истина" или "ложь" ';
  Memo1.Text:= Memo1.Text + #13#10 + #13#10 + 'Истина принимает значение 1, Ложь является 0 ' + #13#10 + #13#10 + 'Логические переменные изображают в виде латинских букв(A,B,C,D и т.д.).'

end;

procedure TForm1.Button1Click(Sender: TObject);
var value:boolean;
begin

  //3
  value:= false;

  if t1ans1.Checked[3]
  and t1ans1.Checked[5]
  and t1ans1.Checked[6]
  and not(t1ans1.Checked[0])
  and not(t1ans1.Checked[1])
  and not(t1ans1.Checked[2])
  and not(t1ans1.Checked[4])
  then value:= true;


  if t1ans2.Checked[1] and not(t1ans2.Checked[5])
  and not(t1ans2.Checked[0])
  and not(t1ans2.Checked[3])
  and not(t1ans2.Checked[2])
  and not(t1ans2.Checked[4])
  then value:= true
  else value:= false;

  if value and (t1ans.ItemIndex = 5) and (t1ans3.ItemIndex = 2) then
  begin

       ShowMessage('Тест решён успешно, переходит к следующему уровню, нажмите ОК для продолжения');
       test1.Visible := false;
       img0.Visible:=true;
       levels:= '3';
       teory.Visible:=true;
       Memo1.Clear;
       Memo1.Text:='Что такое логическое "НЕ" или инверсия?' + #13#10;
       Memo1.Text:= Memo1.Text + 'Инверсия - это логическая функция принимающая одну переменную и превращающая данную переменную в абсалютно противоположную, то есть то что было "Истиной" станет "Ложью" и на оборот';
       Memo1.Text:= Memo1.Text + #13#10 + #13#10 + 'Внизу вы можете видеть таблицу истинности для данной функции';

  end
  else
  begin

       test1.Visible:=false;
       ShowMessage('Увы, тест вы не прошли, почитайте теорию и попробуйте снова');
       teory.Visible:=true;

  end;



end;

procedure TForm1.Button2Click(Sender: TObject);
var value:boolean;
begin
  //4
  value:= false;

  if ttans1.Checked[1] and ttans1.Checked[3] and ttans1.Checked[4]
  and not(ttans1.Checked[0])
  and not(ttans1.Checked[2])
  then value:= true
  else value:= false;

  if value and (ttans.ItemIndex = 2) and (ttans2.ItemIndex = 1) and (ttans3.ItemIndex = 0) then
  begin

       ShowMessage('Тест решён успешно, переходит к следующему уровню, нажмите ОК для продолжения');
       test2.Visible := false;
       img1.Visible:=true;
       levels:= '4';
       teory.Visible:=true;
       Memo1.Clear;
       Memo1.Text:='Что такое логическое "И" или коньюнкция?' + #13#10;
       Memo1.Text:= Memo1.Text + 'Коньюнкция - это логическое выражение, которое является истинным тогда когда логические переменные входящие в него имеют значения "Истина".  ';
       Memo1.Text:= Memo1.Text + #13#10 + #13#10 + 'Внизу вы можете видеть таблицу истинности для данной функции';

  end
  else
  begin

       test2.Visible:=false;
       ShowMessage('Увы, тест вы не прошли, почитайте теорию и попробуйте снова');
       teory.Visible:=true;

  end;


end;

procedure TForm1.Button3Click(Sender: TObject);
var value:boolean;
begin

  value:= false;

  if tttans.Checked[0] and tttans.Checked[1] and tttans.Checked[2]
  then value:= true
  else value:= false;

  if value and (tttans1.ItemIndex = 1) and (tttans2.ItemIndex = 0) and (tttans3.ItemIndex = 0) and (tttans4.ItemIndex = 0) and (tttans5.ItemIndex = 1) then
  begin

       ShowMessage('Тест решён успешно, переходит к следующему уровню, нажмите ОК для продолжения');
       test3.Visible := false;
       img1.Visible:=false;
       img0.Visible:=false;
       img2.Visible:=true;
       levels:= '5';
       teory.Visible:=true;
       Memo1.Clear;
       Memo1.Text:='Что такое логическое "ИЛИ" или дезьюнкция?' + #13#10;
       Memo1.Text:= Memo1.Text + 'Дезьюнкция - это логическое выражение, которое является истинным тогда когда логические переменные входящие в него имеют значения "Истина".  ';
       Memo1.Text:= Memo1.Text + #13#10 + #13#10 + 'Внизу вы можете видеть таблицу истинности для данной функции';

  end
  else
  begin

       test3.Visible:=false;
       ShowMessage('Увы, тест вы не прошли, почитайте теорию и попробуйте снова');
       teory.Visible:=true;

  end;


end;

procedure TForm1.Button4Click(Sender: TObject);
begin

  case levels of
  '1':
    begin
         teory.Visible:=false;
         test.Visible:=true;
    end;
  '2':
    begin
         teory.Visible:=false;
         test1.Visible:=true;
    end;
  '3':
    begin
         teory.Visible:=false;
         test2.Visible:=true;
    end;
  '4':
    begin
         teory.Visible:=false;
         test3.Visible:=true;
    end;
  '5':
    begin
         teory.Visible:=false;
         test4.Visible:=true;
    end;
  '6':
    begin
         teory.Visible:=false;
         test5.Visible:=true;
    end;
  '7':
    begin
         teory.Visible:=false;
         test6.Visible:=true;
    end;
  '8':
    begin
         teory.Visible:=false;
         test7.Visible:=true;
    end;

  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
var value:boolean;
begin

  //2
  value:= false;

  if ans.Checked[0] and ans.Checked[3] and not(ans.Checked[1]) and not(ans.Checked[2])
  then value:= true;

  if value and (ans1.ItemIndex = 0) then
  begin

       ShowMessage('Тест решён успешно, переходит к следующему уровню');
       test.Visible := false;
       levels:= '2';
       teory.Visible:=true;
       Memo1.Clear;
       Memo1.Text:='Что такое логические функции?' + #13#10;
       Memo1.Text:= Memo1.Text + 'Логические функции - это функции которые могу принимать две логических переменных, производя с ними определённое действие по итогу которого мы получим ответ ввиде "истины" или "лжи" ';
       Memo1.Text:= Memo1.Text + #13#10 + #13#10 + 'В данной программе мы рассмотрим данные функции:' + #13#10 + #13#10 + 'Логическое отрицание(НЕ) - инверсия - обозначается как ! '
       + #13#10 + 'Логическое умножение(И) - коньюнкция - обозначается как & и ^ '
       + #13#10 + 'Логическое сложенеи(ИЛИ) - дезьюнкция - обозначается как v '
       + #13#10 + 'Импликация - обозначается как -> '

  end
  else
  begin

       test.Visible:=false;
       ShowMessage('Увы, тест вы не прошли, почитайте теорию и попробуйте снова');
       teory.Visible:=true;

  end;



end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  //6
  if (ttttans.ItemIndex = 2)
  and (ttttans1.ItemIndex = 0)
  and (ttttans2.ItemIndex = 1)
  and (ttttans3.ItemIndex = 1)
  and (ttttans4.ItemIndex = 0)
  and (ttttans5.ItemIndex = 0)
  then
  begin

       ShowMessage('Тест решён успешно, переходит к следующему уровню');
       test4.Visible := false;
       img4.Visible:=true;
       img2.Visible:=false;
       levels:= '6';
       teory.Visible:=true;
       Memo1.Clear;
       Memo1.Text:='Что такое импликация ?' + #13#10;
       Memo1.Text:= Memo1.Text + 'Импликация - это сложное логическое выражение, которое является ложным тогда и только тогда, когда условие(переменная лежащая по левую сторону) истинно, а следствие(переменная лежащая по правую сторону) ложно ';
       Memo1.Text:= Memo1.Text + #13#10 + #13#10 + 'Внизу вы можете видеть таблицу истинности для данной функции';

  end
  else
  begin

       test4.Visible:=false;
       ShowMessage('Увы, тест вы не прошли, почитайте теорию и попробуйте снова');
       teory.Visible:=true;

  end;



end;

procedure TForm1.Button7Click(Sender: TObject);
begin

  //7
  if (tttttans.ItemIndex = 0)
  and (tttttans1.ItemIndex = 1)
  and (tttttans2.ItemIndex = 1)
  and (tttttans3.ItemIndex = 0)
  and (tttttans4.ItemIndex = 1)
  and (tttttans5.ItemIndex = 0)
  then
  begin

       ShowMessage('Тест решён успешно, переходит к следующему уровню');
       test5.Visible := false;
       img4.Visible:=false;
       img6.Visible:=true;
       levels:= '7';
       teory.Visible:=true;
       Memo1.Clear;
       Memo1.Text:='Порядок действий' + #13#10;
       Memo1.Text:= Memo1.Text + 'Краткое описание того в каком порядке выполнять логические операции';
       Memo1.Text:= Memo1.Text + #13#10 + #13#10 + 'Внизу вы можете видеть картинку описывающую это';

  end
  else
  begin

       test5.Visible:=false;
       ShowMessage('Увы, тест вы не прошли, почитайте теорию и попробуйте снова');
       teory.Visible:=true;

  end;



end;

procedure TForm1.Button8Click(Sender: TObject);
begin

  //8
  if (ttttttans.ItemIndex = 0)
  and (ttttttans1.ItemIndex = 0)
  and (ttttttans2.ItemIndex = 0)
  and (ttttttans3.ItemIndex = 1)
  and (ttttttans4.ItemIndex = 1)
  and (ttttttans5.ItemIndex = 1)
  then
  begin

       ShowMessage('Тест решён успешно, переходит к следующему уровню');
       test6.Visible := false;
       img6.Visible:=false;
       levels:= '8';
       teory.Visible:=true;
       Memo1.Clear;
       Memo1.Text:='Теперь вы знаете все основные правила, осталось решить итоговый тест и обучение будет закончено, так что не теряя времени жмите кнопку "Перейти к тесту"';

  end
  else
  begin

       test6.Visible:=false;
       ShowMessage('Увы, тест вы не прошли, почитайте теорию и попробуйте снова');
       teory.Visible:=true;

  end;

end;

procedure TForm1.Button9Click(Sender: TObject);
begin

  //конец
  if (tttttttans.ItemIndex = 0)
  and (tttttttans1.ItemIndex = 5)
  and (tttttttans2.ItemIndex = 2)
  and (tttttttans3.ItemIndex = 2)
  and (tttttttans4.ItemIndex = 0)
  and (tttttttans5.ItemIndex = 1)
  and (tttttttans6.ItemIndex = 0)
  and (tttttttans7.ItemIndex = 1)
  and (tttttttans8.ItemIndex = 1)
  and (tttttttans9.ItemIndex = 1)
  then
  begin

       ShowMessage('Обучение завершено, можете для проверки знаний начать курс заного');
       test7.Visible := false;
       levels:= '0';
       teory.Visible:=true;
       Memo1.Clear;

  end
  else
  begin

       test7.Visible:=false;
       ShowMessage('Увы, тест вы не прошли, почитайте теорию и попробуйте снова');
       teory.Visible:=true;

  end;

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

  //Form1.WindowState:=wsMaximized;
  //Form1.BorderStyle:=bsNone;
  //Form1.Width:=Screen.Width;
  //Form1.height:=Screen.Height;
  //FormStyle := fsStayOnTop

end;

procedure TForm1.FormShow(Sender: TObject);
begin

  levels:= '0';

end;

procedure TForm1.img0Click(Sender: TObject);
begin

end;

procedure TForm1.img5Click(Sender: TObject);
begin

end;

procedure TForm1.test1Click(Sender: TObject);
begin

end;

procedure TForm1.ttttans5Click(Sender: TObject);
begin

end;


end.

