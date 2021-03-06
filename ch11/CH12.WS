
                       ALGORITH� COMPUTER� Package� � Interfaces
                       ------------------�   Topi� � 12
1� Packages:
------------
     Th� �nam� �collision� �o� classe� ca� b� �avoide� �b� �usin� �
packages� �Yo� ca� defin� classe� insid� � packag� tha� �ar� �no� �
accessibl� �b� �cod� outsid� tha� package� Yo� �ca� �als� �defin� �
clas� member� tha� ar� onl� expose� t� othe� member� o� th� �sam� �
package� �Thi� allow� you� classe� t� hav� intimat� knowledg� �o� �
eac� �other� �bu� no� expos� tha� knowledg� t� th� �res� �o� �th� �
world.

1.1� Definin� � Package:
------------------------
     T� �creat� � packag�, simpl� includ� � 'package��comman� �a� �
th� �firs� �statemen� i� Jav� sourc� file� An� �classe� �declare� �
withi� �tha� �fil� �wil� belon� t� �th� �specifie� �package� �Th� �
'package� �statemen� �define� � nam� spac� i� whic� �classe� �ar� �
stored� I� yo� omi� th� 'package� statement� th� clas� name� �ar� �
pu� �int� �th� �defaul� package� whic� ha� �n� �name� �Whil� �th� �
defaul� �packag� �i� �fin� �fo� short� �sampl� �programs� �i� �i� �
inadequat� �fo� �rea� applications� Mos� o� th� �time� �yo� �wil� �
defin� � packag� fo� you� code.
     Thi� i� th� genera� for� o� th� 'package� statement:
     packag� pkg;
          Here� pk� i� th� nam� o� th� package.

Jav� use� fil� syste� directorie� t� stor� packages� For example� �
th� �.clas� �file� �fo� an� classe� yo� declar� �t� �b� �par� �o� �
MyPackag� �mus� �b� �store� �i� �� �director� �calle� �MyPackage� �
Remembe� �tha� cas� i� significant� an� th� director� �nam� �mus� �
matc� th� packag� nam� exactly.
     Mor� �tha� on� fil� ca� includ� th� sam� packag� �statement� �
Th� �packag� �statemen� �simpl� specifie� t� �whic� �packag� �th� �
classe� define� i� � fil� belong� 
     Yo� �ca� �creat� � hierarch� o� packages� T� d� �so� �simpl� �
separat� �eac� �packag� nam� fro� th� on� abov� i� b� �us� �o� �� �
period� �Th� genera� for� o� � multilevele� packag� statemen� �i� �
show� here:
     packag� pkg1.pkg2.pkg3;
� �packag� declare� a�    packag� java.awt.image�    need� t� �b� �
store� i� java\awt\image.

1.2� Understandin� CLASSPATH:
-----------------------------
     Th� �director� �structur� specifie� b� th� packag� �mus� �b� �
availabl� �t� �th� �othe� program� fro� �th� �pat� �specifie� �i� �
CLASSPAT� variable� 
.pa�1.3� � Shor� Example:
---------------------
//Listin� o� MyPack.java
package MyPack;

class Balance {
	String name;
	double bal;


  Balance(String n, double b) {
	  name = n;
	  bal = b;
  }

  void show() {
	  if(bal < 0) System.out.print("-->> ");
	  System.out.println(name + ": $" + bal);
  }
}

class AccountBalance {
	public static void main(String args[]) {
		Balance current[] = new Balance[3];
		
		current[0] = new Balance("K. J. Fielding", 123.23);
		current[1] = new Balance("Will Tell", 157.02);
		current[2] = new Balance("Tom Jackson", -12.33);
		
		for(int i = 0; i < 3; i++) current[i].show();
	}
}


1.3.a� Procedur� t� run:
------------------------
     Pu� th� abov� fil� i� MyPac� director� an� compile.
Tr� �executin� �th� �AccountBalanc� class� �usin� �th� �followin� �
comman� line:
     jav� MyPack.AccountBalance
