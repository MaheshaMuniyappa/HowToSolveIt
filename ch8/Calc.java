import java.applet.*;
import java.awt.*;
import java.awt.event.*;

public class Calc extends Applet
             implements ActionListener {
   
   private Button b1, b2, b3, b4;
   TextField t1, t2;

   public void init()
   {
      setLayout(new GridLayout(3, 2));
      
      b1 = new Button( "Add" );
      b1.addActionListener( this );
      add( b1 );
      b2 = new Button( "Sub" );
      b2.addActionListener( this );
      add( b2 );
      b3 = new Button( "Mul" );
      b3.addActionListener( this );
      add( b3 );
      b4 = new Button( "Div" );
      b4.addActionListener( this );
      add( b4 );

      t1 = new TextField(5);
      add(t1);
      t2 = new TextField(5);
      add(t2);
   }

   public void actionPerformed( ActionEvent e )
   {
      String str;
      float v1, v2, ans;

      str = t1.getText();
      v1 = Float.valueOf(str).floatValue();
      str = t2.getText();
      v2 = Float.valueOf(str).floatValue();


      if ( e.getSource() == b1 ) 
         ans = v1 + v2;
      else if ( e.getSource() == b2 ) 
         ans = v1 - v2;
      else if ( e.getSource() == b3) 
         ans = v1 * v2;
       else 
	 ans = v1 / v2;

	showStatus("ANS = " + ans);
   }
}
