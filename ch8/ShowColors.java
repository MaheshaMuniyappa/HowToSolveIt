// ShowColors.java
// Demonstrating setting and getting a Color.
import java.applet.Applet;
import java.awt.Graphics;
import java.awt.Color;

public class ShowColors extends Applet {
   private int red, green, blue;

   public void init()
   {
      // set some values
      red = 255;
      green = 255;
      blue = 0;
   }

   public void paint ( Graphics g )
   {
      g.setColor( new Color( red, green, blue ) );
      //g.setColor(Color.green.red);
      g.drawString( "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 50, 33 );
      showStatus("Current RGB: " + g.getColor() );
   } 
}