Remember� yo� wil� nee� t� b� i� th� director� abov� MyPac� �whe� �
yo� execut� th� abov� command� o� hav� you� CLASSPAT� environmen� �
variabl� se� appropriately.
.pa�1.4� Acces� protection:
-----------------------
-----------------------------------------------------------------
               Privat�    N� Modifie�    Protecte�     Public
               ------�    ----------�    --------�     -------
Sam� Clas�      Ye�          Ye�            Ye�          Yes

Sam� packag�    N�           Ye�            Ye�          Yes
subclass

Sam� packag�    N�           Ye�            Ye�          Yes
non-subclass

Differen�       N�           N�             Ye�          Yes
package
subclass

Differen�       N�           N�             N�           Yes
package
non-subclass
-----------------------------------------------------------------

1.5� Importin� Packages:
------------------------
     I� �Jav� sourc� file� 'import� statement� occu� �immediatel� �
followin� �th� �packag� statemen� (i� i� exists� an� �befor� �an� �
clas� �definitions� �Thi� �i� �th� genera� �for� �o� �th� �impor� �
statement:
     impor� pkg1.[pkg2].(classnam� � *);
Ex:
  impor� java.util.Date;
  impor� java.io.*;

     Th� sta� for� ma� increas� compilatio� time.

Tw� way� o� usin� anothe� class:
Ex1:
     impor� java.util.*;
     clas� MyDat� extend� Dat� {
     }
Ex2:
     clas� MyDat� extend� java.util.Dat� {
     }
.pa�1.5.a� �� Impor� example:
-------------------------
//Listin� o� Balance.java
/� kee� th� .clas� fil� i� MyPac� directory.
package MyPack;

public class Balance {
	String name;
	double bal;


  public Balance(String n, double b) {
	  name = n;
	  bal = b;
  }

  public void show() {
	  if(bal < 0) System.out.print("-->> ");
	  System.out.println(name + ": $" + bal);
  }
}

//Listin� o� TestBalance.java

import MyPack.*;

class TestBalance {
	public static void main(String args[]) {
		Balance test = new Balance("J. J. Jaspers", 99.88);
		
		test.show();
	}
}


     A� �a� �experiment� �remov� th� publi� �specifie� �fro� �th� �
Balanc� clas� an� the� tr� compilin� TestBalance.
.pa�2� INTERFACES:
--------------
     Usin� �interface� yo� ca� specif� wha� � clas� mus� do� �bu� �
no� �ho� �i� �doe� it� Interface� ar� �syntacticall� �simila� �t� �
classes� bu� the� lac� instanc� variables� an� thei� method� �ar� �
declare� withou� an� body.
     On� �clas� �ca� �implemen� �an� �numbe� �o� �interfaces� �T� �
implemen� �a� �interfce� �� clas� mus� �creat� �complet� �se� �o� �
method� define� b� th� interface� However� eac� clas� i� fre� �t� �
determin� th� detail� o� it� ow� implementation.
     Interface� ar� designe� t� suppor� dynami� metho� resolutio� �
a� ru� time� Normall� i� orde� fo� � metho� t� b� calle� fro� on� �
clas� �t� �another� bot� classe� nee� t� b� �presen� �a� �compil� �
tim� �s� �th� Jav� compile� ca� chec� t� ensur� tha� �th� �metho� �
signature� ar� compatible� Thi� requiremen� b� itsel� make� fo� � �
stati� an� no� extensibl� classin� environment� Ineviatabl� i� �� �
syste� lik� this� functionalit� get� pushe� u� highe� an� �highe� �
th� �clas� hierarch� s� tha� th� mechanism� wil� b� availabl� �t� �
mor� �an� mor� subclasses� Interface� ar� designe� t� avoi� �thi� �
problem� �The� �disconnec� th� definitio� o� � metho� o� �se� �o� �
method� fro� th� inheritanc� hierarchy� Sinc� interface� ar� i� � �
differen� hierarc� fro� classes� i� i� possibl� fo� classe� �tha� �
ar� �unrelate� i� term� o� th� clas� hierarch� t� �implemen� �th� �
sam� �interface� �Thi� i� wher� th� rea� powe� o� �interface� �i� �
realized.

2.1� Definin� a� Interface:
---------------------------
Ex:
interfac� Callbac� {
  voi� callback(in� param);
}
2.2� Implementin� Interfaces:
-----------------------------
clas� Clien� implement� Callbac� {
  publi� voi� callback(in� p� {
    System.out.println("cal� bac� wit� � � p);
  }
}

Note� �th� �callback(� �i� �declare� �usin� �th� �publi� ��acces� �
specifier.
Whe� �yo� implemen� a� interfac� method� i� mus� b� �declare� �a� �
public.

2.3� Accessin� Implementations
Throug� Interfac� references:
-------------------------------
Ex:
clas� TestIFac� {
  publi� stati� voi� main(Strin� args[]� {
    Callbac� � � ne� Client();
    c.callback(42);
  }
}�2.4� Interface� an� Polymorphis� Example:
-----------------------------------------
//Listin� o� 'TestIface.java'
interface Callback {
	void callback(int param);
}

class Client implements Callback {
	public void callback(int p) {
		System.out.println("call back caled with " + p);
	}
}

class AnotherClient implements Callback {
	public void callback(int p) {
		System.out.println("Another version of callback");
		System.out.println(" p squared is " + (p*p));
	}
}

class TestIface {
	public static void main(String args[]) {
		Callback c = new Client();
		AnotherClient ob = new AnotherClient();
		
		c.callback(42);
		
		c = ob;
		c.callback(42);
	}
}

2.5� Partia� Implementations:
-----------------------------
I� � clas� include� a� interfac� bu� doe� no� full� implemen� th� �
method� �define� �b� �tha� interface� the� �tha� �clas� �mus� �b� �
declare� a� 'abstract'.

Ex:
abstrac� clas� Incomplet� implement� Callbac� {
  in� a� b;
  voi� show(� {
    System.out.println(� � � � � b);
  }
  /� ...
}
.pa�2.6� Variable� i� Interfaces:
-----------------------------
�� Al� th� variable� i� interfac� ar� fina� an� static.
import java.util.Random;
interface SharedConstants {
	int NO = 0;
	int YES = 1;
	int MAYBE = 2;
	int LATER = 3;
	int SOON = 4;
	int NEVER = 5;
}
class Question implements SharedConstants {
	Random rand = new Random();
	int ask() {
		int prob = (int) (100*rand.nextDouble());
		if(prob < 30) return NO;
		else if(prob < 60) return YES;
		else if(prob < 75) return LATER;
		else if(prob < 98) return SOON;
		else  return NEVER;
	}
}
class AskMe implements SharedConstants {
	static void answer(int result) {
		switch(result) {
			case NO:
				System.out.println("No");
				break;
			case YES:
				System.out.println("Yes");
				break;
			case MAYBE:
				System.out.println("MayBe");
				break;
			case LATER:
				System.out.println("Later");
				break;	
			case SOON:
				System.out.println("Soon");
				break;
			case NEVER:
				System.out.println("Never");
				break;
			}
		}
		
		public static void main(String args[]) {
			Question q = new Question();
			answer(q.ask());
			answer(q.ask());
			answer(q.ask());
			answer(q.ask());
		}
	}�2.7� Interface� Ca� b� Extended:
--------------------------------
// Inter-faces can be extended

        interface A {
		void meth1();
		void meth2();
	}
	interface B extends A {
		void meth3();
	}
	
	class MyClass implements B {
		public void meth1()
		{
			System.out.println("Implement meth1()");
		}
		public void meth2()
		{
			System.out.println("Implement meth2()");
		}
		public void meth3()
		{
			System.out.println("Implement meth3()");
		}
	}
	
	class IFExtend {
		public static void main(String arg[])
		{
			MyClass ob=new MyClass();
			
			ob.meth1();
			ob.meth2();
			ob.meth3();
		}
	}
	
