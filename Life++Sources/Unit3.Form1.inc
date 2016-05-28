procedure InitializeComponent;
    begin
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(Form1));
        self.label1 := new System.Windows.Forms.Label();
        self.label2 := new System.Windows.Forms.Label();
        self.SuspendLayout();
        // 
        // label1
        // 
        self.label1.Font := new System.Drawing.Font('Microsoft Sans Serif', 10, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label1.Location := new System.Drawing.Point(9, 15);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(544, 104);
        self.label1.TabIndex := 0;
        self.label1.Text := resources.GetString('label1.Text');
        self.label1.Click += label1_Click;
        // 
        // label2
        // 
        self.label2.Location := new System.Drawing.Point(394, 167);
        self.label2.Name := 'label2';
        self.label2.Size := new System.Drawing.Size(158, 18);
        self.label2.TabIndex := 1;
        self.label2.Text := 'Made by Mikhail Ushakov 2016';
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(566, 193);
        self.Controls.Add(self.label2);
        self.Controls.Add(self.label1);
        self.Icon := (System.Drawing.Icon(resources.GetObject('$this.Icon')));
        self.Name := 'Form1';
        self.Text := 'Info';
        self.ResumeLayout(false);
    end;
