import java.awt.*;
import java.awt.event.*;
import java.applet.Applet;

public class MyCalc2 extends Applet implements ItemListener
{
  Label x1, x2;
  TextField t1, t2;
  Checkbox c1, c2, c3, c4;
  CheckboxGroup group;

  public void init()
  {
    x1 = new Label("no 1");
    x2 = new Label("no 2");
    t1 = new TextField(10);
    t2 = new TextField(10);
    group = new CheckboxGroup();
    c1 = new Checkbox("ADD", group, true);
    c2 = new Checkbox("SUB", group, false);
    c3 = new Checkbox("MUL", group, false);
    c4 = new Checkbox("DIV", group, false);

    add(x1); add(t1);
    add(x2); add(t2);
    add(c1); add(c2); add(c3); add(c4);
    c1.addItemListener(this);
    c2.addItemListener(this);
    c3.addItemListener(this);
    c4.addItemListener(this);
  }

  public void itemStateChanged(ItemEvent e)
  {
    int n1, n2, ans;
    String str;
    str = t1.getText();
    n1 = Integer.parseInt(str);
    str = t2.getText();
    n2 = Integer.parseInt(str);

    if(e.getSource() == c1) ans = n1 + n2;
    else if(e.getSource() == c2) ans = n1-n2;
    else if(e.getSource() == c3) ans = n1*n2;
    else ans = n1 / n2;
    showStatus("ANS = " + ans);
  }
}









