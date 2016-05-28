Unit Unit4;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
  {$region FormDesigner}
  private
    {$resource Unit4.Form1.resources}
    label1: &Label;
    label2: &Label;
    label3: &Label;
    textBox1: TextBox;
    textBox2: TextBox;
    textBox3: TextBox;
    button1: Button;
    {$include Unit4.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

end.
