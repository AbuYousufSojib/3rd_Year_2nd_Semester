import java.awt.event.*;

import javax.swing.*;

public class LAB3 implements ActionListener{
	private static JFrame frame;
    private static JLabel label1, label2, label3, label4, label5, label6, success;
    private static JPanel panel;
    private static JButton button;
    private static JTextField userText1, userText2, userText3;
    private static String v1, v2;
    private static JPasswordField value1, value2;

    public static void main(String[] args) {

        frame = new JFrame();
        panel = new JPanel();
        frame.setSize(400, 550);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.add(panel);
        panel.setLayout(null);
        
        // Setting all Three Lebels
        label1 = new JLabel("Name");
        label1.setBounds(10, 10, 80, 25);
        panel.add(label1);

        label2 = new JLabel("Roll");
        label2.setBounds(10, 60, 80, 25);
        panel.add(label2);

        label3 = new JLabel("Department");
        label3.setBounds(10, 110, 80, 25);
        panel.add(label3);

        label4 = new JLabel("Password");
        label4.setBounds(10, 160, 80, 25);
        panel.add(label4);

        label5 = new JLabel("Confirm Password");
        label5.setBounds(10, 210, 80, 25);
        panel.add(label5);

        label6 = new JLabel();
        label6.setBounds(10, 240, 80, 25);
        panel.add(label6);

        success = new JLabel("");
        success.setBounds(130, 350, 300, 25);
        panel.add(success);

        // Creating all Textfields
        userText1 = new JTextField("Enter Your Name");
        userText1.setBounds(100, 10, 200, 25);
        panel.add(userText1);

        JTextField userText2 = new JTextField("Enter Your Roll");
        userText2.setBounds(100, 60, 200, 25);
        panel.add(userText2);

        JTextField userText3 = new JTextField("Enter Your Department");
        userText3.setBounds(100, 110, 200, 25);
        panel.add(userText3);

        value1 = new JPasswordField("");
        value1.setBounds(100, 160, 200, 25);
        panel.add(value1);

        value2 = new JPasswordField("");
        value2.setBounds(100, 210, 200, 25);
        panel.add(value2);

        JRadioButton r1 = new JRadioButton("Agree");
        r1.setBounds(10, 240, 80, 25);
        panel.add(r1);

        button = new JButton("Save");
        button.setBounds(150, 310, 80, 25);
        button.addActionListener(new LAB3());
        panel.add(button);
        frame.setVisible(true);

    }

    public void actionPerformed(ActionEvent e) {
        char[] pf1 = value1.getPassword();
        v1 = new String(pf1);
        int len = v1.length();
       

        char[] pf2 = value2.getPassword();
        v2 = new String(pf2);
        if(len == 0) {
        success.setText("Password isn't inserted !!!!");
       
        }

        else if (v1.equals(v2) && e.getSource() == button && len > 0){
            success.setText("password is correct");
        }
       
        else {
            success.setText("password is not correct");
        }

    }

}

