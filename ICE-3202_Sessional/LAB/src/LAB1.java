import java.awt.*;
import javax.swing.*;
public class LAB1 extends JFrame {
private ImageIcon I1,I2,I3;
private JLabel L1,L2,L3;
	LAB1(){
		setLayout(new FlowLayout());
		I1 = new ImageIcon(getClass().getResource("ICE1.jpg"));
		L1 = new JLabel(I1);
		add(L1);
		I2 = new ImageIcon(getClass().getResource("PUST.png"));
		L2 = new JLabel(I2);
		add(L2);
		I3 = new ImageIcon(getClass().getResource("PUST.png"));
		L3 = new JLabel(I3);
		add(L3);
		
	}
public static void main(String args[]) {
	LAB1 gui = new LAB1();
	gui.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	gui.setVisible(true);
	gui.pack();
	gui.setTitle("Image Program");
	gui.setLocationRelativeTo(null);
	}
}