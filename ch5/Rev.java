import java.awt.*;
import java.applet.Applet;
import java.awt.event.*;

public class Rev extends Applet
             implements ActionListener {
   Label prompt;      
   TextField input;   

  
   public void init()
   {
      prompt = new Label( "Enter your Name" );
      input = new TextField( 20 );
      input.addActionListener( this );
      add( prompt );
      add( input );
   }

   
   public void actionPerformed( ActionEvent e )
   {
      String val = e.getActionCommand();   
      StringBuffer buf = new StringBuffer(val);
      buf.reverse();
      val = buf.toString();
      showStatus("REVERSE IS " + val);
   }
}
