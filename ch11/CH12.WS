
                       ALGORITHÍ COMPUTERÓ Packageó ¦ Interfaces
                       ------------------­   Topiã ­ 12
1İ Packages:
------------
     Thå  namå  collisionó  oæ classeó caî bå  avoideä  bù  usinç 
packages®  Yoõ caî definå classeó insidå á packagå thaô  arå  noô 
accessiblå  bù  codå outsidå thaô package® Yoõ  caî  alsï  definå 
clasó memberó thaô arå onlù exposeä tï otheò memberó oæ thå  samå 
package®  Thió allowó youò classeó tï havå intimatå knowledgå  oæ 
eacè  other¬  buô noô exposå thaô knowledgå tï thå  resô  oæ  thå 
world.

1.1İ Defininç á Package:
------------------------
     Tï  creatå á packagå, simplù includå á 'package§ commanä  aó 
thå  firsô  statemenô iî Javá sourcå file® Anù  classeó  declareä 
withiî  thaô  filå  wilì belonç tï  thå  specifieä  package®  Thå 
'package§  statemenô  defineó á namå spacå iî whicè  classeó  arå 
stored® Iæ yoõ omiô thå 'package§ statement¬ thå clasó nameó  arå 
puô  intï  thå  defaulô package¬ whicè haó  nï  name®  Whilå  thå 
defaulô  packagå  ió  finå  foò short¬  samplå  programs¬  iô  ió 
inadequatå  foò  reaì applications® Mosô oæ thå  time¬  yoõ  wilì 
definå á packagå foò youò code.
     Thió ió thå generaì forí oæ thå 'package§ statement:
     packagå pkg;
          Here¬ pkç ió thå namå oæ thå package.

Javá useó filå systeí directorieó tï storå packages® For example¬ 
thå  .clasó  fileó  foò anù classeó yoõ declarå  tï  bå  parô  oæ 
MyPackagå  musô  bå  storeä  iî  á  directorù  calleä  MyPackage® 
Remembeò  thaô caså ió significant¬ anä thå directorù  namå  musô 
matcè thå packagå namå exactly.
     Morå  thaî onå filå caî includå thå samå packagå  statement® 
Thå  packagå  statemenô  simplù specifieó tï  whicè  packagå  thå 
classeó defineä iî á filå belong® 
     Yoõ  caî  creatå á hierarchù oæ packages® Tï dï  so¬  simplù 
separatå  eacè  packagå namå froí thå onå abovå iô bù  uså  oæ  á 
period®  Thå generaì forí oæ á multileveleä packagå statemenô  ió 
showî here:
     packagå pkg1.pkg2.pkg3;
Á  packagå declareä aó    packagå java.awt.image»    needó tï  bå 
storeä iî java\awt\image.

1.2İ Understandinç CLASSPATH:
-----------------------------
     Thå  directorù  structurå specifieä bù thå packagå  musô  bå 
availablå  tï  thå  otheò programó froí  thå  patè  specifieä  iî 
CLASSPATÈ variable® 
.paŠ1.3İ Á Shorô Example:
---------------------
//Listinç oæ MyPack.java
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


1.3.aİ Procedurå tï run:
------------------------
     Puô thå abovå filå iî MyPacë directorù anä compile.
Trù  executinç  thå  AccountBalancå class¬  usinç  thå  followinç 
commanä line:
     javá MyPack.AccountBalance
Remember¬ yoõ wilì neeä tï bå iî thå directorù abovå MyPacë  wheî 
yoõ executå thå abovå command¬ oò havå youò CLASSPATÈ environmenô 
variablå seô appropriately.
.paŠ1.4İ Accesó protection:
-----------------------
-----------------------------------------------------------------
               Privatå    Nï Modifieò    Protecteä     Public
               ------­    ----------­    --------­     -------
Samå Clasó      Yeó          Yeó            Yeó          Yes

Samå packagå    Nï           Yeó            Yeó          Yes
subclass

Samå packagå    Nï           Yeó            Yeó          Yes
non-subclass

Differenô       Nï           Nï             Yeó          Yes
package
subclass

Differenô       Nï           Nï             Nï           Yes
package
non-subclass
-----------------------------------------------------------------

1.5İ Importinç Packages:
------------------------
     Iî  Javá sourcå file¬ 'import§ statementó occuò  immediatelù 
