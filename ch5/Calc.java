import java.awt.*;
import java.applet.*;
import java.awt.event.*;

public class Calc extends Applet
	implements ActionListener
{
  TextField t1, t2;
  Button b1, b2;

  public void init()
  {
    t1 = new TextField(5);
    t2 = new TextField(5);
    b1 = new Button("ADD");
    b2 = new Button("MULTIPLY");

    add(t1);
    add(t2);
    add(b1);
    add(b2);

    b1.addActionListener(this);
    b2.addActionListener(this);
  }

  public void actionPerformed(ActionEvent e)
  {
    String str;
    int v1, v2, v;

    str = t1.getText();
    v1 =  Integer.parseInt(str);
    str = t2.getText();
    v2 =  Integer.parseInt(str);

    if(e.getSource() == b1)
    {
      v = v1 + v2;
      showStatus("SUM = " + v);
    }
    else if(e.getSource() == b2)
    {
      v = v1 * v2;
      showStatus("PROD = " + v);
    }
  }
}
