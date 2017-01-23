import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyRadioCalc extends Applet
             implements ItemListener {
   private TextField t1, t2;
   private CheckboxGroup group;
   private Checkbox a, s, m, d;

   public void init()
   {
      t1 = new TextField(5);
      add( t1 ); 
      t2 = new TextField(5);
      add( t2 ); 

      group = new CheckboxGroup(); 

      a = new Checkbox( "Add", group, true );
      a.addItemListener( this );
      add( a );
      s = new Checkbox( "Sub", group, false );
      s.addItemListener( this );
      add( s );
      m = new Checkbox( "Mul", group, false );
      m.addItemListener( this );
      add( m );
      d = new Checkbox( "Div", group, false );
      d.addItemListener( this );
      add( d );
   }
   public void itemStateChanged( ItemEvent e )
   {
      float v1, v2, v = 0;
      String s1;

	s1 = t1.getText();
	v1 = Float.valueOf(s1).floatValue();
	s1 = t2.getText();
	v2 = Float.valueOf(s1).floatValue();
 	
      if ( e.getSource() == a ) 
         v = v1 + v2;
      else if ( e.getSource() == s ) 
         v = v1 - v2;
      else if ( e.getSource() == m ) 
         v = v1 * v2;
      else if ( e.getSource() == d ) 
         v = v1 / v2;

	showStatus("ANS = " + v);
   }
}

