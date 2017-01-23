// Fig. 14.1: LoadAudioAndPlay.java
// Load an audio clip and play it.
import java.applet.*;
import java.awt.*;
import java.awt.event.*;

public class Audio extends Applet
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
      loopSound = new Button( "Loop" );
      loopSound.addActionListener( this );
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
