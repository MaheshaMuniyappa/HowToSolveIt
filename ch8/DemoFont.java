// DemoFont.java
// Demonstrating the Font constants, the Font constructor
// and the setFont method
import java.applet.Applet;
import java.awt.*;
import java.awt.Font;

public class DemoFont extends Applet {  
   private Font font1, font2, font3; 

   public void init()
   {
      // create a font object: 12-point bold times roman
      
      font1 = new Font( "Serif", Font.BOLD | Font.ITALIC, 30 );

      // create a font object: 24-point italic courier
      font2 = new Font( "Monospaced", Font.ITALIC, 24 );

      // create a font object: 14-point plain helvetica
      font3 = new Font( "SansSerif", Font.PLAIN, 14 );
   }
   public void paint( Graphics g )
   {
      // set the current font to font1
      g.setFont( font1 );
			 g.setColor(Color.red);
      // draw a string in font font1
      g.drawString( "Serif 30 point bold+italic.", 20, 20 );

      // change the current font to font2
      g.setFont( font2 );
      g.setColor(Color.blue);

      // draw a string in font font2
      g.drawString( "Monospaced 24 point italic.", 20, 40 );

      // change the current font to font3
      g.setFont( font3 );

      // draw a string in font font3
      g.drawString( "SansSerif 14 point plain.", 20, 60 );
  }
}