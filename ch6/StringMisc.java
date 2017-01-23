// Fig. 8.2: StringMisc.java
// This program demonstrates the length, charAt and getChars
// methods of the String class.
//
// Note: Method getChars requires a starting point
// and ending point in the String. The starting point is the
// actual subscript from which copying starts. The ending point
// is one past the subscript at which the copying ends.
import java.awt.Graphics;
import java.applet.Applet;

public class StringMisc extends Applet {
   String s1;
   char charArray[];

   public void init()
   {
      s1 = new String( "hello there" );
      charArray = new char[ 5 ];
   }

   public void paint( Graphics g )
   {
      // output the string
      g.drawString( "s1: " + s1, 25, 25 );

      // test the length method
      g.drawString( "Length of s1: " + s1.length(), 25, 40 );

      // loop through the characters in s1 and display reversed
      g.drawString( "The string reversed is: ", 25, 55 );
      int xPosition = 155;

      for ( int i = s1.length() - 1; i >= 0; i-- ) {
         g.drawString( String.valueOf( s1.charAt( i ) ),
                       xPosition, 55 );
         xPosition += 10;
      }

      // copy characters from string into char array
      s1.getChars( 0, 5, charArray, 0 );
      g.drawString( "The character array is: ", 25, 70 );
      g.drawChars( charArray, 0, charArray.length, 158, 70 );
   }
}