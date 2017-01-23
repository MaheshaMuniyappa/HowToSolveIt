// Fig. 10.29: Border.java
// Demonstrating BorderLayout.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class Border extends Applet implements ActionListener {
   private Button b[];
   private String names[] =
      { "Hide North", "Hide South", "Hide East",
        "Hide West", "Hide Center" };

   public void init()
   {
      // set layout to border layout
      setLayout( new BorderLayout( 5, 5 ) );

      // instantiate button objects
      b = new Button[ names.length ];

      for ( int i = 0; i < names.length; i++ ) {
         b[ i ] = new Button( names[ i ] );
         b[ i ].addActionListener( this );
      }

      // order not important
      add( b[ 0 ], BorderLayout.NORTH );  // North position
      add( b[ 1 ], BorderLayout.SOUTH );  // South position
      add( b[ 2 ], BorderLayout.EAST );     // East position
      add( b[ 3 ], BorderLayout.WEST );    // West position
      add( b[ 4 ], BorderLayout.CENTER );  // Center position
   }

   public void actionPerformed( ActionEvent e )
   {
      for ( int i = 0; i < b.length; i++ ) 
         if ( e.getSource() == b[ i ] )
            b[ i ].setVisible( false );
         else
            b[ i ].setVisible( true );

      validate();
   }
}
