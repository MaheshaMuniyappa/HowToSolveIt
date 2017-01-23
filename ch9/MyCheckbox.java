// Fig. 10.14: MyCheckbox.java
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
      t.setFont( new Font( "Serif", Font.PLAIN, 24 ) );
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
         new Font( "Serif", valBold + valItalic, 24 ) );
   }
}