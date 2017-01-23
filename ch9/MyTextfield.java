// Fig. 10.10: MyTextfield.java
// Demonstrating the TextField class.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class MyTextfield extends Applet {
   private TextField text1, text2, text3, text4;
   private TextFieldHandler handler;

   public void init()
   {
      setBackground( Color.red);

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