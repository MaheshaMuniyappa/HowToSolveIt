
[4Ý Listinç oæ 'SwitchTest.java'
// Fig. 3.7: SwitchTest.java
// Counting letter grades
import java.awt.*;
import java.applet.Applet;
import java.awt.event.*;

public class SwitchTest extends Applet
             implements ActionListener {
   Label prompt;      // label for text field
   TextField input;   // text field to enter grades

   int aCount = 0, bCount = 0, cCount = 0,
       dCount = 0, fCount = 0;

   public void init()
   {
      prompt = new Label( "Enter grade" );
      input = new TextField( 2 );
      input.addActionListener( this );
      add( prompt );
      add( input );
   }

   public void paint( Graphics g )
   {
      g.drawString( "Totals for each letter grade:", 25, 40 );
      g.drawString( "A: " + aCount, 25, 55 );
      g.drawString( "B: " + bCount, 25, 70 );
      g.drawString( "C: " + cCount, 25, 85 );
      g.drawString( "D: " + dCount, 25, 100 );
      g.drawString( "F: " + fCount, 25, 115 );
   }

   public void actionPerformed( ActionEvent e )
   {
      String val = e.getActionCommand();   
      char grade = val.charAt( 0 );  

      showStatus( "" );       // clear status bar area
      input.setText( "" );    // clear input text field

      switch ( grade ) {      

         case 'A': case 'a':  // Grade was uppercase A
            ++aCount;         // or lowercase a.
            break;

         case 'B': case 'b':  // Grade was uppercase BŠ            ++bCount;         // or lowercase b.
            break;

         case 'C': case 'c':  // Grade was uppercase C
            ++cCount;         // or lowercase c.
            break;

         case 'D': case 'd':  // Grade was uppercase D
            ++dCount;         // or lowercase d.
            break;

         case 'F': case 'f':  // Grade was uppercase F
            ++fCount;         // or lowercase f.
            break;

         default:             // catch all other characters
            showStatus( "Incorrect grade. Enter new grade." );
            break;
      }

      repaint();  // display summary of results
   }
}
