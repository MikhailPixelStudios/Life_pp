Unit Unit2;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  dd = class(Form)
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure dd_Load(sender: Object; e: EventArgs);
    procedure textBox1_TextChanged(sender: Object; e: EventArgs);
    procedure textBox2_TextChanged(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit2.dd.resources}
    button1: Button;
    textBox1: TextBox;
    textBox2: TextBox;
    label1: &Label;
    label2: &Label;
    {$include Unit2.dd.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

procedure dd.button1_Click(sender: Object; e: EventArgs);
begin
  
end;

procedure dd.dd_Load(sender: Object; e: EventArgs);
begin
  textbox1.Text:='10';
  textbox2.Text:='10';
end;

procedure dd.textBox1_TextChanged(sender: Object; e: EventArgs);
begin
  
end;

procedure dd.textBox2_TextChanged(sender: Object; e: EventArgs);
begin
  
end;

end.
