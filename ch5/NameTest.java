import java.awt.*;
import java.applet.Applet;
import java.awt.event.*;

public class NameTest extends Applet
             implements ActionListener {
   Label prompt;      
   TextField input;   

   String val = "";

   public void init()
   {
      prompt = new Label( "Enter grade" );
      input = new TextField( 10 );
      input.addActionListener( this );
      add( prompt );
      add( input );
   }

   public void paint( Graphics g )
   {
      g.drawString( "Hello Mr." + val, 25, 40 );
   }

   public void actionPerformed( ActionEvent e )
   {
      val = e.getActionCommand();   
      repaint();  
   }
}
