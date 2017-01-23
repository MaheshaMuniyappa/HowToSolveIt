import java.awt.*;
import java.awt.event.*;

public class MyMenu extends Frame
      implements ActionListener {
  
   private MenuBar bar;
   private Menu calc;
   private MenuItem add, mul;
   TextField t1, t2;
   Label l1;


   public MyMenu() 
   {
      super( "Calc Application" );
      setSize( 300, 200 );
      setLayout(new FlowLayout());

      t1 = new TextField(5);
      add(t1);

      t2 = new TextField(5);
      add(t2);
      
      l1 = new Label("ANS");
      add(l1); 
     
      bar = new MenuBar();

      calc = new Menu( "Calculate" );

      add = new MenuItem( "Add" );
      add.addActionListener( this );
      mul = new MenuItem( "Mul" );
      mul.addActionListener( this );

      calc.add( add );
      calc.add(mul);
      bar.add( calc );

     
      setMenuBar( bar );
 
      setVisible( true );
   }

   public void actionPerformed( ActionEvent e )
   {
     float v1, v2, v=0;
     String s;

     s = t1.getText();
     v1 = Float.valueOf(s).floatValue();
     s = t2.getText();
     v2 = Float.valueOf(s).floatValue();

     if(e.getSource() == add) v = v1 + v2;
     else v = v1 * v2;
     
     l1.setText("ANS=" + v); 

   }

   public static void main(String[] args)
   {
     MyMenu obj = new MyMenu();
     obj.addWindowListener(
       new WindowAdapter() 
       {   
         public void windowClosing(WindowEvent e1)
         {
           System.exit(0);
         }
       }
     );
   } 
}




















