Unit Unit3;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure label1_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit3.Form1.resources}
    label1: &Label;
    label2: &Label;
    {$include Unit3.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

procedure Form1.label1_Click(sender: Object; e: EventArgs);
begin
  
end;

end.
