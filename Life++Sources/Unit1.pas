unit Unit1;

interface

uses
  System, System.Drawing, System.Windows.Forms, timers, unit3,unit5,unit6;

type
  player = record
    
    c: System.Drawing.Color;
    s: string;
  end;

type
  cell = record
    s, p: integer;
  
  end;

type
  bul = array Of array Of cell;

type lifestep=procedure;
type
  Form1 = class(Form)
    
    
    procedure button5_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
    procedure Form1_Load(sender: Object; e: EventArgs);
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure panel1_Paint(sender: Object; e: PaintEventArgs);
    procedure textBox1_TextChanged(sender: Object; e: EventArgs);
    procedure textBox2_TextChanged(sender: Object; e: EventArgs);
    procedure button3_Click(sender: Object; e: EventArgs);
    procedure combobox1_KeyDown(sender: object; e: Keyeventargs);
  protected 
    procedure OnMouseClick(e: System.Windows.Forms.MouseEventArgs); override;
    procedure OnPaint(e: System.Windows.Forms.PaintEventArgs); override;
    procedure groupBox1_Enter(sender: Object; e: EventArgs);
    procedure label1_Click(sender: Object; e: EventArgs);
    procedure TopToolStripPanel_Click(sender: Object; e: EventArgs);
    procedure comboBox1_SelectedIndexChanged(sender: Object; e: EventArgs);
  private 
    timer1: timer;
    step:lifestep;
    procedure button4_Click(sender: Object; e: EventArgs);
    procedure button6_Click(sender: Object; e: EventArgs);
    procedure button7_Click(sender: Object; e: EventArgs);
    procedure button8_Click(sender: Object; e: EventArgs);

  {$region FormDesigner}
  private
    {$resource Unit1.Form1.resources}
    comboBox1: ComboBox;
    button1: Button;
    groupBox1: GroupBox;
    colorDialog1: ColorDialog;
    label3: &Label;
    label2: &Label;
    textBox2: TextBox;
    textBox1: TextBox;
    components: System.ComponentModel.IContainer;
    errorProvider1: ErrorProvider;
    errorProvider2: ErrorProvider;
    button3: Button;
    helpProvider1: HelpProvider;
    button4: Button;
    button5: Button;
    button6: Button;
    groupbox3: GroupBox;
    groupBox2: GroupBox;
    button8: Button;
    saveDialog1: SaveFileDialog;
    label1: &Label;
    button2: Button;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public 
    constructor(t: timer;s:lifestep);
    begin
      InitializeComponent;
      timer1 := t;
      step:=s;
    end;
  end;

const
  maxx = 50;
  minx = 10;
  maxy = 50;
  miny = 10;

var
  f: form1;
  a: bul;
  n, m, i, j, l, p, x, y, x1, y1, mx, my, curitem, w, h: integer;
  bb, bc: boolean;
  ccou: int64;
  e: point;
  bbr: system.Drawing.Brushes;
  arr: array of player;
  st:boolean;

var
  mouse: system.Windows.Forms.MouseEventArgs;
  currcol: system.Drawing.Color;
  currplayer: integer;
  bitmap1: bitmap;
help:form;
var
  pen1: pen;
  b: brushes;
  
  mode, bx, by: boolean;
  start, pause: system.Drawing.Bitmap;

implementation


function count(a: bul; x, y, xp, yp, xn, yn, xx, yy: integer): integer;
var
  c: integer;
