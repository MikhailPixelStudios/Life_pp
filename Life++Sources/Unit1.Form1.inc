procedure InitializeComponent;
    begin
        self.components := new System.ComponentModel.Container();
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(Form1));
        self.comboBox1 := new System.Windows.Forms.ComboBox();
        self.button1 := new System.Windows.Forms.Button();
        self.button2 := new System.Windows.Forms.Button();
        self.groupBox1 := new System.Windows.Forms.GroupBox();
        self.button3 := new System.Windows.Forms.Button();
        self.colorDialog1 := new System.Windows.Forms.ColorDialog();
        self.button5 := new System.Windows.Forms.Button();
        self.button4 := new System.Windows.Forms.Button();
        self.label3 := new System.Windows.Forms.Label();
        self.label2 := new System.Windows.Forms.Label();
        self.textBox2 := new System.Windows.Forms.TextBox();
        self.textBox1 := new System.Windows.Forms.TextBox();
        self.errorProvider1 := new System.Windows.Forms.ErrorProvider(self.components);
        self.errorProvider2 := new System.Windows.Forms.ErrorProvider(self.components);
        self.helpProvider1 := new System.Windows.Forms.HelpProvider();
        self.button6 := new System.Windows.Forms.Button();
        self.groupBox2 := new System.Windows.Forms.GroupBox();
        self.groupbox3 := new System.Windows.Forms.GroupBox();
        self.button8 := new System.Windows.Forms.Button();
        self.saveDialog1 := new System.Windows.Forms.SaveFileDialog();
        self.label1 := new System.Windows.Forms.Label();
        self.groupBox1.SuspendLayout();
        (System.ComponentModel.ISupportInitialize(self.errorProvider1)).BeginInit();
        (System.ComponentModel.ISupportInitialize(self.errorProvider2)).BeginInit();
        self.groupBox2.SuspendLayout();
        self.groupbox3.SuspendLayout();
        self.SuspendLayout();
        // 
        // comboBox1
        // 
        self.comboBox1.Font := new System.Drawing.Font('Microsoft Sans Serif', 10.125, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(0)));
        self.comboBox1.FormattingEnabled := true;
        self.comboBox1.Location := new System.Drawing.Point(14, 64);
        self.comboBox1.Name := 'comboBox1';
        self.comboBox1.Size := new System.Drawing.Size(113, 24);
        self.comboBox1.TabIndex := 1;
        self.comboBox1.SelectedIndexChanged += comboBox1_SelectedIndexChanged;
        // 
        // button1
        // 
        self.button1.Location := new System.Drawing.Point(14, 23);
        self.button1.Name := 'button1';
        self.button1.Size := new System.Drawing.Size(113, 33);
        self.button1.TabIndex := 3;
        self.button1.UseVisualStyleBackColor := true;
        self.button1.Click += button1_Click;
        // 
        // button2
        // 
        self.button2.Image := (System.Drawing.Image(resources.GetObject('button2.Image')));
        self.button2.Location := new System.Drawing.Point(89, 30);
        self.button2.Name := 'button2';
        self.button2.Size := new System.Drawing.Size(39, 33);
        self.button2.TabIndex := 4;
        self.button2.UseVisualStyleBackColor := true;
        self.button2.Click += button2_Click;
        // 
        // groupBox1
        // 
        self.groupBox1.BackColor := System.Drawing.Color.Silver;
        self.groupBox1.Controls.Add(self.button3);
        self.groupBox1.Controls.Add(self.comboBox1);
        self.groupBox1.Controls.Add(self.button1);
        self.groupBox1.ForeColor := System.Drawing.SystemColors.ActiveCaptionText;
        self.groupBox1.Location := new System.Drawing.Point(530, 0);
        self.groupBox1.Name := 'groupBox1';
        self.groupBox1.Size := new System.Drawing.Size(140, 146);
        self.groupBox1.TabIndex := 6;
        self.groupBox1.TabStop := false;
        self.groupBox1.Text := 'Colony';
        self.groupBox1.Enter += groupBox1_Enter;
        // 
        // button3
        // 
        self.button3.Location := new System.Drawing.Point(86, 103);
        self.button3.Name := 'button3';
        self.button3.Size := new System.Drawing.Size(41, 27);
        self.button3.TabIndex := 6;
        self.button3.Text := 'Add';
        self.button3.UseVisualStyleBackColor := true;
        self.button3.Click += button3_Click;
        // 
        // button5
        // 
        self.button5.Location := new System.Drawing.Point(81, 124);
        self.button5.Name := 'button5';
        self.button5.Size := new System.Drawing.Size(39, 27);
        self.button5.TabIndex := 5;
        self.button5.Text := 'Clear';
        self.button5.UseVisualStyleBackColor := true;
        self.button5.Click += button5_Click;
        // 
        // button4
        // 
        self.button4.Location := new System.Drawing.Point(89, 69);
        self.button4.Name := 'button4';
        self.button4.Size := new System.Drawing.Size(39, 33);
        self.button4.TabIndex := 4;
        self.button4.Text := 'Info';
        self.button4.UseVisualStyleBackColor := true;
        self.button4.Click += button4_Click;
        // 
        // label3
        // 
        self.label3.Location := new System.Drawing.Point(6, 78);
        self.label3.Name := 'label3';
        self.label3.Size := new System.Drawing.Size(28, 24);
        self.label3.TabIndex := 3;
        self.label3.Text := 'Y :';
        // 
        // label2
        // 
        self.label2.Location := new System.Drawing.Point(6, 32);
        self.label2.Name := 'label2';
        self.label2.Size := new System.Drawing.Size(25, 24);
        self.label2.TabIndex := 2;
        self.label2.Text := 'X :';
        // 
        // textBox2
        // 
        self.textBox2.Location := new System.Drawing.Point(36, 32);
        self.textBox2.Name := 'textBox2';
        self.textBox2.Size := new System.Drawing.Size(84, 20);
        self.textBox2.TabIndex := 1;
        self.textBox2.TextChanged += textBox2_TextChanged;
        // 
        // textBox1
        // 
        self.textBox1.Location := new System.Drawing.Point(36, 78);
        self.textBox1.Name := 'textBox1';
        self.textBox1.Size := new System.Drawing.Size(85, 20);
        self.textBox1.TabIndex := 0;
        self.textBox1.TextChanged += textBox1_TextChanged;
        // 
        // errorProvider1
        // 
        self.errorProvider1.ContainerControl := self;
        // 
        // errorProvider2
        // 
        self.errorProvider2.ContainerControl := self;
        // 
        // button6
        // 
        self.button6.Location := new System.Drawing.Point(15, 30);
        self.button6.Name := 'button6';
        self.button6.Size := new System.Drawing.Size(58, 32);
        self.button6.TabIndex := 8;
        self.button6.Text := 'Step';
        self.button6.UseVisualStyleBackColor := true;
        self.button6.Click += button6_Click;
        // 
        // groupBox2
        // 
        self.groupBox2.BackColor := System.Drawing.Color.Silver;
        self.groupBox2.Controls.Add(self.label2);
        self.groupBox2.Controls.Add(self.textBox1);
        self.groupBox2.Controls.Add(self.label3);
        self.groupBox2.Controls.Add(self.textBox2);
        self.groupBox2.Controls.Add(self.button5);
        self.groupBox2.ForeColor := System.Drawing.SystemColors.ControlText;
        self.groupBox2.Location := new System.Drawing.Point(529, 164);
        self.groupBox2.Name := 'groupBox2';
        self.groupBox2.Size := new System.Drawing.Size(141, 164);
        self.groupBox2.TabIndex := 9;
        self.groupBox2.TabStop := false;
        self.groupBox2.Text := 'Board';
        // 
        // groupbox3
        // 
        self.groupbox3.BackColor := System.Drawing.Color.Silver;
        self.groupbox3.Controls.Add(self.button8);
        self.groupbox3.Controls.Add(self.button2);
        self.groupbox3.Controls.Add(self.button6);
        self.groupbox3.Controls.Add(self.button4);
        self.groupbox3.Location := new System.Drawing.Point(529, 346);
        self.groupbox3.Name := 'groupbox3';
        self.groupbox3.Size := new System.Drawing.Size(141, 116);
        self.groupbox3.TabIndex := 10;
        self.groupbox3.TabStop := false;
        self.groupbox3.Text := 'Simulation';
        // 
        // button8
        // 
        self.button8.Location := new System.Drawing.Point(15, 69);
        self.button8.Name := 'button8';
        self.button8.Size := new System.Drawing.Size(70, 33);
        self.button8.TabIndex := 11;
        self.button8.Text := 'Screenshot';
        self.button8.UseVisualStyleBackColor := true;
        self.button8.Click += button8_Click;
        // 
        // label1
        // 
        self.label1.Location := new System.Drawing.Point(579, 484);
        self.label1.Name := 'label1';
        self.label1.Size := new System.Drawing.Size(106, 19);
        self.label1.TabIndex := 11;
        self.label1.Text := '(c) PixelStudios 2016';
        // 
        // Form1
        // 
        self.BackColor := System.Drawing.Color.Silver;
        self.ClientSize := new System.Drawing.Size(684, 502);
        self.Controls.Add(self.label1);
        self.Controls.Add(self.groupbox3);
        self.Controls.Add(self.groupBox2);
        self.Controls.Add(self.groupBox1);
        self.DoubleBuffered := true;
        self.FormBorderStyle := System.Windows.Forms.FormBorderStyle.FixedSingle;
        self.HelpButton := true;
        self.Icon := (System.Drawing.Icon(resources.GetObject('$this.Icon')));
        self.MaximizeBox := false;
        self.Name := 'Form1';
        self.Text := 'Life++ v0.2.1';
        self.TransparencyKey := System.Drawing.SystemColors.Info;
        self.Load += Form1_Load;
        self.groupBox1.ResumeLayout(false);
        (System.ComponentModel.ISupportInitialize(self.errorProvider1)).EndInit();
        (System.ComponentModel.ISupportInitialize(self.errorProvider2)).EndInit();
        self.groupBox2.ResumeLayout(false);
        self.groupBox2.PerformLayout();
        self.groupbox3.ResumeLayout(false);
        self.ResumeLayout(false);
    end;
