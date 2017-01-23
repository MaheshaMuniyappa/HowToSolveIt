import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyChoice2 extends Applet implements ItemListener {
   private Choice fonts;
   private TextField t1, t2;

   public void init()
   {
       fonts = new Choice();
      fonts.add( "Add" );  
      fonts.add( "Subtract" );
      fonts.add( "Multiply" );  
      fonts.add("Divide"); 

      t1 = new TextField( 20 );
      t2 = new TextField( 20 );      

      fonts.addItemListener( this );

      add( fonts );
      add( t1 );
      add(t2);
   }
   public void itemStateChanged( ItemEvent e )
   {
      String s;
      int v1, v2, ans, ind;
      ind = fonts.getSelectedIndex();
      s = t1.getText(); v1 = Integer.parseInt(s);
      s = t2.getText(); v2 = Integer.parseInt(s);

      switch(ind)
      {
        case 0: ans = v1 + v2; showStatus("SUM = " + ans); break;
        case 1: ans = v1 - v2; showStatus("DIFF = " + ans); break;
        case 2: ans = v1 * v2; showStatus("PROD = " + ans); break;
        case 3: ans = v1 / v2; showStatus("DIV = " + ans); break;
      }
   }
}
