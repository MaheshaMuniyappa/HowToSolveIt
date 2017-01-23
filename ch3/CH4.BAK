                       ALGORITHÍ COMPUTERÓ Appletó ¦ Applications
                       ------------------­ Topiã ­ 4
[1İ Javá Applets:
-----------------
     Javá  programó  thaô caî bå vieweä iî á browseò  arå  calleä 
applets®  Alì javá appletó arå deriveä  froí  java.applet.Applet® 
Thå inheritancå hierarchù ió :
  Component-->Container-->Panel-->Applet

[1.aİ Á Simplå Applet:
Listinç oæ Hello.java:
----------------------
import java.awt.*;

public class Hello extends java.applet.Applet
{
	public void paint(Graphics g)
	{
		g.drawString("Hello World!", 20,30);
	}
}

[1.bİ Listinç oæ 'Hello.html':
------------------------------
<APPLET CODE=Hello.class WIDTH=170 HEIGHT=150></APPLET>

[1.cİ Compilinç anä Runninç thå abovå Applet:
---------------------------------------------
javaã Hello.java
appletvieweò Hello.html

[1.dİ Optionó availablå iî APPLEÔ taç are:
------------------------------------------
<APPLET
  CODE=clasó filå (filå oò URL)
  HETGHT=pixels
  WIDTH=pixels
[CODEBASE=URÌ directory]
[ALT=alternatå texô message]
[ARCHIVE=nameó oæ JAÒ files]
[ALIGN=alignment]
[NAME=namå foò otheò appletó oî page]
[HSPACE=pixel]
[VSPACE=pixel]
>
[<PARAÍ NAME=identifieò VALUE=value>]
[<PARAÍ NAME=identifieò VALUE=value>]
          .
          .
</APPLET>
.paŠ[1.eİ Anotheò examplå oæ Appleô thaô useó parameters:
-----------------------------------------------------
Listinç oæ 'Thermo.java':
-------------------------
import java.applet.*;
import java.awt.*;

public class Thermo extends Applet
{
	private String label;
	private boolean isCelsius;
	private int increment;
	
	public void init() {
		label = getParameter("LABEL");
		isCelsius = 
          getParameter("scale").equalsIgnoreCase("CELCIUS");
		increment = 
          Integer.parseInt(getParameter("INCREMENT"));
	}
	public void paint(Graphics g)
	{
		g.drawString("Label is " + label,20,20);
		g.drawString("Is Scale celcius?: " + isCelsius,20,50);
		g.drawString("Increment is " + increment,20,80);
	}
}

Listinç oæ 'Thermo.html':
-------------------------
<APPLET CODE=Thermo.class WIDTH=200 HEIGHT=200>
<PARAM NAME=label VALUE="My Excellent Thermostat">
<PARAM NAME=scale VALUE=celcius>
<PARAM NAME=increment VALUE=2>
</APPLET>

[1.fİ Importanô Appleô Methods:
-------------------------------
init()
start()
paint(©    (belongó tï baså clasó Component).
stop()
destroy()

[2İ Javá Applications:
----------------------
Applicationó arå twï types® a© Consolå applicatioî anä b© Windowó 
application.
Tï geô starteä witè applications¬ seå thå examplå giveî iî 
Topic-2® (Seconä class).
.paŠ2.a© Constructors:
------------------
     Iô  caî  bå tediouó tï initializå alì variableó iî  á  clasó 
eacè  timå aî instancå ió created® Eveî wheî yoõ adä  convenient 
functionó likå setDim(© (Iî lasô class)¬ iô woulä bå simpleò  anä 
morå conciså tï havå alì oæ thå setuğ donå aô thå timå thå objecô 
ió  firsô created® Javá allowó objectó tï  initializå  themselveó 
wheî theù arå created® Thió automatiã initializatioî ió performeä 
througè thå uså oæ á constructor.

ª Á constructoò initializeó aî objecô immediatelù upoî creation®  
ª Iô  haó  thå samå namå aó clasó iî whicè  iô  resideó  anä  ió 
  syntacticallù similaò tï á method® 
ª Oncå defined¬ thå constructoò ió automaticallù calleä immediatelù 
  afteò thå objecô ió created¬ beforå thå ne÷  operatoò completes®  
ª Constructoró havå nï returî ôypå¬ noô eveî void® Thió ió becauså 
  thå impliciô returî typå oæ á class® 

Exampleº BoxTest1.java
----------------------
// Here, Box uses a constructor to initialize the
// dimensions of the box.
class Box
{
	double width,height,depth;

	// Constructor with out parameters
	Box()
	{
		System.out.println("Constructing Box");
		width=10;
		height=10;
		depth=10;
	}
	// Compute and return volume
	double volume()
	{
		return width*height*depth;
	}
}
class BoxTest1
{
	public static void main(String args[])
	{
		Box mybox1=new Box();
		Box mybox2=new Box();
		
		double vol;
		vol=mybox1.volume();
		System.out.println("Volume of mybox1 is "+vol);
		
		vol=mybox2.volume();
		System.out.println("Volume of mybox2 is "+vol);
	}
}ŠExampleº BoxTest2.java
----------------------
// Here, Box uses a parameterized constructor to 
//	initialize the dimensions of the box.

class Box
{
	double width;
	double height;
	double depth;
	
	// Constructor with parameters
	Box(double w, double h, double d)
	{
		width=w;
		height=h;
		depth=d;
	}
	
	// Compute and return volume
	double volume()
	{
		return width*height*depth;
	}
}

class BoxTest2
{
	public static void main(String args[])
	{
		//declare, allocate, and initialize box objects
		Box mybox1=new Box(10,20,15);
		Box mybox2=new Box(3,6,9);
		
		double vol;
		vol=mybox1.volume();
		System.out.println("Volume of mybox1 is "+vol);
		
		vol=mybox2.volume();
		System.out.println("Volume of mybox2 is "+vol);
	}
}
.paŠ2.bİ Thå 'this§ keyword:
------------------------
     Sometimeó  á  methoä wilì neeä tï refeò tï thå  objecô  thaô 
invokeä  it®  Tï  allo÷ this¬ Javá defineó  thå  'this§  keyword® 
'this' can be used inside any method to refer to the 'current' 
object®  Thaô  ió 'this§ ió alwayó á referencå tï thå  objecô  oî 
whicè thå methoä waó invoked.

Example:
--------
/¯ Á redundanô uså oæ 'this'.

Box(doublå w¬ doublå h¬ doublå d)
{
     this.width=w;
     this.height=h;
     this.depth=d;
}

2.cİ Garbagå Collection:
------------------------
     Sincå  objectó arå dynamicallù allocateä bù usinç thå  'new§ 
operator¬  yoõ mighô bå wonderinç ho÷ sucè objectó arå  destroyeä 
anä   theiò  memorù  releaseä æoò  lateò  reallocation®  Iî   somå 
languages¬  sucè  aó C++¬ dynamicallù allocateä objectó  musô  bå 
manuallù  releaseä bù uså oæ á 'delete§ opereator® Javá  takeó  á 
differenô approach¬ iô handleó deallocatioî foò yoõ automatically.
Thå   techniquå  thaô  accomplisheó  thió  ió   calleä   'garbagå 
collection'® 
Noteº  Wheî  nï  referenceó tï aî objecô exist¬  thaô  objecô  ió 
assumeä  tï bå nï longeò needed¬ anä thå memorù occupieä  bù  thå 
objecô caî bå destroyeä bù garbagå collector.

2.dİ Thå finalize(© Method:
---------------------------
     Sometimeó aî objecô wilì neeä tï perforí somå actioî wheî iô 
ió destroyed® Foò example¬ iæ aî objecô ió holdinç somå  noî-javá 
resourcå sucè aó á filå handlå oò windo÷ characteò font¬ theî yoõ 
mighô  wanô  tï  makå surå theså resourceó arå  freeä  beforå  aî 
objecô  ió destroyed® Tï handlå sucè situations¬ Javá provideó  á 
mechanisí  calleä 'finalization'® Bù usinç finalization¬ yoõ  caî 
definå  specifiã actionó thaô wilì occuò wheî aî objecô  ió  jusô 
abouô tï bå reclaimeä bù thå garbagå collector.

2.eİ Overloadinç Methodó ¦ Constructors:
----------------------------------------
     Iî Javá iô ió possiblå tï definå twï oò morå methodó  withiî 
thå  samå  clasó  thaô  sharå thå samå name¬  aó  lonç  aó  theiò 
parameteò  declarationó arå different® Theî thå methodó arå  saiä 
tï  'overloaded'¬  anä  thå procesó ió  referreä  tï  aó  'methoä 
overloading'®  Iô  ió  onå  oæ  thå  wayó  thaô  Javá  implementó 
'polymorphism'.
     Iî  additioî  tï  overloaä  normaì  methods¬  yoõ  caî  alsï 
overloaä constructoò methods.
ŠExamplå foò overloadinç methodsº OverloadDemo.java
--------------------------------------------------
//Demonstrate method overloading.
class Overload
{
	void test()
	{
		System.out.println("No parameters");
	}
	
	//Overload test for one integer parameter.
	void test(int a)
	{
		System.out.println("a: "+a);
	}
	
	//Overload test for two integer parameters.
	void test(int a, int b)
	{
		System.out.println("a and b: "+ a + " " + b);
	}
	
	//Overload test for a double parameter.
	double test(double a)
	{
		System.out.println("double a:" +a);
		return a*a;
	}
}

class OverloadDemo
{
     public static void main(String args[])
     {
          Overload obj=new Overload();
	  double result;
		
	  obj.test();
	  obj.test(10);
	  obj.test(10,20);
	  result=obj.test(12.5);
	  System.out.println("Result of obj.test(12.5): "+result);
     }
}
.pa	ŠExamplå foò Overloadinç Constructorsº BoxTest3.java
---------------------------------------------------	
// Here, Box defines three constructors to 
/¯ initialize the dimensions of the box various ways.
class Box
{
     double width¬ height¬ depth;

     // Constructor with all dimensions.
     Box(double w, double h, double d)
     {
          width=w;
	  height=h;
	  depth=d;
     }
     // Constructor with no dimensions.
     Box()
     {
          width=0;
	  height=0;
	  depth=0;
     }
     // Constructor used when cube is created
     Box(double len)
     {
          width=height=depth=len;
     }
	
     // Compute and return volume
     double volume()
     {
          return width*height*depth;
     }
}

class BoxTest3
{
     public static void main(String args[])
     {
          //declare, allocate, and initialize box objects
	  Box mybox1=new Box(10,20,15);
	  Box mybox2=new Box();
	  Box mycube=new Box(7);
		
	  double vol;
	  vol=mybox1.volume();
	  System.out.println("Volume of mybox1 is "+vol);
		
	  vol=mybox2.volume();
	  System.out.println("Volume of mybox2 is "+vol);
		
	  vol=mycube.volume();
	  System.out.println("Volume of mycube is "+vol);
     }
}