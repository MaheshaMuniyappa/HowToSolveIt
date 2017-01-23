import java.applet.Applet;
import java.util.*;
import java.awt.*;
import java.awt.event.*;

public class TokenTest2 extends Applet
             implements ActionListener {
   // GUI components
   Label prompt;
   TextField input;
   TextArea output;
   float x[] = new float[20];

   public void init()
   {
      prompt = new Label( "Enter a sentence and press Enter" );
      input = new TextField( 50 );
      input.addActionListener( this );
      output = new TextArea( 10, 30 );
      output.setEditable( false );
      add( prompt );



      add( input );
      add( output );
   }

   public void actionPerformed( ActionEvent e )
   {      
      String stringToTokenize = e.getActionCommand();
      StringTokenizer tokens =
         new StringTokenizer( stringToTokenize );

      output.setText( "" );

      output.append( "Number of elements: " +
         tokens.countTokens() + "\nThe tokens are:\n" );

      int i = 0;
      while ( tokens.hasMoreTokens() )
      {
         String t = tokens.nextToken();
         x[i] = Float.valueOf(t).floatValue();
         i++;
         output.append( t + "\n" );
      }
      Calc c1 = new Calc();
      float avg = c1.average(x);
      float dev = c1.deviation(x);
      output.append("AVG = " + avg + "\n");
      output.append("DEV = " + dev + "\n");
   }
}

class Calc
{
  public float average(float a[])
  {
    float sum = 0.0f;
    int i;
    
    for(i = 0; i < a.length; i++) sum = sum + a[i];
    return sum / a.length;
  } 

  public float deviation(float a[])
  {
    int N, i;
    float sum = 0.0f, sum2 = 0.0f, d;

    N = a.length;
    for(i = 0; i < N; i++)
    {
      sum = sum + a[i];
      sum2 = sum2 + a[i]*a[i];
    }
    d = (float) Math.sqrt((sum2 - sum)/(N*(N-1)));
    return d;    

  }
}




