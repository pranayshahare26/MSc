import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.event.*;
class ActionInputDialog extends JApplet implements ActionListener
{
	JFrame jf;
	JButton b1;
	JLabel l1;
	ActionInputDialog()
	{
		jf=new JFrame("Demo of an Input dialog box");
		l1=new JLabel();
		jf.setLayout(new FlowLayout());
		jf.setDefaultCloseOperation(jf.EXIT_ON_CLOSE);
		b1=new JButton("Name");
		b1.addActionListener(this);
		jf.setSize(350,200);
		jf.add(b1);
		jf.add(l1);
		jf.setVisible(true);
	}
	public void actionPerformed(ActionEvent e)
	{
		if(e.getSource()== b1)
		{
			int i= JOptionPane.QUESTION_MESSAGE;
			String pstr = JOptionPane.showInputDialog(jf,"What is your name?","Input Dialog Box",i);
			l1.setText("Your name is:"+pstr);
		}
	}
	public static void main(String str[])
	{
		ActionInputDialog aid=new ActionInputDialog();
	}
}
