                       ALGORITH� COMPUTER�      GU� 
                       ------------------�      Topi� � 9
[1� Listin� o� 'MyButtons.java'

//MyButtons.java
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
.pa�[2� Listin� o� 'MyTextfield.java'

// MyTextfield.java
// Demonstrating the TextField class.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyTextfield extends Applet {
   private TextField text1, text2, text3, text4;
   private TextFieldHandler handler;

   public void init()
   {
      setBackground( Color.lightGray );

      // setup handler object
      handler = new TextFieldHandler( this );

      // construct textfield with default sizing
      text1 = new TextField();
      text1.addActionListener( handler );
      add( text1 );

      // construct textfield with default text
      text2 = new TextField( "Enter text here" );
      text2.addActionListener( handler );
      add( text2 );

      // construct textfield with default text
      text3 = new TextField( "Hidden text" );
      text3.setEchoChar( '*' );
      text3.addActionListener( handler );
      add( text3 );

      // construct textfield with default text and
      // 40 visible elements and no event handler
      text4 = new TextField( "Uneditable text field", 40 );
      text4.setEditable( false );
      add( text4 );
   }
}

class TextFieldHandler implements ActionListener {
   private Applet applet;

   public TextFieldHandler( Applet a ) { applet = a; }

   public void actionPerformed( ActionEvent e )
   {
      applet.showStatus( "Text is: " +
         e.getActionCommand() );
   }
}
�[3� Listin� o� 'MyChoice.java'

// MyChoice.java
// Using a Choice button to select a font.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyChoice extends Applet {
   private Choice fonts;
   private TextField t;

   public void init()
   {
      // Create a Choice button and add items to it
      fonts = new Choice();
      fonts.add( "Monospaced" );  // Courier
      fonts.add( "SansSerif" );   // Helvetica
      fonts.add( "Serif" );       // Times

      t = new TextField( fonts.getItem( 0 ), 30 );
      t.setEditable( false );
      t.setFont( new Font( fonts.getItem( 0 ),
         Font.PLAIN, 12 ) );

      fonts.addItemListener( new FontNameHandler( t ) );
      fonts.addItemListener( new SetTextFieldHandler( t ) );

      add( fonts );
      add( t );
   }
}

class SetTextFieldHandler implements ItemListener {
   private TextField field;

   public SetTextFieldHandler( TextField t ) { field = t; }

   public void itemStateChanged( ItemEvent e )
   {
      Choice choice = (Choice) e.getItemSelectable();
         
      field.setText( "Index: " + choice.getSelectedIndex() +
         "; Font: " + e.getItem() );
   }
}

[3.a� Listin� o� 'FontNameHandler.java'

// Fig. 10.12: FontNameHandler.java
// Class capable of listening for events from a Choice
// or List object and setting the font on the specified
// Component passed to the constructor.
import java.awt.*;
import java.awt.event.*;�
public class FontNameHandler implements ItemListener {
   private Component component;

   public FontNameHandler( Component c ) { component = c; }

   public void itemStateChanged( ItemEvent e )
   {
      component.setFont( new Font( e.getItem().toString(),
         component.getFont().getStyle(), 
         component.getFont().getSize() ) );
   }
}

[4� Listin� o� 'MyCheckbox.java'

// MyCheckbox.java
// Creating Checkbox buttons.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyCheckbox extends Applet implements ItemListener {
   private TextField t;
   private Checkbox bold, italic;

   public void init()
   {
      t = new TextField( "Watch the font style change", 40 );
      t.setFont( new Font( "Serif", Font.PLAIN, 14 ) );
      add( t );

      // create checkbox objects
      bold = new Checkbox( "Bold" );
      bold.addItemListener( this );
      add( bold );     

      italic = new Checkbox( "Italic" );
      italic.addItemListener( this );
      add( italic );   
   }

   public void itemStateChanged( ItemEvent e )
   {
      // test state of each Checkbox
      int valBold =
         ( bold.getState() ? Font.BOLD : Font.PLAIN );
      int valItalic =
         ( italic.getState() ? Font.ITALIC : Font.PLAIN );

      t.setFont(
         new Font( "Serif", valBold + valItalic, 14 ) );
   }
}
�[5� Listin� o� 'RadioButton.java'
// RadioButton.java
// Creating radio buttons using CheckboxGroup and Checkbox.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class RadioButton extends Applet
             implements ItemListener {
   private TextField t;
   private Font plainFont, boldFont, italicFont, boldItalicFont;
   private CheckboxGroup fontStyle;
   private Checkbox plain, bold, italic, boldItalic;

   public void init()
   {
      t = new TextField( "Watch the font style change", 40 );
      add( t ); 

      // Create CheckboxGroup to maintain radio buttons
      fontStyle = new CheckboxGroup(); 

      plain = new Checkbox( "Plain", fontStyle, true );
      plain.addItemListener( this );
      add( plain );
      bold = new Checkbox( "Bold", fontStyle, false );
      bold.addItemListener( this );
      add( bold );
      italic = new Checkbox( "Italic", fontStyle, false );
      italic.addItemListener( this );
      add( italic );
      boldItalic = new Checkbox( "Bold/Italic",
                                 fontStyle, false );
      boldItalic.addItemListener( this );
      add( boldItalic );

      plainFont = new Font( "Serif", Font.PLAIN, 14 );
      boldFont = new Font( "Serif", Font.BOLD, 14 );
      italicFont = new Font( "Serif", Font.ITALIC, 14 );
      boldItalicFont = new Font( "Serif",
                                 Font.BOLD + Font.ITALIC, 14 );
      t.setFont( plainFont );
   }
   public void itemStateChanged( ItemEvent e )
   {
      if ( e.getSource() == plain ) 
         t.setFont( plainFont );
      else if ( e.getSource() == bold ) 
         t.setFont( boldFont );
      else if ( e.getSource() == italic ) 
         t.setFont( italicFont );
      else if ( e.getSource() == boldItalic ) 
         t.setFont( boldItalicFont );
   }
}�[6� Listin� o� 'MyList.java'

// MyList.java
// Creating a List.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyList extends Applet
             implements ActionListener, ItemListener {
   private List colorList;

   private String colorNames[] =
      { "Black", "Blue", "Cyan", "Dark Gray", "Gray", "Green",
        "Light Gray", "Magenta", "Orange", "Pink", "Red",
        "White", "Yellow" };

   private Color colors[] =
      { Color.black, Color.blue, Color.cyan, Color.darkGray,
        Color.gray, Color.green, Color.lightGray,
        Color.magenta, Color.orange, Color.pink, Color.red,
        Color.white, Color.yellow };

   public void init()
   {
      // create a list with 5 items visible
      // do not allow multiple selections
      colorList = new List( 5, false );
      colorList.addActionListener( this );
      colorList.addItemListener( this );

      // add items to the list
      for ( int i = 0; i < colorNames.length; i++ )
         colorList.add( colorNames[ i ] );

      // add list to applet
      add( colorList );
   }

   public void actionPerformed( ActionEvent e )
   {
      setBackground( colors[ colorList.getSelectedIndex() ] );
      repaint();     // update applet              
   }

   public void itemStateChanged( ItemEvent e )
   {
      showStatus( colorList.getSelectedItem() + "; index " +
                  colorList.getSelectedIndex() );
   }
}
.pa�[7� Listin� o� 'MouseTracker.java'

// MouseTracker.java
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
}
�[8� Listin� o� 'FlowLayoutDemo.java'

// FlowLayoutDemo.java
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
.pa�[9� Listin� o� 'Border.java'

// Border.java
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
.pa�[10� Listin� o� 'Grid.java'

// Grid.java
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
