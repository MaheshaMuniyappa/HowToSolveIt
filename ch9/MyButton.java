import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyButton extends Applet {
   Button b1;
   Button1Handler h;

   public void init()
   {
      h = new Button1Handler(this);
      b1 = new Button( "Hi" );
      b1.addActionListener(h);
      add( b1 );
   }
}

class Button1Handler implements ActionListener {
   Applet applet;

   public Button1Handler( Applet a ) { applet = a; }

   public void actionPerformed( ActionEvent e )
   {
      applet.showStatus( "Hello" );
   }
}
