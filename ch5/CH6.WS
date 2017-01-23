                   ALGORITHÍ COMPUTERÓ   Control Structures
                   -------------------   Topiã ­ 6

[1İ Thå Looğ Constructs:
    --------------------
     Javá  provideó  threå  looğ  constructions®  Theså  arå  thå 
while()¬ do¬ anä for(© constructs® Eacè provideó thå facilitù foò 
repeatinç  thå executioî oæ á blocë oæ codå untiì somå  conditioî 
occurs.

[1.1İ Thå while(© Loop
     while(boolean_condition)
     {
          do_something..
          do_something..
     }

Exampleº Listinç oæ 'WhileCounter.java'
// Counter-controlled repetition
import java.awt.Graphics;
import java.applet.Applet;

public class WhileCounter extends Applet {
   public void paint( Graphics g )
   {
      int counter = 1;             // initialization
      int yPos = 25;

      while ( counter <= 10 ) {    // repetition condition
         g.drawString( Integer.toString( counter ),
                       25, yPos );
         ++counter;                // increment
         yPos += 15;
      }
   }
}

[1.2İ Thå dï Loop
     do
     {
          do_something..
     ı while(boolean_condition);

Example: Listinç oæ 'DoWhileTest.java'
// Using the do/while repetition structure
import java.awt.Graphics;
import java.applet.Applet;

public class DoWhileTest extends Applet {
   public void paint( Graphics g )
   {
      int counter = 1;
      int xPos = 25;

Š      do {
         g.drawString( Integer.toString( counter ), xPos, 25 );
         xPos += 15;
      } while ( ++counter <= 10 );
   }
}

[1.3İ Thå for(© Loop
     for(init_statement;boolean_condition;iter_expression)
     {
          do_something..
          do_more..
     }

     Thå  keyó tï thió looğ arå iî threå partó containeä  iî  thå 
bracketó followinç thå foò keyword:

ª  Thå 'init_statemenô' ió executeä immediatelù beforå thå looğ 
itselæ  ió  started®  Iô  ió  ofteî  useä  tï  seô  uğ   startinç 
conditions.
ª  Thå 'boolean_condition§ ió treateä exactlù thå samå aó iî  thå 
while(©  loop® Thå bodù oæ thå looğ wilì bå  executeä  repeatedlù 
untiì thå conditioî ceaseó tï bå true® Aó witè thå while(©  loop¬ 
iô  ió  possiblå  thaô thå bodù oæ á for(© looğ  mighô  neveò  bå 
executed.
ª  Thå iter_expressioî ió executeä immediatelù afteò  thå bodù  oæ 
thå loop¬ jusô beforå thå tesô ió performeä again® Commonlù  thió 
ió useä tï incremenô á looğ counter.

Example: Listinç oæ 'ForCounter.java'
// Counter-controlled repetition with the for structure
import java.awt.Graphics;
import java.applet.Applet;

public class ForCounter extends Applet {
   public void paint( Graphics g )
   {
      int yPos = 25;

      // Initialization, repetition condition, and incrementing 
      // are all included in the for structure header. 
      for ( int counter = 1; counter <= 10; counter++ ) {
         g.drawString( Integer.toString( counter ), 25, yPos );
         yPos += 15;
      }
   }
}

[1.4İ Thå breaë anä continuå Statementó iî Loops:
      -------------------------------------------
     Sometimeó  yoõ  neeä tï abandoî executioî oæ thå bodù  oæ  á 
loop¬  oò  perhapó á numbeò oæ nesteä loops®  Javá  provideó  twï 
statements¬ 'break§ anä 'continue'¬ whicè caî bå useä insteaä  oæ 
gotï tï achievå thió effect.
Š[1.5İ Examplå foò Continuå statement:
      -------------------------------
Listinç oæ 'ContinueTest.java'
// Using the continue statement in a for structure
import java.awt.Graphics;
import java.applet.Applet;

public class ContinueTest extends Applet {
   public void paint( Graphics g )
   {
      int xPos = 25;

      for ( int count = 1; count <= 10; count++ ) {
         if ( count == 5 )
            continue;  // skip remaining code in loop
                       // only if count == 5

         g.drawString( Integer.toString( count ), xPos, 25 );
         xPos += 10;
      }

      g.drawString( "Used continue to skip printing 5",
                    25, 40 ); 
   }
}

[1.6İ Examplå foò breaë Statement:
      ----------------------------
Listinç oæ 'BreakTest.java'
// Fig. 3.11: BreakTest.java
// Using the break statement in a for structure
import java.awt.Graphics;
import java.applet.Applet;

public class BreakTest extends Applet {
   public void paint( Graphics g )
   {
      int count, xPos = 25;

      for ( count = 1; count <= 10; count++ ) {
         if ( count == 5 )
            break;  // break loop only if count == 5

         g.drawString( Integer.toString( count ), xPos, 25 );
         xPos += 10;
      }

      g.drawString( "Broke out of loop at count = " + count,
                    25, 40 );
   }
}
.paŠ[1.7İ Examplå foò 'continue§ witè label:
      ----------------------------------
Listinç oæ 'ContinueLabelTest.java'
// Using the continue statement with a label
import java.awt.Graphics;
import java.applet.Applet;

public class ContinueLabelTest extends Applet {
   public void paint( Graphics g )
   {
      int xPos, yPos = 0;

      nextRow:   // target label of continue statement
         for ( int row = 1; row <= 5; row++ ) {
            xPos = 25;
            yPos += 15;
   
            for ( int column = 1; column <= 10; column++ ) {
   
               if ( column > row )
                  continue nextRow; // next iteration of
                                    // labeled loop
   
               g.drawString( "#", xPos, yPos );
               xPos += 7;
            }
         }
   }
}

[1.8İ Examplå foò 'break§ witè label:
      -------------------------------
Listinç oæ 'BreakLabelTest.java'
// Using the break statement with a label
import java.awt.Graphics;
import java.applet.Applet;

public class BreakLabelTest extends Applet {
   public void paint( Graphics g )
   {
      int xPos, yPos = 0;
      
      stop: {   // labeled compound statement
         for ( int row = 1; row <= 10; row++ ) {
            xPos = 25;
            yPos += 15;         

            for ( int column = 1; column <= 5 ; column++ ) {
               if ( row == 5 )
                  break stop; // jump to end of stop block

               g.drawString( "#", xPos, yPos );
               xPos += 7;
            }
         }Š         yPos += 15;
         g.drawString( "Loops terminated normally", 25, yPos );
      }
      yPos += 15;
      g.drawString( "End of paint method", 25, yPos );
   }
}

[2İ Thå Selectioî Statements:
    -------------------------
     Javá  provideó á choicå oæ twï selectioî  constructs®  Theså 
arå thå if()/elså anä switch(© mechanisms.

[2.1İ Thå if Construct:
      -----------------
     Thå iæ statemenô ió java'ó conditionaì brancè statement®  Iô 
caî  bå  useä  tï routå prograí executioî  througè  twï  differnô 
paths.

Thå generaì forí oæ thå 'if§ statement:

     iæ (condition© 
          statement1;
     elså if(condition)
          statement2;
     .....
     .....
     elså statementn;

Exampleº IfElse.java

// Demonsrate if-else-if statements.

class IfElse
{
	public static void main(String args[])
	{
		int month=4;
		String season;
				
		if(month==12||month==1||month==2)
			season="Winter";
		else if(month==3||month==4||month==5)
			season="Spring";
		else if(month==6||month==7||month==8)
			season="Summer";							
		else if(month==9||month==10||month==11)
			season="Autumn";
		else
			season="Bogus Month";
						
		System.out.println("April is in the " + season + ".");
	}
}
Š[2.2İ Thå switch(© Construct:
      -----------------------
     Thå 'switch§ statmenô ió java'ó multiwaù brancè statment® Iô 
provideó aî easù waù tï dispatcè executioî tï differenô partó  oæ 
youò codå baseä oî thå valuå oæ aî expression.

Generaì forí oæ switcè statement:

     switch(expression)
     {
          caså value1:
               //statemenô sequence
               break;
          caså value2:
               //statemenô sequence
               break;
          ....
          ....
          caså valueN:
               //statemenô sequence
               break;
          default:
               //defaulô statemenô sequence

     }

Exampleº SampleSwitch.java
// a simple example of the switch.

class SampleSwitch
{
     public static void main(String args[])
     {
          for(int i=0;i<6;i++)
	  switch(i)
	  {
	  	case 0:
		    System.out.println("i is zero");
		    break;
		case 1:
		    System.out.println("i is one");
		    break;
		case 2:
		    System.out.println("i is two");
		    break;
		case 3:
		    System.out.println("i is three");
		    break;
		default:
		    System.out.println("i is greater than 3.");
 	  }
     }
}
     
Š[2.3İ Switcè Statemenô Appleô witè Action.
------------------------------------------
Listinç oæ SwitchTest.java:
---------------------------

// Fig. 3.7: SwitchTest.java
// Counting letter grades
import java.awt.*;
import java.applet.Applet;
import java.awt.event.*;

public class SwitchTest extends Applet
             implements ActionListener {
   Label prompt;      // label for text field
   TextField input;   // text field to enter grades

   int aCount = 0, bCount = 0, cCount = 0,
       dCount = 0, fCount = 0;

   public void init()
   {
      prompt = new Label( "Enter grade" );
      input = new TextField( 2 );
      input.addActionListener( this );
      add( prompt );
      add( input );
   }

   public void paint( Graphics g )
   {
      g.drawString( "Totals for each letter grade:", 25, 40 );
      g.drawString( "A: " + aCount, 25, 55 );
      g.drawString( "B: " + bCount, 25, 70 );
      g.drawString( "C: " + cCount, 25, 85 );
      g.drawString( "D: " + dCount, 25, 100 );
      g.drawString( "F: " + fCount, 25, 115 );
   }

   public void actionPerformed( ActionEvent e )
   {
      String val = e.getActionCommand();   
      char grade = val.charAt( 0 );  

      showStatus( "" );       // clear status bar area
      input.setText( "" );    // clear input text field

      switch ( grade ) {      

         case 'A': case 'a':  // Grade was uppercase A
            ++aCount;         // or lowercase a.
            break;

         case 'B': case 'b':  // Grade was uppercase B
            ++bCount;         // or lowercase b.
            break;Š
         case 'C': case 'c':  // Grade was uppercase C
            ++cCount;         // or lowercase c.
            break;

         case 'D': case 'd':  // Grade was uppercase D
            ++dCount;         // or lowercase d.
            break;

         case 'F': case 'f':  // Grade was uppercase F
            ++fCount;         // or lowercase f.
            break;

         default:             // catch all other characters
            showStatus( "Incorrect grade. Enter new grade." );
            break;
      }

      repaint();  // display summary of results
   }
}
