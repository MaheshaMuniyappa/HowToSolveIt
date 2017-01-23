import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class CalcChoice2 extends Applet 
	implements ItemListener
{
   private Choice fonts;
   private TextField t1, t2;

   public void init()
   {
      fonts = new Choice();
      fonts.add( "Add" );
      fonts.add( "Subtract" ); 
      fonts.add( "Multiply" );
      fonts.add("Divide");

      t1 = new TextField(30 );
      t2 = new TextField(30 );      

      fonts.addItemListener(this);

      add( fonts );
      add( t1);
      add(t2);
  }

   public void itemStateChanged( ItemEvent e )
   {
      int v1, v2, v, index;
      String s1, s2;

	s1 = t1.getText();
	s2 = t2.getText();
	v1 = Integer.parseInt(s1);
	v2 = Integer.parseInt(s2);

	Choice c  = (Choice)e.getItemSelectable();
	index = c.getSelectedIndex();
	switch(index)
	{
		case 0: v = v1 + v2; showStatus("SUM = " + v); break;		
		case 1: v = v1 - v2; showStatus("DIFF = " + v); break;
		case 2: v = v1 * v2; showStatus("PROD = " + v); break;
		case 3: v = v1 / v2; showStatus("DIV = " + v); break;
	}
   }

}

