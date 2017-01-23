import java.awt.Graphics;
import java.applet.Applet;

public class ContinueLabelTest extends Applet {
   public void paint( Graphics g )
   {
      int xPos, yPos = 0;

      nextRow:   // target label of continue statement
         for ( int row = 1; row <= 5; row++ ) {
            xPos = 25;
            yPos += 15;
   
            for ( int column = 1; column <= 10; column++ ) {
   
               if ( column > row )
                  continue nextRow; // next iteration of
                                    // labeled loop
   
               g.drawString( "#", xPos, yPos );
               xPos += 7;
            }
         }
   }
}
