import java.awt.*;
import java.awt.event.*;
import java.applet.Applet;

public class MyCalc extends Applet implements ActionListener
{
  Label x1, x2;
  TextField t1, t2;
  Button b1, b2;

  public void init()
  {
    x1 = new Label("no 1");
    x2 = new Label("no 2");
    t1 = new TextField(10);
    t2 = new TextField(10);
    b1 = new Button("ADD");
    b2 = new Button("MULTIPLY");
    add(x1); add(t1);
    add(x2); add(t2);
    add(b1); add(b2);
    b1.addActionListener(this);
    b2.addActionListener(this);
  }

  public void actionPerformed(ActionEvent e)
  {
    int n1, n2, ans;
    String str;
    str = t1.getText();
    n1 = Integer.parseInt(str);
    str = t2.getText();
    n2 = Integer.parseInt(str);

    if(e.getSource() == b1) ans = n1 + n2;
    else ans = n1 * n2;
    showStatus("ANS = " + ans);
  }
}









