import java.awt.*;
import java.applet.*;
import java.awt.event.*;

public class Palindrome extends Applet
	implements ActionListener
{
  TextField t1;
  Button b1;
  String s1 = "", s2 = "";
  boolean pal = false;

  public void init()
  {
    t1 = new TextField(5);
    b1 = new Button("Reverse");

    add(t1);
    add(b1);

    b1.addActionListener(this);
  }

  public void paint(Graphics g)
  {
    g.drawString("Name : " + s1, 50, 50);
    g.drawString("Rev : " + s2, 50, 70);
    g.drawString("Palindrome : " + pal, 50, 90);
  }

  public void actionPerformed(ActionEvent e)
  {
    StringBuffer buf;

    s1 = t1.getText();
    buf = new StringBuffer(s1);
    buf.reverse();
    s2 = new String(buf);
    pal = s1.equals(s2);
    repaint();
  }
}
