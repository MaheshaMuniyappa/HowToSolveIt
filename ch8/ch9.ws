               ALGORITHÕ COMPUTER”   Graphics¨ Images¨ Sound
               ------------------≠   Topi„ ≠ 8
[1› Graphics:

     ThÂ †GraphicÛ clasÛ availablÂ iÓ awÙ (abstracÙ windowÛ †tooÏ ç
kit© packagÂ iÛ ver˘ usefuÏ foÚ drawinÁ lines¨ shapes¨ fontÛ etc.

[1.1› ListinÁ oÊ 'ShowColors.java'

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
      red = 100;
      blue = 255;
      green = 125;
   }

   public void paint ( Graphics g )
   {
      g.setColor( new Color( red, green, blue ) );
      g.drawString( "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 50, 33 );
      showStatus( "Current RGB: " + g.getColor() );
   } 
}

[1.2› ListinÁ oÊ 'DemoFont.java'

// DemoFont.java
// Demonstrating the Font constants, the Font constructor
// and the setFont method
import java.applet.Applet;
import java.awt.Graphics;
import java.awt.Font;

public class DemoFont extends Applet {  
   private Font font1, font2, font3; 

   public void init()
   {
      // create a font object: 12-point bold times roman
      font1 = new Font( "Serif", Font.BOLD, 12 );

      // create a font object: 24-point italic courier
      font2 = new Font( "Monospaced", Font.ITALIC, 24 );

      // create a font object: 14-point plain helveticaä      font3 = new Font( "SansSerif", Font.PLAIN, 14 );
   }
   public void paint( Graphics g )
   {
      // set the current font to font1
      g.setFont( font1 );

      // draw a string in font font1
      g.drawString( "Serif 12 point bold.", 20, 20 );

      // change the current font to font2
      g.setFont( font2 );

      // draw a string in font font2
      g.drawString( "Monospaced 24 point italic.", 20, 40 );

      // change the current font to font3
      g.setFont( font3 );

      // draw a string in font font3
      g.drawString( "SansSerif 14 point plain.", 20, 60 );
  }
}

[1.3› ListinÁ oÊ 'RandLines.java'

import java.applet.Applet;
import java.awt.*;

public class RandLines extends Applet
{
	public void paint(Graphics g)
	{
		for(int i = 0; i < 100; i++) {
			int x1 = (int)(Math.random()*200);
			int x2 = (int)(Math.random()*200);
			int y1 = (int)(Math.random()*200);
			int y2 = (int)(Math.random()*200);
			
			int red = (int)(1 + Math.random()*255);
			int green = (int)(1 + Math.random()*255);
			int blue = (int)(1 + Math.random()*255);

			Color c = new Color(red,green,blue);
			
			g.setColor(c);
			g.drawLine(x1,y1,x2,y2);
		}
	}
}

.paä[1.4› ListinÁ oÊ 'DemoCopyArea.java'

// Fig. 9.38: DemoCopyArea.java
// Demonstrate copying one area of the screen to another
// area of the screen
import java.applet.Applet;
import java.awt.Graphics;

public class DemoCopyArea extends Applet {

   // coordinates for first polygon
   int xValues[] = { 20, 40, 50, 30, 20, 15, 20 };
   int yValues[] = { 20, 20, 30, 50, 50, 30, 20 };

   // coordinates for second polygon
   int xValues2[] = { 70, 90, 100, 80, 70, 65, 60, 70 };
   int yValues2[] = { 70, 70, 80, 100, 100, 80, 60, 70 };

   public void paint( Graphics g )
   {
      // draw a polygon of 7 points
      g.drawPolygon( xValues, yValues, 7 );

      // draw a filled polygon of 8 points
      g.fillPolygon( xValues2, yValues2, 8 );

      // copy 100 x 100 area of applet to (140, 10)
      g.copyArea( 0, 0, 100, 100, 140, 10 );
   }
}

[1.5› ListinÁ oÊ 'PaintMode.java'

// Fig. 9.39: PaintMode.java
// Demonstrating the XOR paint mode
import java.applet.Applet;
import java.awt.Graphics;
import java.awt.Color;

public class PaintMode extends Applet {

   public void paint( Graphics g )
   {
      // draw pink oval
      g.setColor( Color.pink );        
      g.fillOval( 20, 10, 100, 50 );

      // draw a yellow rectangle over part of the oval
      g.setColor( Color.yellow );
      g.fillRect( 100, 10, 100, 50 );

      // draw an orange rectangle
      g.setColor( Color.orange );
      g.fillRect( 190, 10, 80, 50 );
ä      // set XOR mode to yellow
      g.setXORMode( Color.yellow );
      g.fillOval( 180, 25, 60, 20 );

      // draw a blue arc
      g.setColor( Color.blue );
      g.fillArc( 150, 20, 20, 20, 0, 360 );

      // draw a red square
      g.setColor( Color.red );
      g.fillRect( 120, 25, 20, 20 );
   } 
}


[2› Images:
-----------
     ¡ †ne˜ †imagÂ caÓ bÂ create‰ b˘ †'createImage()ß †metho‰ †oÊ ç
ComponenÙ clasÛ oÊ java.awÙ packageÆ CreatinÁ ouÚ owÓ imageÛ †arÂ ç
ver˘ usefuÏ foÚ doublÂ buffeÚ technique.

Ex∫    CanvaÛ „ Ω ne˜ Canvas();
       ImagÂ tesÙ Ω c.createImage(200,100);
       GraphicÛ Á Ω test.getGraphics();
       g.fillRect(0,0,100,50);

ExistinÁ imageÛ caÓ bÂ goÙ througË getImage(© an‰ drawÓ b˘ †usinÁ ç
drawImage(© methods.

     MediaTrackeÚ †iÛ aÓ objecÙ thaÙ wilÏ checÎ thÂ statuÛ oÊ †aÓ ç
imagÂ †tÔ †seÂ iÊ iÙ iÛ loade‰ fullyÆ ThiÛ caÓ bÂ use‰ †tÔ †avoi‰ ç
flickerinÁ iÓ loadinÁ images.

     MemoryImageSourcÂ †iÛ · clasÛ thaÙ createÛ · ne˜ ImagÂ †froÌ ç
aÓ arra˘ oÊ data.
     
     PixelGrabbeÚ clasÛ iÛ thÂ inversÂ oÊ thÂ MemoryImageSource.

     CropImageFilteÚ †filterÛ aÓ imagÂ tÔ extracÙ †· †rectangulaÚ ç
regionÆ †OnÂ placÂ thiÛ filteÚ iÛ valuablÂ iÛ wherÂ yoı †wanÙ †tÔ ç
usÂ · numbeÚ oÊ smalÏ imageÛ froÌ · singlÂ largÂ sourcÂ image.

     RGBImageFilteÚ †iÛ †use‰ tÔ converÙ onÂ †imagÂ †tÔ †another¨ ç
pixeÏ †b˘ †pixel¨ †transforminÁ thÂ colorÛ alonÁ †thÂ †wayÆ †ThiÛ ç
filteÚ †coul‰ †bÂ †use‰ tÔ brighteÓ aÓ †image¨ †tÔ †increasÂ †itÛ ç
contrast¨ oÚ eveÓ tÔ converÙ iÙ tÔ grayscale.
.paä[2.1› ListinÁ oÊ 'LoadImageAndScale.java'

// Fig. 14.1: LoadImageAndScale.java
// Load an image and display it in its original size
// and scale it to twice its original width and height.
import java.applet.Applet;
import java.awt.*;

public class LoadImageAndScale extends Applet {
   private Image deitel;  

   // load the image when the applet begins executing
   public void init()
   {
      deitel = getImage( getDocumentBase(),
                         "deitel0.gif" );
   }

   // display the image
   public void paint( Graphics g )
   {
      // draw the original image
      g.drawImage( deitel, 1, 1, this );

      // draw the image with its width and height doubled
      int width = deitel.getWidth( this );
      int height = deitel.getHeight( this );
      g.drawImage( deitel, 1, 90, width * 2,
                   height * 2, this );
   }
}

[3› Audio:
----------
[3.1› ListinÁ oÊ 'LoadAudioAndPlay.java'

// Fig. 14.1: LoadAudioAndPlay.java
// Load an audio clip and play it.
import java.applet.*;
import java.awt.*;
import java.awt.event.*;

public class LoadAudioAndPlay extends Applet
             implements ActionListener {
   private AudioClip sound;  
   private Button playSound, loopSound, stopSound;

   // load the image when the applet begins executing
   public void init()
   {
      sound = getAudioClip( getDocumentBase(), "hi.au" );
      playSound = new Button( "Play" );
      playSound.addActionListener( this );
      add( playSound );
      loopSound = new Button( "Loop" );ä      loopSound.addActionListener( this );
      add( loopSound );
      stopSound = new Button( "Stop" );
      stopSound.addActionListener( this );
      add( stopSound );
   }

   public void actionPerformed( ActionEvent e )
   {
      if ( e.getSource() == playSound ) 
         sound.play();
      else if ( e.getSource() == loopSound ) 
         sound.loop();
      else if ( e.getSource() == stopSound ) 
         sound.stop();
   }
}
