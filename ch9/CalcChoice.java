import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class CalcChoice extends Applet {
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

      fonts.addItemListener( new Handler( t1, t2, this ) );

      add( fonts );
      add( t1);
      add(t2);
  }
}

class Handler implements ItemListener {
   private TextField field1, field2;
   Applet applet;

   public Handler( TextField t1, TextField t2, Applet a ) { field1 = t1; field2 = t2; applet = a;}

   public void itemStateChanged( ItemEvent e )
   {
      int v1, v2, v, index;
      String s1, s2;

	s1 = field1.getText();
	s2 = field2.getText();
	v1 = Integer.parseInt(s1);
	v2 = Integer.parseInt(s2);

	Choice c  = (Choice)e.getItemSelectable();
	index = c.getSelectedIndex();
	switch(index)
	{
		case 0: v = v1 + v2; applet.showStatus("SUM = " + v); break;		
		case 1: v = v1 - v2; applet.showStatus("DIFF = " + v); break;
		case 2: v = v1 * v2; applet.showStatus("PROD = " + v); break;
		case 3: v = v1 / v2; applet.showStatus("DIV = " + v); break;
	}
   }
}