begin
  c := 0;
  xp := x - 1;
  yp := y - 1;
  xn := x + 1;
  yn := y + 1;
  xp := (xp + xx) mod xx;
  yp := (yp + yy) mod yy;
  xn := (xn + xx) mod xx;
  yn := (yn + yy) mod yy;
  if (a[xp][(y + yy) mod yy].s = 3) Or (a[xp][(y + yy) mod yy].s = 2) Then c := c + 1;
  if (a[xn][(y + yy) mod yy].s = 3) Or (a[xn][(y + yy) mod yy].s = 2) Then c := c + 1;
  if (a[(x + xx) mod xx][yp].s = 3) Or (a[(x + xx) mod xx][yp].s = 2) Then c := c + 1;
  if (a[(x + xx) mod xx][yn].s = 3) Or (a[(x + xx) mod xx][yn].s = 2) Then c := c + 1;
  
  if (a[xp][yp].s = 3) Or (a[xp][yp].s = 2) Then c := c + 1;
  if (a[xn][yn].s = 3) Or (a[xn][yn].s = 2) Then c := c + 1;
  if (a[xn][yp].s = 3) Or (a[xn][yp].s = 2) Then c := c + 1;
  if (a[xp][yn].s = 3) Or (a[xp][yn].s = 2) Then c := c + 1;
  count := c;
end;

procedure form1.OnPaint(e: System.Windows.Forms.PaintEventArgs);
begin
  e.graphics.DrawImage(bitmap1, 0, 0);  
end;








procedure draw;
begin
  var gro := system.Drawing.Graphics.FromImage(bitmap1);
  var pena := new system.Drawing.Pen(system.Drawing.Color.Black);
  
  for var j := 0 To x - 1 Do
  
  begin
    for var i := 0 To y - 1 Do
    
    begin
      gro.FillRectangle(system.Drawing.SolidBrush.Create(arr[a[j][i].p].c), round(500 * j / x), round(500 * i / y), round(500 * j / x) + w, round(500 * i / y) + h);
      if (a[j][i].s = 1) Or (a[j][i].s = 2) or (a[j][i].s = 3) Then 
      begin
        gro.FillRectangle(system.Drawing.SolidBrush.Create(arr[a[j][i].p].c), round(500 * j / x), round(500 * i / y), round(500 * j / x) + w, round(500 * i / y) + h);
        gro.DrawRectangle(pena, round(500 * j / x), round(500 * i / y), round(500 * j / x) + w, round(500 * i / y) + h);
      end
            else 
      begin
        gro.fillrectangle(system.Drawing.Brushes.Silver, round(500 * j / x), round(500 * i / y), round(500 * j / x) + w, round(500 * i / y) + h);
        gro.DrawRectangle(pena, round(500 * j / x), round(500 * i / y), round(500 * j / x) + w, round(500 * i / y) + h);
      end;
      
    end;
  end;
  gro.DrawLine(pena, 499, 0, 499, 500);
  gro.DrawLine(pena, 0, 499, 500, 499);
  
end;

procedure Form1.button5_Click(sender: Object; e: EventArgs);
begin
  for var i := 0 to x - 1 do
    for var j := 0 to y - 1 do
    begin
      a[i][j].s := 0;
    end;
  draw;
  refresh;
end;

procedure form1.OnMouseClick(e: System.Windows.Forms.MouseEventArgs);
var
  gro: system.Drawing.Graphics;
var
  xx, yy: integer;
begin
  xx := e.X;
  yy := e.Y;
  if mode = false then 
  begin
    for var ii := 0 to x do
      for var jj := 0 to y do
      begin
        if (yy >= round(500 * jj / x)) and (xx >= round(500 * ii / y)) and (yy <= round(500 * jj / x) + h) and (xx <= round(500 * ii / y) + w) and (e.Button = system.Windows.Forms.MouseButtons.Left) and (a[ii][jj].s = 0) then 
        begin
          a[ii][jj].s := 2;
          a[ii][jj].p := currplayer;         
          bc := false;
        end;
        if (bc = true) and (yy >= round(500 * jj / x)) and (xx >= round(500 * ii / y)) and (yy <= round(500 * jj / x) + h) and (xx <= round(500 * ii / y) + w) and (e.Button = system.Windows.Forms.MouseButtons.Left) and ((a[ii][jj].s = 2) or (a[ii][jj].s = 1)) then 
        begin
          a[ii][jj].s := 0;
          // a[ii][jj].p.c:=system.Drawing.Color.Empty;
          // a[ii][jj].p.s:='';
        end;
      end;
    draw;
    var rc: rectangle;
    rc := new Rectangle(0, 0, 500, 500);
    self.invalidate(rc);
    bc := true;
    
  end;
  
  