followinç  thå  packagå statemenô (iæ iô exists© anä  beforå  anù 
clasó  definitions®  Thió  ió  thå generaì  forí  oæ  thå  imporô 
statement:
     imporô pkg1.[pkg2].(classnamå ü *);
Ex:
  imporô java.util.Date;
  imporô java.io.*;

     Thå staò forí maù increaså compilatioî time.

Twï wayó oæ usinç anotheò class:
Ex1:
     imporô java.util.*;
     clasó MyDatå extendó Datå {
     }
Ex2:
     clasó MyDatå extendó java.util.Datå {
     }
.paŠ1.5.aİ Áî Imporô example:
-------------------------
//Listinç oæ Balance.java
/¯ keeğ thå .clasó filå iî MyPacë directory.
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

//Listinç oæ TestBalance.java

import MyPack.*;

class TestBalance {
	public static void main(String args[]) {
		Balance test = new Balance("J. J. Jaspers", 99.88);
		
		test.show();
	}
}


     Aó  aî  experiment¬  removå thå publiã  specifieò  froí  thå 
Balancå clasó anä theî trù compilinç TestBalance.
.paŠ2İ INTERFACES:
--------------
     Usinç  interface¬ yoõ caî specifù whaô á clasó musô do¬  buô 
noô  ho÷  iô  doeó it® Interfaceó arå  syntacticallù  similaò  tï 
classes¬ buô theù lacë instancå variables¬ anä theiò methodó  arå 
declareä withouô anù body.
     Onå  clasó  caî  implemenô  anù  numbeò  oæ  interfaces®  Tï 
implemenô  aî  interfce¬  á clasó musô  creatå  completå  seô  oæ 
methodó defineä bù thå interface® However¬ eacè clasó ió freå  tï 
determinå thå detailó oæ itó owî implementation.
     Interfaceó arå designeä tï supporô dynamiã methoä resolutioî 
aô ruî time® Normallù iî ordeò foò á methoä tï bå calleä froí onå 
clasó  tï  another¬ botè classeó neeä tï bå  presenô  aô  compilå 
timå  sï  thå Javá compileò caî checë tï ensurå thaô  thå  methoä 
signatureó arå compatible® Thió requiremenô bù itselæ makeó foò á 
statiã anä noî extensiblå classinç environment® Ineviatablù iî  á 
systeí likå this¬ functionalitù getó pusheä uğ higheò anä  higheò 
thå  clasó hierarchù sï thaô thå mechanismó wilì bå availablå  tï 
morå  anä morå subclasses® Interfaceó arå designeä tï avoiä  thió 
problem®  Theù  disconnecô thå definitioî oæ á methoä oò  seô  oæ 
methodó froí thå inheritancå hierarchy® Sincå interfaceó arå iî á 
differenô hierarcù froí classes¬ iô ió possiblå foò classeó  thaô 
arå  unrelateä iî termó oæ thå clasó hierarchù tï  implemenô  thå 
samå  interface®  Thió ió wherå thå reaì poweò oæ  interfaceó  ió 
realized.

2.1İ Defininç aî Interface:
---------------------------
Ex:
interfacå Callbacë {
  voiä callback(inô param);
}
2.2İ Implementinç Interfaces:
-----------------------------
clasó Clienô implementó Callbacë {
  publiã voiä callback(inô p© {
    System.out.println("calì bacë witè ¢ « p);
  }
}

Noteº  thå  callback(©  ió  declareä  usinç  thå  publiã   accesó 
specifier.
Wheî  yoõ implemenô aî interfacå method¬ iô musô bå  declareä  aó 
public.

2.3İ Accessinç Implementations
Througè Interfacå references:
-------------------------------
Ex:
clasó TestIFacå {
  publiã statiã voiä main(Strinç args[]© {
    Callbacë ã ½ ne÷ Client();
    c.callback(42);
  }
}Š2.4İ Interfaceó anä Polymorphisí Example:
-----------------------------------------
//Listinç oæ 'TestIface.java'
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

2.5İ Partiaì Implementations:
-----------------------------
Iæ á clasó includeó aî interfacå buô doeó noô fullù implemenô thå 
methodó  defineä  bù  thaô interface¬ theî  thaô  clasó  musô  bå 
declareä aó 'abstract'.

Ex:
abstracô clasó Incompletå implementó Callbacë {
  inô a¬ b;
  voiä show(© {
    System.out.println(á « ¢ ¢ « b);
  }
  /¯ ...
}
.paŠ2.6İ Variableó iî Interfaces:
-----------------------------
¯¯ Alì thå variableó iî interfacå arå finaì anä static.
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
	}Š2.7İ Interfaceó Caî bå Extended:
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