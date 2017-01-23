// Fig. 10.31: Grid.java
// Demonstrating GridLayout.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class Grid extends Applet implements ActionListener {
   private Button b[];
   private String names[] =
      { "one", "two", "three", "four", "five", "six" };
   private boolean toggle = true;    

   public void init()
   {
      // set layout to grid layout
      setLayout( new GridLayout( 2, 3, 5, 5 ) );

      // create and add buttons
      b = new Button[ names.length ];

      for (int i = 0; i < names.length; i++ ) {
         b[ i ] = new Button( names[ i ] );
         b[ i ].addActionListener( this );
         add( b[ i ] );
      }
   }

   public void actionPerformed( ActionEvent e )
   { 
      if ( toggle )
         setLayout( new GridLayout( 3, 2 ) );
      else
         setLayout( new GridLayout( 2, 3, 5, 5 ) );

      toggle = !toggle;
      validate();
   }
}
