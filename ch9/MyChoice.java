// Fig. 10.12: MyChoice.java
// Using a Choice button to select a font.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;
//import com.deitel.jhtp2.ch10.FontNameHandler;

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