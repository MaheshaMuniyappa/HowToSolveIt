import java.applet.*;
import java.awt.*;
import java.awt.event.*;

public class MyCalc extends Applet
             implements ActionListener {
     private Button b1, b2;
     TextField t1, t2;
  
   public void init()
   {
      t1 = new TextField(5);
      add(t1);
      t2 = new TextField(5);
      add(t2);
      b1 = new Button( "Add" );
      b1.addActionListener( this );
      add( b1 );

      b2 = new Button( "Multiply" );
      b2.addActionListener( this );
      add( b2 );
   }

   public void actionPerformed( ActionEvent e )
   {
      String s;
      int v1, v2, ans=0; 
      s = t1.getText();  v1 = Integer.parseInt(s);
      s = t2.getText();  v2 = Integer.parseInt(s);
      if ( e.getSource() == b1 ) 
         ans = v1 + v2;
      else if ( e.getSource() == b2 ) 
         ans = v1 * v2;
      showStatus("ANS = " + ans);
   }
}
