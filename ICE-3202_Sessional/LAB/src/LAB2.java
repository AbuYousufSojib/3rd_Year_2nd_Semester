import javax.swing.*;
import java.awt.event.*;
public class LAB2 extends JFrame implements ActionListener{
JCheckBox C1,C2,C3;
LAB2(){
	JLabel l=new JLabel("Food Ordering System");
	l.setBounds(100,50,300,20);
	C1=new JCheckBox("Pizza @ 100");
	C1.setBounds(100,100,150,20);
	C2=new JCheckBox("Burger @ 30");
	C2.setBounds(100,150,150,20);
	C3=new JCheckBox("Tea @ 10");
	C3.setBounds(100,200,150,20);
	JButton B=new JButton("Make Order");
	B.setBounds(100,250,180,70);
	B.addActionListener(this);
	add(l);add(C1);add(C2);add(C3);add(B);
	setSize(400,400);
	setLayout(null);
	setVisible(true);
	setDefaultCloseOperation(EXIT_ON_CLOSE);
	}
public void actionPerformed(ActionEvent e){
	float amount=0;
	String msg="";
	if(C1.isSelected()){
		amount+=100;
		msg="Pizza: 100\n";
	}
	if(C2.isSelected()){
		amount+=30;
		msg+="Burger: 30\n";
	}
	if(C3.isSelected()){
		amount+=10;
		msg+="Tea: 10\n";
	}
	msg+="-----------------\n";
JOptionPane.showMessageDialog(this,msg+"Total: "+amount);
	}
public static void main(String[] args) {
	new LAB2 ();
	}
}
