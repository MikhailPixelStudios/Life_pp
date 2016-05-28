Unit Unit6;

interface

uses System, System.Drawing, System.Windows.Forms;
var a:string;
type
  Form1 = class(Form)
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure Form1_Load(sender: Object; e: EventArgs);
    procedure textBox1_TextChanged(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit6.Form1.resources}
    button1: Button;
    textBox1: TextBox;
    {$include Unit6.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.Form1_Load(sender: Object; e: EventArgs);
begin
  textbox1.Text:='Screenshot.png';
end;

procedure Form1.textBox1_TextChanged(sender: Object; e: EventArgs);
begin
  
end;

end.
