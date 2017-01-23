import java.applet.Applet;
import java.util.*;
import java.awt.*;
import java.awt.event.*;

public class Greeting extends Applet
             implements ActionListener {
   Label prompt;
   TextField input;
   
   public void init()
   {
      prompt = new Label( "Enter a sentence " );
      input = new TextField( 10 );
      input.addActionListener( this );
      add( prompt );
      add( input );
   }

   public void actionPerformed( ActionEvent e )
   {      
      String s = e.getActionCommand();
      showStatus("Greeting : " + s);
   }
}

