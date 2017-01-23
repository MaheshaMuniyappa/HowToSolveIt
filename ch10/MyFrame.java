// Fig. 11.10: MyFrame.java
// Creating a subclass of Frame.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;
//import com.deitel.jhtp2.ch11.ColorFrame;
//import com.deitel.jhtp2.ch11.CloseWindowAndExit;

public class MyFrame extends Applet implements ActionListener {
   private ColorFrame f;
   private Button showFrame;

   public void init() 
   {
      showFrame = new Button( "Show frame" );
      add( showFrame );
      showFrame.addActionListener( this );

      f = new ColorFrame( "Select a color" );
   }

   public void actionPerformed( ActionEvent e )
   {
      f.setVisible( true );  // show the frame
   }

   // Allow this applet to run as an application also
   
}