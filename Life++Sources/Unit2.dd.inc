procedure InitializeComponent;
    begin
        self.button1 := new System.Windows.Forms.Button();
        self.textBox1 := new System.Windows.Forms.TextBox();
        self.textBox2 := new System.Windows.Forms.TextBox();
        self.label1 := new System.Windows.Forms.Label();
        self.label2 := new System.Windows.Forms.Label();
        self.SuspendLayout();
        // 
        // button1
        // 
        self.button1.Location := new System.Drawing.Point(102, 64);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(64, 33);
        self.button1.TabIndex := 0;
        self.button1.Text := 'Set';
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // textBox1
        // 
        self.textBox1.Location := new System.Drawing.Point(91, 12);
        self.textBox1.Name := 'textBox1';
        self.textBox1.Size := new System.Drawing.Size(91, 20);
        self.textBox1.TabIndex := 1;
        self.textBox1.TextChanged += textBox1_TextChanged;
        // 
        // textBox2
        // 
        self.textBox2.Location := new System.Drawing.Point(91, 38);
        self.textBox2.Name := 'textBox2';
        self.textBox2.Size := new System.Drawing.Size(91, 20);
        self.textBox2.TabIndex := 2;
        self.textBox2.TextChanged += textBox2_TextChanged;
        // 
        // label1
        // 
        self.label1.Font := new System.Drawing.Font('Microsoft Sans Serif', 12.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label1.Location := new System.Drawing.Point(24, 12);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(51, 19);
        self.label1.TabIndex := 3;
        self.label1.Text := 'X:';
        // 
        // label2
        // 
        self.label2.Font := new System.Drawing.Font('Microsoft Sans Serif', 12.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label2.Location := new System.Drawing.Point(24, 41);
        self.label2.Name := 'label2';
        self.label2.Size := new System.Drawing.Size(51, 19);
        self.label2.TabIndex := 4;
        self.label2.Text := 'Y:';
        // 
        // dd
        // 
        self.ClientSize := new System.Drawing.Size(285, 102);
        self.Controls.Add(self.label2);
        self.Controls.Add(self.label1);
        self.Controls.Add(self.textBox2);
        self.Controls.Add(self.textBox1);
        self.Controls.Add(self.button1);
        self.Name := 'dd';
        self.Text := 'Write parametrs about field';
        self.Load += dd_Load;
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
