                       ALGORITHÍ COMPUTERÓ    Exceptioî Handling
                       ------------------­    Topiã ­ 13
Aî  Exceptioî  ió  aî abnormaì conditioî thaô ariseó  iî  á  codå 
sequencå aô ruî time® Iî otheò words¬ aî exceptioî ió á ruî  timå 
error® 
1Ý Exceptioî-Handlinç Fundamentals:
-----------------------------------
     Á Javá exceptioî ió aî objecô thaô describeó aî  exceptionaì 
(thaô  is¬ error© conditioî thaô haó occureä iî á piecå oæ  code® 
Wheî aî exceptionaì conditioî arises¬ aî objecô representinç thaô 
exceptioî  ió  createä anä throwî iî thå methoä thaô  causeä  thå 
error® Thaô methoä maù chooså tï handlå thå exceptioî itself¬  oò 
pasó  iô on® Eitheò way¬ aô somå point¬ thå exceptioî  ió  caughô 
anä  processed® Exceptionó caî bå generateä bù thå Javá  ruî-timå 
system¬  oò  theù  caî  bå  manuallù  generateä  bù  youò   code® 
Exceptionó  throwî  bù  Javá relatå tï  fundamentaì  erroró  thaô 
violatå thå ruleó oæ Javá languagå oò thå constraintó oæ thå Javá 
executioî   environment®   Manuallù  generateä   exceptionó   arå 
typicallù useä tï reporô somå erroò conditioî tï thå calleò oæ  á 
method.
     Javá exceptioî handlinç ió manageä viá fivå keywords:
try¬ catch¬ throw¬ throws¬ anä finally® 
     Thió ió thå generaì forí oæ exceptioî-handlinç block:
trù {
  /¯ blocë oæ codå tï monitoò foò errors
}

catch(ExceptionType± exOb© {
  /¯ exceptioî handleò foò Exceptioî Type1
}

catch(ExceptionType² exOb© {
  /¯ exceptioî handleò foò Exceptioî Typå2
}
//...
finallù {
  /¯ blocë oæ codå tï bå executeä beforå trù blocë ends
}

2Ý Exceptioî Types:
-------------------
                         Throwable
                             |
             --------------------------------------
             ü                                    |
          Exceptioî                             Error
             |
          RuntimeException

     Alì  exceptionó arå suâ classeó oæ Throwable® Onå brancè  ió 
headeä  bù 'Exception'® Theså exceptionó shoulä bå  caught®  It'ó 
suâ clasó ió 'RuntimeException'® Exceptionó oæ thió typå neeä noô 
bå caught¬ foò exampleº divisioî bù zerï etc.
     Erroò defineó exceptionó thaô arå noô expecteä tï bå  caughô 
undeò normaì circumstanceó bù youò program.Š3Ý Uncaughô Exceptions:
-----------------------
     Beforå  yoõ learî ho÷ tï handlå exceptionó iî youò  program¬ 
iô ió usefuì tï seå whaô happenó wheî yoõ don'ô handlå them®

Ex1º Listinç oæ 'Exec0.java'
----------------------------
/¯  Thió smalì prograí includeó aî exceptioî  thaô  intentionallù 
/¯  causeó á dividå-by-zerï error.
/¯  Thå erroò printeä wilì bå explaininç thå exception
/¯  alonç witè thå linå number.
class Exec0 {
	public static void main(String args[])
	{
		int d = 0;
		int a = 42/d;
		System.out.println("end of main");
	}
}

Ex2º Listinç oæ 'Exec1.java':
-----------------------------
/¯ Thå erroò printeä showó thå resultinç calì stack.
class Exec1 {
	static void subroutine() {
		int d = 0;
		int a = 42/d;
		System.out.println("end of main");
	}
	public static void main(String args[])
	{
		Exec1.subroutine();	
	}
}

[4Ý Usinç trù anä catch:
------------------------
     Althougè thå defaulô exceptioî handleò provideä bù thå  Javá 
ruî-timå systeí ió usefuì foò debugging¬ yoõ wilì wanô tï  handlå 
aî exceptioî yourself® Doinç sï provideó twï benefits® First¬  iô 
allowó yoõ tï fiø thå error® Second¬ iô preventó thå prograí froí 
automaticallù terminating® 

Exº Listinç oæ Exec2.java:
--------------------------
class Exec2 {
	public static void main(String args[])
	{
		int d,a;
		try
		{
		  d = 0;
		  a = 42/d;
		  System.out.println("This will not be printed..");
		}Š		catch(ArithmeticException e)
		{
			System.out.println("Divisioî bù Zero");
		}
		
		System.out.println("After catch statement");
	}
}

[4.aÝ Displayinç thå Descriptioî oæ aî Exception:
-------------------------------------------------
     Replacå thå catcè blocë iî thå abovå prograí as:
catch(ArithmeticExceptioî e© {
  System.out.println("Exceptionº ¢ « e);
  á ½ 0» /¯ seô á zerï anä continue
}

[5Ý Multiplå catcè Clauses:
---------------------------
     Iî somå cases¬ morå thaî onå exceptioî coulä bå raiseä bù  á 
singlå  piecå oæ code® Tï handlå thió typå oæ situation¬ yoõ  caî 
specifù twï oò morå catcè clauses¬ eacè catchinç á differenô typå 
oæ exception® Thå followinç examplå trapó twï differenô exceptioî 
types.

Exº Listinç oæ 'MultiCatch.java':
---------------------------------
class MultiCatch {
	public static void main(String args[])
	{
		try {
			int a = args.length;
			System.out.println("a = "+a);
			int b = 42/a;
			int c[] = {1};
			c[42] = 99;
		}
		catch (ArithmeticException e)
		{
			System.out.println("Divide by 0 : " + e);
		}
		catch (ArrayIndexOutOfBoundsException e)
		{
			System.out.println("Array Index oob: " + e);
		}
	}
}
.paŠ[5.aÝ Ordeò oæ catcè statements:
--------------------------------
     Wheî  yoõ uså multiplå catcè statements¬ iô ió importanô  tï 
remembeò thaô exceptioî subclasseó musô comå beforå anù oæ  theiò 
superclasses®  Thió  ió  becauså á catcè statemenô  thaô  useó  á 
superclasó  wilì  catcè exceptionó oæ thaô typå pluó anù  oæ  itó 
subclasses®  Thus¬ á subclasó woulä neveò bå reacheä iæ  iô  camå 
afteò  itó superclass® Further¬ iî Java¬ unreachablå codå  ió  aî 
error® Foò example¬ consideò thå followinç program:

Exº Listinç oæ 'SuperSubCatch.java':
------------------------------------
/* This program contains an error
A subclass must come before its superclass in
a series of catch statements. If not,
unreachble code will be created and a 
compile-time error will result.
*/
	
class SuperSubCatch {
	public static void main(String args[]) {
		 try
		 {
			int a = 0;
			int b = 42/a;
		 } 
		 catch(Exception e) 
		 {
		   System.out.println("generic exception catch.");
		 }
		 /* This catch is never reached because
	ArithmeticException is a subclass of Exception. */
			 		
		 catch(ArithmeticException e) 
		 {
		   System.out.println("This is never reached.");
		 }
	}
}

[6Ý throw:
----------
     Aparô  froí Javá ruî timå exceptionó iô ió alsï possiblå  tï 
thro÷ aî exceptioî explicitly® 
     Exº thro÷ ThrowableInstance
Here¬ ThrowableInstancå musô bå aî objecô oæ typå Throwablå oò  á 
subclasó oæ Throwable® Simplå types¬ sucè aó inô oò char¬ aó welì 
aó  noî-Throwablå classes¬ sucè aó Strinç anä Object¬  cannoô  bå 
useä aó exceptions® Therå arå twï wayó yoõ caî obtaiî á Throwablå 
objectº usinç á parameteò intï catcè clause¬ oò creatinç onå witè 
thå ne÷ operator.
     Thå  flo÷  oæ executioî stopó immediatelù  afteò  thå  thro÷ 
statement» anù subsequenô statementó arå noô executed® 

ŠExº Listinç oæ 'ThrowDemo.java':
--------------------------------
class ThrowDemo
{
	static void demoproc()
	{
		try
		{
			throw new NullPointerException("demo");
		}
		catch(NullPointerException e)
		{
			System.out.println("Caught inside demoproc.");
			throw e;
		}
	}
	public static void main(String args[])
	{
		try
		{
			demoproc();
		}
		catch(NullPointerException e)
		{
			System.out.println("Recaught: " + e);
		}
	}
}
[7Ý throws:
-----------
     Iæ á methoä ió capablå oæ causinç aî exceptioî thaô iô  doeó 
noô handle¬ iô musô specifù thió behavioò sï thaô calleró oæ  thå 
methoä  caî guarä themselveó againsô thaô exception® Yoõ dï  thió 
bù includinç á throwó clauså iî thå method'ó declaration® Thió ió 
necessarù  foò  alì  exceptions¬ excepô thoså oæ  typå  Erroò  oò 
RuntimeException¬   oò  anù  oæ  theiò  subclasses®   Alì   otheò 
exceptionó thaô á methoä caî thro÷ musô bå declareä iî thå throwó 
clause® Iæ theù arå not¬ á compilå timå erroò wilì result.

Ex1º Listinç oæ hrowsDemo.java:
-------------------------------
// This program contains an error and will not compile.

class ThrowsDemo
{
	static void throwOne()
	{
		System.out.println("Inside throwOne.");
		throw new IllegalAccessException("demo");
	}
	public static void main(String args[])
	{
		throwOne();
	}
}ŠEx2º Listinç oæ ThrowsDemo1.java:
---------------------------------
// This program ducks an Exception.
// The Exception is passed to call stack

class ThrowsDemo1
{
	static void throwOne() throws IllegalAccessException
	{
		System.out.println("Inside throwOne.");
		throw new IllegalAccessException("demo");
	}
	public static void main(String args[]) 
                    throws IllegalAccessException
	{
		throwOne();
	}
}

Ex3º Listinç oæ 'ThrowsDemo2.java':
-----------------------------------
// This program ducks an Exception.
// The Exception is passed to call stack
/¯ Thå exceptioî ió handleä iî maiî method.
class ThrowsDemo2
{
	static void throwOne() throws IllegalAccessException
	{
		System.out.println("Inside throwOne.");
		throw new IllegalAccessException("demo");
	}
	public static void main(String args[])
	{
		try
		{
			throwOne();
		}
		catch (IllegalAccessException e)
		{
			System.out.println("Caught " + e);
		}
	}
}

[8Ý finally:
------------
     Wheî  exceptionó arå thrown¬ executioî iî á methoä  takeó  á 
ratheò abrupt¬ nonlineaò patè thaô alteró thå normaì flo÷ througè 
thå  method® Dependinç upoî ho÷ thå methoä ió called¬ iô ió  eveî 
possiblå  foò  aî  exceptioî  tï  causå  thå  methoä  tï   returî 
prematurely®  Thió  coulä  bå  á probleí  iî  somå  methods®  Foò 
example¬  iæ á methoä openó á filå upoî entrù anä closeó iô  upoî 
exit¬ theî yoõ wilì noô wanô thå codå thaô closeó thå filå tï  bå 
bypasseó bù thå exceptioî-handlinç mechanism® Thå finallù keyworä 
ió designeä tï addresó thió contingency.ŠExº Listinç oæ 'FinallyDemo.java':
----------------------------------
class FinallyDemo
{
	static void procA()
	{
		try
		{
			System.out.println("Inside procA");
			throw new RuntimeException("demo");
		}
		finally
		{
			System.out.println("procA's finally");
		}
	}
	
	public static void main(String args[])
	{
		try {
			procA();
		}
		catch(Exception e)
		{
			System.out.println("Exception caught");
		}
	}
}

[9Ý Java'ó Built-iî Exceptions:
-------------------------------
[9.aÝ Uncheckeä Exceptionsº (Theså exceptionó neeä noô bå caught)
-----------------------------------------------------------------
ArithmeticException
ArrayIndexOutOfBoundsException
ArrayStoreException
ClassCastException
IllegalArgumentException
IllegalMonitorStateException
IllegalStateException
IllegalThreadStateException
IndexOutOfBoundsException
NegativeArraySizeException
NullPointerException
NumberFormatException
SecurityException
StringIndexOutOfBounds
UnsupportedOperationException
.paŠ[9.bÝ Checkeä Exceptionsº (Theså exceptionó should bå caught)
-------------------------------------------------------------
ClassNotFoundException
CloneNotSupportedException
IllegalAccessException
InstantiationException
InterruptedException
NoSuchFieldException
NoSuchMethodException

[10Ý Creatinç Youò Owî Exceptions:
----------------------------------
     Althougè  Java'ó  builô-iî  exceptionó  handlå  mosô  commoî 
errors¬ yoõ wilì probablù wanô tï creatå youò owî exceptioî typeó 
tï  handlå  situationó specifiã tï youò applications® Tï  dï  so¬ 
jusô definå á subclasó oæ Exception.
     Thå  followinç methodó caî bå overrideî wheî yoõ writå  youò 
owî exceptions:

Throwablå fillInStackTrace()
Strinç getLocalizeMessage()
Strinç getMessage()
voiä printStackTrace()
voiä printStackTrace(PrintStreaí stream)
voiä printStackTrace(PrintWriteò stream)
Strinç toString()

Exº Listinç oæ 'ExceptionDemo.java':
------------------------------------
// This program creates a custom exception type.
class MyException extends Exception
{
	private int detail;
	
	MyException(int a)
	{
		detail = a;
	}
	
	public String toString()
	{
		return "MyException[" + detail + "]";
	}
}
class ExceptionDemo 
{
	static void compute(int a) throws MyException
	{
		System.out.println("Called compute(" + a + ")");
		if(a > 10)
			throw new MyException(a);
			System.out.println("Normal exit");
	}
	
Š	public static void main(String args[])
	{
		try {
			compute(1);
			compute(20);
		}
		catch(MyException e)
		{
			System.out.println("Caught " + e);
		}
	}
}
