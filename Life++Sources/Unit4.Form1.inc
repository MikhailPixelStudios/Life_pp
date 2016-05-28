procedure InitializeComponent;
    begin
        self.label1 := new System.Windows.Forms.Label();
        self.label2 := new System.Windows.Forms.Label();
        self.label3 := new System.Windows.Forms.Label();
        self.textBox1 := new System.Windows.Forms.TextBox();
        self.textBox2 := new System.Windows.Forms.TextBox();
        self.textBox3 := new System.Windows.Forms.TextBox();
        self.button1 := new System.Windows.Forms.Button();
        self.SuspendLayout();
        // 
        // label1
        // 
        self.label1.Font := new System.Drawing.Font('Microsoft Sans Serif', 10.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label1.Location := new System.Drawing.Point(12, 9);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(50, 34);
        self.label1.TabIndex := 0;
        self.label1.Text := 'From:';
        // 
        // label2
        // 
        self.label2.Font := new System.Drawing.Font('Microsoft Sans Serif', 10.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label2.Location := new System.Drawing.Point(12, 43);
        self.label2.Name := 'label2';
        self.label2.Size := new System.Drawing.Size(50, 34);
        self.label2.TabIndex := 1;
        self.label2.Text := 'To:';
        // 
        // label3
        // 
        self.label3.Font := new System.Drawing.Font('Microsoft Sans Serif', 10.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.label3.Location := new System.Drawing.Point(12, 77);
        self.label3.Name := 'label3';
        self.label3.Size := new System.Drawing.Size(50, 34);
        self.label3.TabIndex := 2;
        self.label3.Text := 'Text:';
        // 
        // textBox1
        // 
        self.textBox1.Location := new System.Drawing.Point(68, 9);
        self.textBox1.Name := 'textBox1';
        self.textBox1.Size := new System.Drawing.Size(127, 20);
        self.textBox1.TabIndex := 3;
        // 
        // textBox2
        // 
        self.textBox2.Location := new System.Drawing.Point(68, 43);
        self.textBox2.Name := 'textBox2';
        self.textBox2.Size := new System.Drawing.Size(127, 20);
        self.textBox2.TabIndex := 4;
        // 
        // textBox3
        // 
        self.textBox3.Location := new System.Drawing.Point(68, 77);
        self.textBox3.Multiline := true;
        self.textBox3.Name := 'textBox3';
        self.textBox3.Size := new System.Drawing.Size(127, 33);
        self.textBox3.TabIndex := 5;
        // 
        // button1
        // 
        self.button1.Location := new System.Drawing.Point(215, 65);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(47, 45);
        self.button1.TabIndex := 6;
        self.button1.Text := 'Sent';
        self.button1.UseVisualStyleBackColor := true;
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(271, 0);
        self.Controls.Add(self.button1);
        self.Controls.Add(self.textBox3);
        self.Controls.Add(self.textBox2);
        self.Controls.Add(self.textBox1);
        self.Controls.Add(self.label3);
        self.Controls.Add(self.label2);
        self.Controls.Add(self.label1);
        self.MaximizeBox := false;
        self.Name := 'Form1';
        self.StartPosition := System.Windows.Forms.FormStartPosition.WindowsDefaultBounds;
        self.Text := 'MailForm';
        self.WindowState := System.Windows.Forms.FormWindowState.Maximized;
        self.Load += Form1_Load;
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
