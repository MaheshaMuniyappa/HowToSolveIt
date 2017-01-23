import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class GridTest extends Applet implements ActionListener {
   private Button b1, b2, b3, b4;
   private TextField t1, t2;

   public void init()
   {
      setLayout( new GridLayout( 3, 2, 5, 5 ) );
      t1 = new TextField(20);
	  t2 = new TextField(20);
	  b1 = new Button("ADD");
	  b2 = new Button("SUB");
	  b3 = new Button("MUL");
	  b4 = new Button("DIV");

	  add(t1);
	  add(t2);
	  add(b1);
	  add(b2);
	  add(b3);
	  add(b4);

	  b1.addActionListener(this);
	  b2.addActionListener(this);
	  b3.addActionListener(this);
	  b4.addActionListener(this);
    }
   

   public void actionPerformed( ActionEvent e )
   { 
	String str;
	int v1, v2, v;

	str = t1.getText();
 	v1 = Integer.parseInt(str);
	str = t2.getText();
 	v2 = Integer.parseInt(str);

	if(e.getSource() == b1)
	{
		v = v1 + v2;
		showStatus("SUM = " + v);
	}
	else if(e.getSource() == b2)
	{
		v = v1 - v2;
		showStatus("DIFF = " + v);
	}
	else if(e.getSource() == b3)
	{
		v = v1 * v2;
		showStatus("PROD = " + v);
	}
	else
	{
		v = v1 / v2;
		showStatus("DIV = " + v);
	}
   }
}
