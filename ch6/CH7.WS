                     ALGORITHÍ COMPUTERÓ         Arrayó ¦ Strings
                     ------------------­         Topiã ­ 7

[1.İ Arrays:
     -------
     Aî arraù ió á grouğ oæ likå-typeä varialeó thaô arå referreä 
tï  bù á commoî name® Arrayó oæ anù typå caî bå createä  anä  maù 
havå  onå oò morå dimensions® Á specifiã elemenô iî aî  arraù  ió 
accesseä  bù  itó  index®  Arrayó offeò  á  convenienô  meanó  oæ 
groupinç relateä information.

One-Dimensionaì Arrays:
-----------------------
     Á  Onå-dimensionaì  arraù is¬ essentially¬ á lisô  oæ  likå-
typeä  variables®  Tï creatå aî array¬ yoõ firsô musô  creatå  aî 
arraù  variablå  oæ thå desireä type® Thå generaì forí oæ  á  Onå 
dimånsionaì arraù declaratioî is

     typå var-name[];

Multidimensionaì Arrays:
------------------------
     Iî  java¬  multidimensionaì arrayó arå  actuallù  arrayó  oæ 
arrays®  Tï  declarå á multidimensionaì arraù  variable¬  specifù 
eacè additionaì indeø usinç anotheò seô oæ squarå brackets.

Examples:
---------

[1.1İ Listinç 'InitArray.java'
// initializing an array with a declaration
import java.awt.Graphics;
import java.applet.Applet;

public class InitArray extends Applet {
   int n[] = { 32, 27, 64, 18, 95, 14, 90, 70, 60, 37 };        

   // paint the applet
   public void paint( Graphics g )
   {
      int yPosition = 25;   // starting y position on applet

      g.drawString( "Element", 25, yPosition );
      g.drawString( "Value", 100, yPosition );
   
      for ( int i = 0; i < n.length; i++ ) {
         yPosition += 15;
         g.drawString( String.valueOf( i ), 25, yPosition );
         g.drawString( String.valueOf( n[ i ] ),
                       100, yPosition );
      }
   }
}

Š[1.2İ Listinç oæ 'InitArray.java'
// initialize array s to the even integers from 2 to 20
import java.awt.Graphics;
import java.applet.Applet;

public class InitArray extends Applet {
   final int ARRAY_SIZE = 10;
   int s[];
   // initialize instance variables
   public void init()
   {
      s = new int[ ARRAY_SIZE ];
      // Set the values in the array
      for ( int i = 0; i < s.length; i++ ) 
         s[ i ] = 2 + 2 * i;
   }
   // paint the applet
   public void paint( Graphics g )
   {
      int yPosition = 25;   // starting y position on applet

      g.drawString( "Element", 25, yPosition );
      g.drawString( "Value", 100, yPosition );
   
      for ( int i = 0; i < s.length; i++ ) {
         yPosition += 15;
         g.drawString( String.valueOf( i ), 25, yPosition );
         g.drawString( String.valueOf( s[ i ] ),
                       100, yPosition );
      }
   }
}

[1.3İ Listinç oæ 'FinalTest.java'
// a final object must be initialized
import java.applet.Applet;

public class FinalTest extends Applet {
   final int x;  // Error: Final variables must be initialized
}

[1.4İ Listinç oæ 'FinalTest.java'
// using a properly initialized constant variable
import java.awt.Graphics;
import java.applet.Applet;

public class FinalTest extends Applet {
   final int x = 7;  // initialize constant variable

   public void paint( Graphics g )
   {
      g.drawString( "The value of x is: " + x, 25, 25 ); 
   }
}
Š[1.5İ Listinç oæ 'PassArray.java'
// Passing arrays and individual array elements to methods
import java.awt.Graphics;
import java.applet.Applet;

public class PassArray extends Applet {
   int a[] = {0, 1, 2, 3, 4};

   public void paint( Graphics g )
   {
      int xPosition = 25, yPosition = 25;

      g.drawString(
         "Effects of passing entire array call-by-reference:",
         xPosition, yPosition );
      yPosition += 15;
      g.drawString( "The values of the original array are:",
                    xPosition, yPosition );
      xPosition += 15;
      yPosition += 15;

      for ( int i = 0; i < a.length; i++ ) {
         g.drawString( String.valueOf( a[ i ] ),
                       xPosition, yPosition );
         xPosition += 15;
      }
   
      xPosition = 25;
      yPosition += 30;

      modifyArray( a );  // array a passed call-by-reference
   
      g.drawString( "The values of the modified array are:",
                    xPosition, yPosition );   
      xPosition += 15;
      yPosition += 15;

      for ( int i = 0; i < a.length; i++ ) {
         g.drawString( String.valueOf( a[ i ] ),
                       xPosition, yPosition );
         xPosition += 15;
      }
   
      xPosition = 25;
      yPosition += 30;

      g.drawString(
         "Effects of passing array element call-by-value:",
         xPosition, yPosition );
      yPosition += 15;
      g.drawString( "a[3] before modifyElement: " + a[ 3 ],
                    xPosition, yPosition );
      yPosition += 15;
   
      modifyElement( a[ 3 ] );Š   
      g.drawString( "a[3] after modifyElement: " + a[ 3 ],
                    xPosition, yPosition );
   }
   public void modifyArray( int b[] )
   {
      for ( int j = 0; j < b.length; j++ )
         b[ j ] *= 2;
   }
   
   public void modifyElement( int e )
   {
      e *= 2;
   }   
}

[1.6İ Listinç oæ 'InitArray.java'
// Initializing multidimensional arrays
import java.awt.Graphics;
import java.applet.Applet;

public class InitArray extends Applet {

   // paint the applet
   public void paint( Graphics g )
   { 
      int array1[][] = { { 1, 2, 3 }, { 4, 5, 6 } };        
      int array2[][] = { { 1, 2 }, { 4 } };        

      g.drawString( "Values in array1 by row are", 25, 25 );
      printArray( array1, g, 40 );
   
      g.drawString( "Values in array2 by row are", 25, 70 );
      printArray( array2, g, 85 );
   }

   public void printArray( int a[][], Graphics g, int y )
   {
      int x = 25;

      for ( int i = 0; i < a.length; i++ ) {

         for ( int j = 0; j < a[ i ].length; j++ )  {
            g.drawString( String.valueOf( a[ i ][ j ] ), x, y );
            x += 15;
         }

         x = 25;
         y += 15;
      }
   }
}


Š[1.7İ Listinç oæ 'BubbleSort.java'
// This program sorts an array's values into
// ascending order
import java.awt.Graphics;
import java.applet.Applet;

public class BubbleSort extends Applet {
   int a[] = { 2, 6, 4, 8, 10, 12, 89, 68, 45, 37 };
   
   public void paint( Graphics g )
   {
      print( g, "Data items in original order", a, 25, 25 );
 	
      sort();

      print( g, "Data items in ascending order", a, 25, 55 );
   }

   public void sort() 
   {   
      int hold;  // temporary holding area for swap

      for ( int pass = 1; pass < a.length; pass++ ) // passes
         for ( int i = 0; i < a.length - 1; i++ ) // one pass   
            if ( a[ i ] > a[ i + 1 ] ) {      // one comparison
               hold = a[i];                   // one swap
               a[ i ] = a[ i + 1 ];
               a[ i + 1 ] = hold;
            }
   }

   public void print( Graphics g, String head, int b[],
                      int x, int y )
   {
      g.drawString( head, x, y ); 
      x += 15;
      y += 15; 
   
      for ( int i = 0; i < b.length; i++ ) {
         g.drawString( String.valueOf( b[ i ] ), x, y );
         x += 20;
      }
   }
}
.paŠ[2İ Strings:
    --------
     Á  'string§  ió  á sequencå oæ characters®  Iî  Ã  anä  C++¬ 
stringó arå implementeä aó nulì-terminateä characteò arrays® Javá 
useó  á differenô approach® Iô implementó stringó aó  objectó  oæ 
typå 'String'.
     Somewhaô  unexpectedly¬ wheî yoõ creaôe  á striîg object¬  yoõ 
arå  creatinç á strinç thaô cannoô bå changed®  Thaô is¬  oncå  á 
strinç objecô haó beeî created¬ yoõ cannoô changå thå  characteró 
thaô  compriså  thaô  string®  Aô first¬ thió maù seeí  tï  bå  á 
seriouó  restriction®   However¬ sucè ió noô thå case®   Yoõ  caî 
stilì  perforí alì typeó oæ strinç operations®  Iô ió  jusô  thaô 
eacè timå yoõ neeä aî altereä versioî oæ aî existinç string¬ á nåw 
strinç  objecô ió createä thaô containó thå  modifications®   Thå 
originaì strinç ió lefô unchanged®  Thió approacè ió useä becauså 
fixed¬  immutablå  stringó caî bå  implementeä  morå  efficientlù 
thaî  changeablå  ones®  Foò thoså caseó iî  whicè  á  modifiablå 
strinç  ió desired¬ therå ió á companioî clasó tï  strinç  calleä 
StrinçBuffer®  StrinçBuffeò objectó contaiî stringó thaô caî bå 
modifieä afteò theù arå created.
     Botè  thå  Strinç anä StringBuffeò classeó  arå  defineä  iî 
java.lang®    Thus¬   theù   arå  availablå   tï   alì   programó 
automatically®  Botè arå declareä final¬ whicè meanó thaô neitheò 
oæ  theså  classeó  maù  bå  subclassed®   Thió  allowó   certaiî 
optimizationó whicè increaså performancå tï takå placå oî  commoî 
strinç operations.
     Onå  lasô poiintº Tï saù thaô thå stringó withiî objectó  oæ 
typå  Strinç  arå  unchangeablå meanó thaô thå  contentó  oæ  thå 
Strinç  instancå  cannoô bå changeä afteò iô  haó  beeî  created®  
However¬ á variablå declareä aó á Strinç referencå caî bå changeä 
tï poinô aô somå otheò Strinç objecô aô anù time.

[2.1İ Listinç oæ 'StringConstructors.java'
// This program demonstrates the String class constructors.
import java.awt.Graphics;
import java.applet.Applet;

public class StringConstructors extends Applet {
   char charArray[] = { 'b', 'i', 'r', 't', 'h', ' ',
                        'd', 'a', 'y' };
   byte byteArray[] = { 'n', 'e', 'w', ' ',
                        'y', 'e', 'a', 'r' };
   StringBuffer buffer;
   String s, s1, s2, s3, s4, s5, s6, s7;
   
   public void init()
   {
      s = new String( "hello" );
      buffer = new StringBuffer();
      buffer.append( "Welcome to Java Programming!" );

      // use the String constructors
      s1 = new String();
      s2 = new String( s );
      s3 = new String( charArray );Š      s4 = new String( charArray, 6, 3 );
      s5 = new String( byteArray, 4, 4 );
      s6 = new String( byteArray );
      s7 = new String( buffer );
   }

   public void paint( Graphics g ) 
   {
      g.drawString( "s1 = " + s1, 25, 25 );
      g.drawString( "s2 = " + s2, 25, 40 );
      g.drawString( "s3 = " + s3, 25, 55 );
      g.drawString( "s4 = " + s4, 25, 70 );
      g.drawString( "s5 = " + s5, 25, 85 );
      g.drawString( "s6 = " + s6, 25, 100 );
      g.drawString( "s7 = " + s7, 25, 115 );
   }
}
[2.2İ Listinç oæ 'StringMisc.java'
// This program demonstrates the length, charAt and getChars
// methods of the String class.
//
// Note: Method getChars requires a starting point
// and ending point in the String. The starting point is the
// actual subscript from which copying starts. The ending point
// is one past the subscript at which the copying ends.
import java.awt.Graphics;
import java.applet.Applet;

public class StringMisc extends Applet {
   String s1;
   char charArray[];

   public void init()
   {
      s1 = new String( "hello there" );
      charArray = new char[ 5 ];
   }

   public void paint( Graphics g )
   {
      // output the string
      g.drawString( "s1: " + s1, 25, 25 );

      // test the length method
      g.drawString( "Length of s1: " + s1.length(), 25, 40 );

      // loop through the characters in s1 and display reversed
      g.drawString( "The string reversed is: ", 25, 55 );
      int xPosition = 155;

      for ( int i = s1.length() - 1; i >= 0; i-- ) {
         g.drawString( String.valueOf( s1.charAt( i ) ),
                       xPosition, 55 );
         xPosition += 10;
      }Š      // copy characters from string into char array
      s1.getChars( 0, 5, charArray, 0 );
      g.drawString( "The character array is: ", 25, 70 );
      g.drawChars( charArray, 0, charArray.length, 158, 70 );
   }
}

[2.3İ Listinç oæ 'StringBufferConstructors.java'
// This program demonstrates the StringBuffer constructors.
import java.awt.Graphics;
import java.applet.Applet;

public class StringBufferConstructors extends Applet {
   StringBuffer buf1, buf2, buf3;
   
   public void init()
   {
      buf1 = new StringBuffer();
      buf2 = new StringBuffer( 10 );
      buf3 = new StringBuffer( "hello" );
   }

   public void paint( Graphics g )
   {
      g.drawString( "buf1 = " + "\"" + buf1.toString() + "\"",
                    25, 25 );
      g.drawString( "buf2 = " + "\"" + buf2.toString() + "\"",
                    25, 40 );
      g.drawString( "buf3 = " + "\"" + buf3.toString() + "\"",
                    25, 55 );
   }
}

[2.4İ Listinç oæ 'TokenTest.java'
// Testing the StringTokenizer class of the java.util package
import java.applet.Applet;
import java.util.*;
import java.awt.*;
import java.awt.event.*;

public class TokenTest extends Applet
             implements ActionListener {
   // GUI components
   Label prompt;
   TextField input;
   TextArea output;

   public void init()
   {
      prompt = new Label( "Enter a sentence and press Enter" );
      input = new TextField( 50 );
      input.addActionListener( this );
      output = new TextArea( 10, 30 );
      output.setEditable( false );
      add( prompt );Š      add( input );
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

      while ( tokens.hasMoreTokens() )
         output.append( tokens.nextToken() + "\n" );
   }
}
