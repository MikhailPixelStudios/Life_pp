uses
  Unit1, timers;

var
  f: form1;

var
  t: timer;
  pp: integer;
  
//type array8 = array[0..7] of player;
type array8i = array[0..7] of integer; 

procedure ado(var uc: integer; var pl: array8i; var pc: array8i; var pp: integer);
begin
  for var i := 0 to uc - 1 do
  begin
    if pl[i] = pp then
    begin
      pc[i] := pc[i] + 1;
      exit;
    end; 
  end;
  pl[uc] := pp;
  pc[uc] := 1;
  uc := uc+ 1;   
end;

function count(a: bul; x, y, xx, yy: integer; var mc: integer; var pp: integer): integer;
var
  c: integer;
  uc: integer;
  pl: array8i;
  pc: array8i;
  pop: integer;
  xp, yp, xn, yn : integer;
begin
  c := 0;
  uc := 0;
  xp := x - 1;
  yp := y - 1;
  xn := x + 1;
  yn := y + 1;
  xp := (xp + xx) mod xx;
  yp := (yp + yy) mod yy;
  xn := (xn + xx) mod xx;
  yn := (yn + yy) mod yy;
  if (a[xp][(y + yy) mod yy].s = 3) Or (a[xp][(y + yy) mod yy].s = 2) Then 
  begin
    c := c + 1;
    pop := a[xp][(y + yy) mod yy].p;
    ado(uc, pl, pc, pop);
  end;
  if (a[xn][(y + yy) mod yy].s = 3) Or (a[xn][(y + yy) mod yy].s = 2) Then 
  begin
    c := c + 1;
    pop := a[xn][(y + yy) mod yy].p;
    ado(uc, pl, pc, pop);
  end;
  if (a[(x + xx) mod xx][yp].s = 3) Or (a[(x + xx) mod xx][yp].s = 2) Then 
  begin
    c := c + 1;
    pop := a[(x + xx) mod xx][yp].p;
    ado(uc, pl, pc, pop);
  end;
  if (a[(x + xx) mod xx][yn].s = 3) Or (a[(x + xx) mod xx][yn].s = 2) Then 
  begin
    c := c + 1;
    pop := a[(x + xx) mod xx][yn].p;
    ado(uc, pl, pc, pop);
  end;
  
  if (a[xp][yp].s = 3) Or (a[xp][yp].s = 2) Then 
  begin
    c := c + 1;
    pop := a[xp][yp].p;
    ado(uc, pl, pc, pop);
  end;
  if (a[xn][yn].s = 3) Or (a[xn][yn].s = 2) Then 
  begin
    c := c + 1;
    pop := a[xn][yn].p;
    ado(uc, pl, pc, pop);
  end;
  if (a[xn][yp].s = 3) Or (a[xn][yp].s = 2) Then 
  begin
    c := c + 1;
    pop := a[xn][yp].p; 
    ado(uc, pl, pc, pop);
  end;
  if (a[xp][yn].s = 3) Or (a[xp][yn].s = 2) Then 
  begin
    c := c + 1;
    pop := a[xp][yn].p;
    ado(uc, pl, pc, pop);
  end;
  
  if uc > 0 then 
  begin
    var index: integer;
    mc := pc[0];
    index := 0;
    for var i := 0 to uc do
    begin
      if (mc < pc[i]) then 
      begin
        mc := pc[i]; 
        index := i;
      end;
    end;
    pp := pl[index];
  end;
  count := c;
end;

procedure timerproc;
var
  gro: system.Drawing.Graphics;
  mc: integer;
  pp:integer;
begin
  gro := system.Drawing.Graphics.FromImage(bitmap1);
  var pena := new system.Drawing.Pen(system.Drawing.Color.Black);
  if mode = true then
  begin
    for var j := 0 To x Do
      
      for var i := 0 To y Do
      
      begin
        
        p := count(a, j, i, x, y, mc, pp);
        
        if a[(j + x) mod x][(i + y) mod y].s = 0 Then
        begin
          if (p = 3) and (mc > 1) Then 
          begin
            
            a[(j + x) mod x][(i + y) mod y].s := 1;
            a[(j + x) mod x][(i + y) mod y].p := pp;
          end;
        end;
        
        
        
      end;
    
    
    for var j := 0 To x Do
      
      for var i := 0 To y Do
      
      begin
        p := count(a, j, i, x, y, mc, pp);
        
        if a[(j + x) mod x][(i + y) mod y].s = 2 Then
        begin
          if p > 3 Then 
          begin
            a[(j + x) mod x][(i + y) mod y].s := 3;
          end;
          if p < 2 Then
          begin
            a[(j + x) mod x][(i + y) mod y].s := 3;
          end;
        end;             
      end;
    for var j := 0 To x Do
      
      for var i := 0 To y Do
      
      begin
        if (a[(j + x) mod x][(i + y) mod y].s = 3) Then a[(j + x) mod x][(i + y) mod y].s := 0;
        if (a[(j + x) mod x][(i + y) mod y].s = 1) Then
        begin
          a[(j + x) mod x][(i + y) mod y].s := 2;
        end;
      end;
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
  
  var rc: system.Drawing.rectangle;
  rc := new system.Drawing.rectangle(0, 0, 500, 500);
 // unit1.step:=true;
  f.inValidate(rc);
  
end;

begin
  System.Windows.Forms.Application.EnableVisualStyles();
  System.Windows.Forms.Application.SetCompatibleTextRenderingDefault(false);
  t := new Timer(200, TimerProc);
  f := new Form1(t,timerproc);
  
  System.Windows.Forms.Application.Run(f);
  repeat
    if f.visible = false then exit;
  
  until false;
end.