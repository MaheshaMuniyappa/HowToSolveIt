// Fig. 10.8: MyButtons.java
// Creating push buttons.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyButtons extends Applet {
   private Button pushButton1, pushButton2;

   public void init()
   {
      // create buttons
      pushButton1 = new Button( "Button 1" );
      pushButton1.addActionListener(
         new Button1Handler( this ) );
      add( pushButton1 );

      pushButton2 = new Button( "Button 2" );
      pushButton2.addActionListener(
         new Button2Handler( this ) );
      add( pushButton2 );
   }
}

class Button1Handler implements ActionListener {
   Applet applet;

   public Button1Handler( Applet a ) { applet = a; }

   public void actionPerformed( ActionEvent e )
   {
      applet.showStatus( "You pressed: " +
         e.getActionCommand() );
   }
}

class Button2Handler implements ActionListener {
   Applet applet;

   public Button2Handler( Applet a ) { applet = a; }

   public void actionPerformed( ActionEvent e )
   {
      applet.showStatus( "You pressed: " +
         e.paramString() );
   }
}