end;

procedure onclick(e: eventargs);
begin
  
  
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
begin
  if mode = true then 
  begin
    button2.Image := start;
    timer1.stop;
    mode := false;
  end else begin
    button2.Image := pause;
    timer1.start;
    mode := true;
  end;
  pen1 := new Pen(system.Drawing.Color.Black);
end;

procedure Form1.Form1_Load(sender: Object; e: EventArgs);
begin
help:=unit3.Form1.create;
st:=false;
  //step := false;
  w := 50;
  h := 50;
  start := new system.Drawing.bitmap('Start.png');
  pause := new System.Drawing.Bitmap('pause.png');
  mode := false;
  pen1 := new Pen(system.Drawing.Color.Black);
  textbox1.Text := '10';
  textbox2.Text := '10';
  setlength(a, x + 3);
  for var i := 0 to x + 2 do setlength(a[i], y + 3);
  combobox1.Items.Add('colony');
  setlength(arr, 1);
  arr[0].s := 'colony';
  arr[0].c := System.Drawing.Color.Red;
  currcol := System.Drawing.Color.Red;
  button1.BackColor := System.Drawing.Color.Red;
  colordialog1.Color := System.Drawing.Color.Red;
  bitmap1 := new bitmap(500, 500);
  var pena := new system.Drawing.Pen(system.Drawing.Color.Black);
  var gro := system.Drawing.Graphics.FromImage(bitmap1);
  {for var j := 0 To x Do
  
    for var i := 0 To y Do
  
    begin
      if (a[(j + x) mod x][(i + y) mod y].s = 3) Then a[(j + x) mod x][(i + y) mod y].s := 0;
      if (a[(j + x) mod x][(i + y) mod y].s = 1) Then
      begin
        a[(j + x) mod x][(i + y) mod y].s := 2;
      end;
    end;}
  draw;
  
  combobox1.SelectedIndex := 0;
  currplayer := 0;
end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  colordialog1.ShowDialog; 
  currcol := colordialog1.Color;
  button1.BackColor := currcol;
  arr[currplayer].c := currcol;
   //currplayer:=curitem;
  draw;
  refresh;
end;

procedure Form1.panel1_Paint(sender: Object; e: PaintEventArgs);
begin
  
end;

procedure Form1.textBox1_TextChanged(sender: Object; e: EventArgs);
var
  cx: integer;
begin
  cx := x;
  bx := trystrtoint(textbox1.Text, x);
  if bx = false then errorprovider1.SetError(textbox1, 'Not an integer value') else errorprovider1.Clear;
  if (x > maxx) then
  begin
    errorprovider1.SetError(textbox1, 'Value is too big');
    x := cx;
  end;
  
  if (x < minx) then
  begin
    errorprovider1.SetError(textbox1, 'Value is too small');
    x := cx;
  end;
  setlength(a, x + 3);
  for var i := 0 to x + 2 do setlength(a[i], y + 3);
  w := round(500 / x);
  bx := false;
end;



procedure Form1.textBox2_TextChanged(sender: Object; e: EventArgs);
var
  cy: integer;
begin
  cy := y;
  by := trystrtoint(textbox2.Text, y);
  if by = false then errorprovider2.SetError(textbox2, 'Not an integer value') else errorprovider2.Clear;
  
  if (y > maxy) then
  begin
    errorprovider2.SetError(textbox2, 'Value is too big');
    y := cy;
  end;
  
  if (y < miny) then
  begin
    errorprovider2.SetError(textbox2, 'Value is too small');
    y := cy;
  end;
  
  setlength(a, x + 3);
  for var i := 0 to x + 2 do setlength(a[i], y + 3);
  h := round(500 / y);
  by := false;
