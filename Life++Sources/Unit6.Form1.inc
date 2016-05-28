procedure InitializeComponent;
    begin
        self.button1 := new System.Windows.Forms.Button();
        self.textBox1 := new System.Windows.Forms.TextBox();
        self.SuspendLayout();
        // 
        // button1
        // 
        self.button1.Location := new System.Drawing.Point(12, 49);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(51, 31);
        self.button1.TabIndex := 0;
        self.button1.Text := 'Save';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // textBox1
        // 
        self.textBox1.Location := new System.Drawing.Point(12, 23);
        self.textBox1.Name := 'textBox1';
        self.textBox1.Size := new System.Drawing.Size(174, 20);
        self.textBox1.TabIndex := 1;
        self.textBox1.TextChanged += textBox1_TextChanged;
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(198, 96);
        self.Controls.Add(self.textBox1);
        self.Controls.Add(self.button1);
        self.Name := 'Form1';
        self.Text := 'Save file';
        self.Load += Form1_Load;
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
