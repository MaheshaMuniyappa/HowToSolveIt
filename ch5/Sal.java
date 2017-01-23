import java.awt.*;
import java.applet.Applet;
import java.awt.event.*;

public class Sal extends Applet
             implements ActionListener {
   Label prompt;      
   TextField input;   

   int sal=5000;

   public void init()
   {
      prompt = new Label( "Enter Expected Salary" );
      input = new TextField( 10 );
      input.addActionListener( this );
      add( prompt );
      add( input );
   }

   public void paint( Graphics g )
   {
      if(sal > 30000) g.drawString( sal + " is too much", 50, 70);
      else g.drawString( sal + " is ok", 50, 70);
   }

   public void actionPerformed( ActionEvent e )
   {
      String val = e.getActionCommand();   
      sal = Integer.parseInt(val);
      repaint();  
   }
}
