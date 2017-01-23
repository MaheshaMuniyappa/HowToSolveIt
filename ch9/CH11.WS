                       ALGORITHÍ COMPUTERÓ   Basiã GUÉ ­ II
                       -------------------
[1Ý Listinç oæ 'MouseTracker.java'
// Fig. 10.19: MouseTracker.java
// Demonstrating mouse events.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MouseTracker extends Applet
             implements MouseListener, MouseMotionListener {
   private int xPos, yPos = -10;  // off screen for 1st paint
   private String s = "";

   public void init()
   {
      // applet listens to its own mouse events
      addMouseListener( this );
      addMouseMotionListener( this );
   }
   public void paint( Graphics g )
   {
      g.drawString( s + " @ [" + xPos + ", " + yPos + "]",
                    xPos, yPos );
   }
   private void setValues( String event, int x, int y )
   {
      s = event;
      xPos = x;
      yPos = y;
      repaint();
   }
   // MouseListener event handlers
   public void mouseClicked( MouseEvent e )
      { setValues( "Clicked", e.getX(), e.getY() ); }

   public void mousePressed( MouseEvent e )
      { setValues( "Pressed", e.getX(), e.getY() ); }

   public void mouseReleased( MouseEvent e )
      { setValues( "Released", e.getX(), e.getY() ); }

   public void mouseEntered( MouseEvent e )
      { showStatus( "Mouse in applet area" ); }

   public void mouseExited( MouseEvent e )
      { showStatus( "Mouse outside applet area" ); }

   // MouseMotionListener event handlers
   public void mouseDragged( MouseEvent e )
      { setValues( "Dragging", e.getX(), e.getY() ); }

   public void mouseMoved( MouseEvent e )
      { setValues( "Moving", e.getX(), e.getY() ); }
}Š[2Ý Listinç oæ 'Drag.java'

// Fig. 10.21: Drag.java
// Using the MouseMotionAdapter class. 
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class Drag extends Applet {
   private int xValue = -10, yValue = -10;

   public void init()
   {
      addMouseMotionListener( new MotionHandler( this ) );
   }

   public void paint( Graphics g )
   {
      g.drawString( "Drag the mouse to draw", 10, 20 );
      g.fillOval( xValue, yValue, 4, 4 );
   }

   // Override Component class update method to allow all ovals
   // to remain on the screen by not clearing the background.
   public void update( Graphics g ) { paint( g ); } 

   // set the drawing coordinates and repaint
   public void setCoordinates( int x, int y )
   {
      xValue = x;
      yValue = y;
      repaint();
   }
}

// Class to handle only mouse drag events for the Drag applet
class MotionHandler extends MouseMotionAdapter {
   private Drag dragger;

   public MotionHandler( Drag d ) { dragger = d; }

   public void mouseDragged( MouseEvent e )
      { dragger.setCoordinates( e.getX(), e.getY() ); }
}

.paŠ[3Ý Listinç oæ 'Key.java'
// Fig. 10.24: Key.java
// Demonstrating keystroke events.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class Key extends Applet implements KeyListener {
   private String line1 = "";
   private String line2 = "";
   private String line3 = "";

   public void init()
   {
      // allow applet to process Key events
      addKeyListener( this );
      // make applet the active component for key events
      requestFocus();
   }
   public void paint( Graphics g )
   {
      g.drawString( line1, 25, 25 );
      g.drawString( line2, 25, 40 );
      g.drawString( line3, 25, 55 );
   }
   public void keyPressed( KeyEvent e )
   {
      line1 = "Key pressed: " + e.getKeyText( e.getKeyCode() );
      setLines2and3( e );
   }
   public void keyReleased( KeyEvent e )
   {
      line1 = "Key released: " +
               e.getKeyText( e.getKeyCode() );
      setLines2and3( e );
   }
   public void keyTyped( KeyEvent e )
   {
      line1 = "Key typed: " + e.getKeyChar();
      setLines2and3( e );
   }
   private void setLines2and3( KeyEvent e )
   {
      line2 = "This key is " +
              ( e.isActionKey() ? "" : "not " ) +
              "an action key";

      String temp = 
         e.getKeyModifiersText( e.getModifiers() );

      line3 = "Modifier keys pressed: " +
              ( temp.equals( "" ) ? "none" : temp );
      repaint();
   }
}Š[4Ý Listinç oæ 'FlowLayoutDemo.java'

// Fig. 10.27: FlowLayoutDemo.java
// Demonstrating FlowLayout alignments.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class FlowLayoutDemo extends Applet
             implements ActionListener {
   private Button left, center, right;
   
   public void init()
   {
      left = new Button( "Left" );
      left.addActionListener( this );
      add( left );

      center = new Button( "Center" );
      center.addActionListener( this );
      add( center );

      right = new Button( "Right" );
      right.addActionListener( this );
      add( right );
   }

   public void actionPerformed( ActionEvent e )
   {
      int align;

      if ( e.getSource() == left )
         align = FlowLayout.LEFT;
      else if ( e.getSource() == center )
         align = FlowLayout.CENTER;
      else
         align = FlowLayout.RIGHT;

      setLayout( new FlowLayout( align ) );
      validate();  // re-align attached components
   }
}
.paŠ[5Ý Listinç oæ 'Border.java'

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
.paŠ[6Ý Listinç oæ 'Grid.java'

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
.paŠ[7Ý Listinç oæ 'PanelDemo.java'

// Fig. 10.32: PanelDemo.java
// Using a panel to help layout components.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class PanelDemo extends Applet {
   private Panel buttonPanel;
   private Button buttons[];

   public void init()
   {
      buttonPanel = new Panel();
      buttons = new Button[ 5 ];

      buttonPanel.setLayout(
         new GridLayout( 1, buttons.length ) );

      for ( int i = 0; i < buttons.length; i++ ) {
         buttons[ i ] = new Button( "Button " + (i + 1) );
         buttonPanel.add( buttons[ i ] );
      }

      setLayout( new BorderLayout() );
      add( buttonPanel, BorderLayout.SOUTH );
   }
}
