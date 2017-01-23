import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyCurrency extends Applet implements ItemListener {
   private TextField t;
   private CheckboxGroup fontStyle;
   private Checkbox first, second;

   public void init()
   {
      t = new TextField( 10 );
      add( t ); 

      fontStyle = new CheckboxGroup(); 

      first = new Checkbox( "Rupee to $", fontStyle, true );
      first.addItemListener( this );
      add( first );
      second = new Checkbox( "$ to Rupee", fontStyle, false );
      second.addItemListener( this );
      add( second );
      
      
   }
   public void itemStateChanged( ItemEvent e )
   {
      String s = t.getText();
      float val = Float.valueOf(s).floatValue();
      float ans = 0.0f;

      if ( e.getSource() == first ) 
      {   ans = val * 0.025f; showStatus(val + " Ruppes = " + ans + " $s"); }
      else if ( e.getSource() == second ) 
      {   ans = 40 * val; showStatus(val + " $s = " + ans + " Rupees"); }
     }
}