end;

procedure Form1.button3_Click(sender: Object; e: EventArgs);
begin
  var b: boolean;
  var s: string;
  
  b := false;
  s := combobox1.Text;
  for var i := 0 to combobox1.Items.Count - 1 do
  begin
    if (s = arr[i].s) then b := true;
  end;
  if (combobox1.Text <> '') and (b <> true) then 
  begin
    comboBox1.Items.Add(comboBox1.Text);
    setlength(arr, arr.Length + 1);
    arr[arr.Length - 1].s := combobox1.Text;
    arr[arr.Length - 1].c := System.Drawing.Color.Red;
    currplayer := arr.Length - 1;
  end;
  button1.BackColor := arr[currplayer].c;
end;

procedure Form1.groupBox1_Enter(sender: Object; e: EventArgs);
begin

end;

procedure Form1.label1_Click(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.TopToolStripPanel_Click(sender: Object; e: EventArgs);
begin
  
end;

procedure form1.combobox1_KeyDown(sender: Object; e: keyEventArgs);
begin
  
end;

procedure Form1.comboBox1_SelectedIndexChanged(sender: Object; e: EventArgs);
begin
  for var i := 0 to combobox1.Items.Count - 1 do
  begin
    if arr[i].s = combobox1.Text then curitem := i;
  end;
  button1.BackColor := arr[curitem].c;
  currplayer := curitem;
end;

procedure Form1.button4_Click(sender: Object; e: EventArgs);
begin
  //unit3.Form1.Create.Show;
  if help.isdisposed then help:=unit3.Form1.create;
  
  help.show;
end;

procedure Form1.button6_Click(sender: Object; e: EventArgs);
begin
mode:=true;
step;
mode:=false;
draw;
refresh;
end;

procedure Form1.button7_Click(sender: Object; e: EventArgs);
var maill:system.Net.Mail.MailMessage;
cli:system.Net.Mail.SmtpClient;
begin
//system.Net.Mail.SmtpClient.Create.
Unit5.Form1.Create.Show;
cli:= new system.Net.Mail.SmtpClient('stmp.gmail.com');


maill:= new system.Net.Mail.MailMessage('mikhail.a.ushakov@gmail.com','pixelstudioscompany@gmail.com','po','lol');
cli.Send('mikhail.a.ushakov@gmail.com','mikhail.a.ushakov@gmail.com','po','lol');
end;

procedure Form1.button8_Click(sender: Object; e: EventArgs);
begin
 //если в pictureBox есть изображение

    //создание диалогового окна "Сохранить как..", для сохранения изображения
   // SaveFileDialog1  := new SaveFileDialog();
    savedialog1.Title := 'Сохранить картинку как...';
    //отображать ли предупреждение, если пользователь указывает имя уже существующего файла
    savedialog1.OverwritePrompt := true;
    //отображать ли предупреждение, если пользователь указывает несуществующий путь
    savedialog1.CheckPathExists := true;
    //список форматов файла, отображаемый в поле "Тип файла"
    savedialog1.Filter :='Image Files(*.BMP)|*.BMP|Image Files(*.JPG)|*.JPG|Image Files(*.GIF)|*.GIF|Image Files(*.PNG)|*.PNG|All files (*.*)|*.*';
    //отображается ли кнопка "Справка" в диалоговом окне
    savedialog1.ShowHelp := true;
  savedialog1.showdialog;
   
        try
            bitmap1.Save(savedialog1.FileName, System.Drawing.Imaging.ImageFormat.jpeg);
      
        except
       
            MessageBox.Show('Невозможно сохранить изображение', 'Ошибка',MessageBoxButtons.OK, MessageBoxIcon.Error);
        end;




  
end;




begin

end. 