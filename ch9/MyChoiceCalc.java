import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyChoiceCalc extends Applet implements ItemListener {
   private Choice op;
   private TextField t1, t2;

   public void init()
   {
      
      op = new Choice();
      op.add( "Add" );  
      op.add( "Subtract" );   
      op.add( "Multiply" );       
      op.add( "Divide" );       

      t1 = new TextField(10);
      t2 = new TextField(10);
      op.addItemListener( this );
      
      add( op );
      add( t1 );
      add( t2 );
   }
   public void itemStateChanged( ItemEvent e )
   {
      int ind = op.getSelectedIndex();
	
	String s;
	float v1, v2, v = 0;

	s = t1.getText();
	v1 = Float.valueOf(s).floatValue();
	s = t2.getText();
	v2 = Float.valueOf(s).floatValue();

	switch(ind)
	{
		case 0: v = v1 + v2; break;
		case 1: v = v1 - v2; break;
		case 2: v = v1 * v2; break;
		case 3: v = v1 / v2; break;
	}
	showStatus("ANS = " + v);
   }

}

