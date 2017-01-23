// Fig. 10.27: FlowLayoutDemo.java
// Demonstrating FlowLayout alignments.
import java.applet.Applet;
import java.awt.*;
import java.awt.event.*;

public class FlowLayoutDemo extends Applet
             implements ActionListener {
   private Button left, center, right;
   
   public void init()
   {
      left = new Button( "Left" );
      left.addActionListener( this );
      add( left );
      
	    //left.setBackground(Color.red);
      //left.setFont(new Font("Dialog", Font.ITALIC, 20));
        

	    center = new Button( "Center" );
      center.addActionListener( this );
      add( center );

      right = new Button( "Right" );
      right.addActionListener( this );
      add( right );
   }

   public void actionPerformed( ActionEvent e )
   {
      int align;

      if ( e.getSource() == left )
         align = FlowLayout.LEFT;
      else if ( e.getSource() == center )
         align = FlowLayout.CENTER;
      else
         align = FlowLayout.RIGHT;

      setLayout( new FlowLayout( align ) );
      validate();  // re-align attached components
   }
}