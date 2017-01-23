// Fig. 5.5: InitArray.java
// initialize array s to the even integers from 2 to 20
import java.awt.Graphics;
import java.applet.Applet;

public class InitArray2 extends Applet {
   final int ARRAY_SIZE = 10;
   int s[];

   // initialize instance variables
   public void init()
   {
   		
      s = new int[ ARRAY_SIZE ];

      // Set the values in the array
      for ( int i = 0; i < s.length; i++ ) 
         s[ i ] = 2 + 2 * i;
   }

   // paint the applet
   public void paint( Graphics g )
   {
      int yPosition = 25;   // starting y position on applet

      g.drawString( "Element", 25, yPosition );
      g.drawString( "Value", 100, yPosition );
   
      for ( int i = 0; i < s.length; i++ ) {
         yPosition += 15;
         g.drawString( Integer.toString( i ), 25, yPosition );
         g.drawString( String.valueOf( s[ i ] ),
                       100, yPosition );
      }
   }
}