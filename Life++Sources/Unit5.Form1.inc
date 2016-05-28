procedure InitializeComponent;
    begin
        self.button1 := new System.Windows.Forms.Button();
        self.SuspendLayout();
        // 
        // button1
        // 
        self.button1.Location := new System.Drawing.Point(81, 103);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(112, 65);
        self.button1.TabIndex := 0;
        self.button1.Text := 'button1';
        self.button1.UseVisualStyleBackColor := true;
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(284, 261);
        self.Controls.Add(self.button1);
        self.Name := 'Form1';
        self.Text := 'Form1';
        self.ResumeLayout(false);
    end;
