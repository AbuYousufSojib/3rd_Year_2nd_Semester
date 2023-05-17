import java.awt.event.*;
import javax.swing.*;
public class LAB_3 implements ActionListener {
//	private static JLabel ;
//	private static JFrame frame;
	private static JLabel label1,label2,label3,success;
//	private static JPanel panel;
//	private static JButton button;
//	private static JTextField userText1, userText2;
	public static void main(String[] args) {
		JFrame frame = new JFrame();
		JPanel panel = new JPanel();
		frame.setSize(400, 400);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.add(panel);
		panel.setLayout(null);
		//Setting all Three Lebels
		label1= new JLabel("Name");
		label1.setBounds(10,10,80,25);
		panel.add(label1);
		label2 = new JLabel("Roll");
		label2.setBounds(10,60,80,25);
		panel.add(label2);
		label3 = new JLabel("Department");
		label3.setBounds(10,110,80,25);
		panel.add(label3);
		//Creating all Textfields
		JTextField UT1 = new JTextField("Enter Your Name");
		UT1.setBounds(100,10,200,25);
		panel.add(UT1);
		JTextField UT2 = new JTextField("Enter Your Roll");
		UT2.setBounds(100,60,200,25);
		panel.add(UT2);
		JTextField UT3 = new JTextField("Enter Your Department");
		UT3.setBounds(100,110,200,25);
		panel.add(UT3);
		
		JRadioButton r1 = new JRadioButton("Agree");
        r1.setBounds(100, 160, 80, 25);
        panel.add(r1);
		
		JButton button = new JButton("Save");
		button.setBounds(150, 210, 80, 25);
		button.addActionListener(new LAB_3());
		panel.add(button);
		
		success = new JLabel("");
		success.setBounds(100,260,300,25);
		panel.add(success);
		frame.setVisible(true);
	}
@Override
public void actionPerformed(ActionEvent e) {
// TODO Auto-generated method stub
	success.setText("Saved Successfully");
	}
}