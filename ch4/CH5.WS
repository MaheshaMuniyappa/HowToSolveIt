         ALGORITHÍ COMPUTERÓ     Datá types¬ Variableó ¦ Operators
         -------------------     Topiã ­ 5

[1Ý Data Types:
    -----------
Java defines eight simple data types.

* byte		* short
* int		* long
* char		* float
* double	* boolean

These can be put in four groups.

[1.1] Integersº Thió grouð includeó byte,short¬ inô anä  lonç  whicè 
arå foò wholå­valueä signeä numbers.

------------------------------------------------------------------	
Name	Width   Range
	(bits)
------------------------------------------------------------------
long	64	-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807	

int     32	-2,147,483,648 to 2,147,483,647

short   16	-32,768 to 32,767		

byte    8	-128 to 127	
-----------------------------------------------------------------
[1.1aÝ Example for Long Data type: Light.java
      -------------------------------------- 
// compute distance light travels using long variables.
class Light
{
	public static void main(String args[])
	{
		int lightspeed;
		long days;
		long seconds;
		long distance;
		
		//approximate speed of light in miles per second
		lightspeed=86000;
		
		days=1000;
		
		seconds=days*24*60*60;
		distance=lightspeed*seconds;
		
		System.out.print("In "+days);
		System.out.print(" days light will travel about ");
		System.out.println(distance+" miles.");
	}
}
Š[1.2] Floatinç-poinô numbersº Thió grouð includeó floaô anä  double¬ 
   whicè   represenô numberó witè fractionaì precision.

double	6´ bits	    1.7e-308 to 1.7e+308

float	3² bitó     3.4e-038 to 3.4e+038

[1.3] Charactersº Thió grouð includeó char¬ whicè representó  symboló 
  iî á   characteò set¬ likå letteró anä numbers.

[1.4] Booleanº Thió grouð includeó boolean¬ whicè ió á speciaì  typå  
  foò representinç true/falså values.


[1.5Ý Literals:
      ---------
	Á  constanô valuå iî Javá ió createä bù usinç  á  literaì 
representatioî oæ it® Foò example

	100  		 -	 Integer Literal
	98.6 		 - 	 Floating-point Literal
	'X'  		 - 	 Character constant
	"This is a test" -	 String Literal

[1.6Ý Character Escape Sequences:
      ---------------------------

Escape Sequence		Description
---------------		-----------
\ddd			Octal character(ddd)
\uxxxx			Hexadecimal UNICODE character(xxxx)
\'			Single quote
\"			Double quote
\\			Backslash
\r			Carriage Return
\n			New Line or Line Feed
\f			Form Feed
\t			Tab
\b			Backspace				 	 


[2Ý VARIABLES:
    ----------
	Thå  variablå  ió  thå basiã uniô oæ storagå  iî  á  javá 
program®  Á  variablå  ió  defineä  bù  thå  combinatioî  oæ   aî 
identifier¬ á type¬ anä aî optionaì initializer.

Note: In java, all variables must be declared before they can be used. 
The basic form of a variable is

	type identifier[=value][,identifier [=value]...];

     Thå  'type§  ió onå oæ Java'ó atomiã types¬ oò namå  oæ  thå 
clasó oò interface® The 'identifier' is the name of the variable.
ŠEx:
	int a,b,c;
	int d=5,e,f=5;
	byte z=22;
	double pi=3.14159;
	char x='x';

[3Ý OPERATORS:
    ----------
[3.1Ý Arithmetic operators:
      ---------------------
Arithmetiã operatoró arå useä iî mathematicaì expressionó iî  thå 
samå waù thaô arå useä iî algebra.

	Operator			Result
	--------			------
	+				Addition
	-				Subtraction
	*				Multiplication
	/				Division
	%				Modulus
	++				Increment
	+=				Addition assignment
	-=				Subtraction assignment
	*=				Multiplication assignment
	/=				Division assignment
	%=				Modulus assignment
	--				Decrement

Thå  operandó  oæ thå arithmetiã operatoró musô bå oæ  á  numeriã 
type® Yoõ cannoô uså theí oî booleaî types¬ buô yoõ caî uså  theí 
oî  chaò  types¬ sincå thå chaò typå iî Javá is¬  essentially¬  á 
subseô oæ int.

[3.2Ý Bitwise Operators:
      -----------------
Javá  defineó severaì bitwiså operatoró whicè caî bå  applieä  tï 
thå  integeò  typpes¬  long¬ int¬ short¬ char¬  anä  byte®  Theså 
operatoró acô upoî thå individuaì bitó oæ theiò operands.

	Operator		Result
	--------		------
	~			Bitwise unary NOT
	&			Bitwise AND
	|			Bitwise OR
	^			Bitwise exclusive OR
	>>			Shift right
	>>>			Shift right zero fill
	<<			Shift left
	&=			Bitwise AND assignment
	|=			Bitwise OR assignment
	^=			Bitwise exclusive OR assignment
	>>=			Shift right assignment
	>>>=			Shift right zero fill assignment
	<<=			Shift left assignmentŠ
	Thå  bitwiså  logicaì operatoró arå &¬ |¬ ^¬ anä  ~®  Thå 
followinç tablå showó thå outcomå oæ eacè operation.

A	B	A | B		A & B		A ^ B		~A
-------------------------------------------------------------------
0	0	0		0		0		1
1	0	1		0		1		0
0	1	1		0		1		1
1	1	1		1		0		0


[3.3Ý Relational Operators:
      ---------------------
Thå  ralationaì  operatoró determinå thå relationshið   thaô  onå 
operanä haó tï thå other® Specifically¬ theù definå equalitù  anä 
ordering® 

	Operator			Result
	--------			------
	==				Equal to
	!=				Not equal to
	>				Greater than
	<				Less than
	>=				Greater than or equal to
	<=				Less than or equal to

[3.4Ý Boolean Logical Operators:
      --------------------------						
Thå Booleaî logicaì operatoró showî herå operatå onlù oî  booleaî 
operands®  Alì thå binarù logicaì operatoró combinå  twï  booleaî 
valueó tï forí á resultanô booleaî value.
	
	Operator			Result
	-------				------
	&				Logical AND
	|				Logical OR
	^				Logical XOR
	||				Short-circuit OR
	&&				Short-circuit AND
	!				Logical unary NOT
	&=				AND assignment
	|=				OR assignment
	^=				XOR assignment
	==				Equal to
	!=				Not equal to
	?:				Ternary if-then-else

Thå logicaì operators¬ &¬ |¬ anä ^¬ operatå oî booleaî valueó  iî 
thå  samå waù thaô theù operatå oî thå bitó  oî aî  integer®  Thå 
logicaì ¡ invertó thå Booleaî	 stateº !truå =½ falså anä !falså 
=½  true®  Thå followinç tablå showó thå effecô oæ  eacè  logicaì 
operation:

ŠA	B	A | B		A & B		A ^ B		!A
-------------------------------------------------------------------
F	F	F		F		F		T
T	F	T		F		T		F
F	T	T		F		T		T
T	T	T		T		F		F

[3.4aÝ Examplå foò Booleaî Logicº BoolLogic.java
       -----------------------------------------

// Demonstrate the boolean logical operators.

class BoolLogic
{
	public static void main(String args[])
	{
		boolean a=true;
		boolean b=false;
		boolean c=a|b;
		boolean d=a&b;
		boolean e=a^b;
		boolean f=(!a&b)|(a&!b);
		boolean g=!a;
		
		System.out.println("a= "+a);
		System.out.println("b= "+b);	
		System.out.println("a|b= "+c);
		System.out.println("a&b= "+d);
		System.out.println("a^b= "+e);
		System.out.println("!a&b|a&!b= "+f);
		System.out.println("!a= "+g);
	}
}

[4Ý Primitiveó anä Conversion:
------------------------------
[4.aÝ Assignment:
-----------------
Assignmenô  conversioî  happenó  wheî yoõ assigî  á  valuå  tï  á 
variablå  oæ  á  differenô  typå froí  thå  originaì  value®  Foò 
example:
1® inô i;
2® doublå d;
3® é ½ 10;
4® ä ½ i;

Iî thå abovå code¬ é getó converteä tï thå doublå precisioî valuå 
10.000000000° (remaininç zeroeó arå omitteä foò brevity).
     Thå codå abovå ió perfectlù legal® Somå assignments¬ oî  thå 
otheò hand¬ arå illegal® Foò example¬ thå followinç codå wilì noô 
compile.
1® doublå d;
2® shorô s;
3® ä ½ 1.2345;
4® ó ½ d»   /¯ assigî á doublå valuå tï á shorô variable.ŠThå  generaì  ruleó foò primitivå assignmenô  conversioî  caî  bå 
stateä aó folows:
i© Á booleaî maù noô bå converteä tï anù type.
ii©  Á noî-booleaî maù bå converteä tï anotheò noî-booleaî  type¬ 
provovideä thå conversioî ió á wideninç conversion.
iii©  Á noî-booleaî maù noô bå converteä tï  anotheò  noî-booleaî 
type¬ iæ thå conversioî woulä bå narrowinç conversion.

Wideninç conversions:
        chaò \
               \
                 ---¾ inô ---¾ lonç ---¾ floaô ---¾ double
                /
bytå --¾ short / 

[4.bÝ Methoä Call:
------------------
     Á  methoä-calì conversioî happenó wheî yoõ pasó á  valuå  oæ 
onå typå aó aî argumenô tï á methoä thaô expectó á diferenô type® 
Foò example¬ thå cos(© methoä oæ thå Matè clasó expectó á  singlå 
argumenô oæ typå double® Consideò thå followinç code:
1® floaô frads;
2® doublå d;
3® fradó ½ 2.34567f;
4®  ä  ½ Math.cos(frads)»  /¯ pasó floaô tï methoä  thaô  expectó 
                           /¯ double
     Thå  floaô  valuå iî fradó ió automaticallù converteä  tï  á 
doublå valuå beforå iô handeä tï thå cos(© method.
     Thå  codå  belo÷  generateó á compileò  erroò  because¬  thå 
methoä elementAt(© ió expectinç aî integeò argument.
1® doublå ä ½ 12.0;
2® Objecô oâ ½ myVector.elementAt(d)»  /¯ myVectoò ió á Vector.

[4.cÝ Arithmetiã Promotion:
---------------------------
Arithmetiã   promotioî  conversionó  happeî   withiî   arithmetiã 
statements¬  whilå  thå compileò ió tryinç tï makå senså  ouô  oæ 
manù differenô possiblå kindó oæ operand.
     Consideò thå followinç fragment:
1® shorô ó ½ 9;
2® inô é ½ 10;
3® floaô æ ½ 11.1f;
4® doublå ä ½ 12.2;
5® if(++ó ª é >½ f/d)
6®    System.out.println(">>>");
7® else
8®    System.out.println("<<<");

     Thå  ruleó  thaô  goverî  arithmetiã  promotioî  distinguisè 
betweeî  unary(+¬-,++¬­-,~©  anä  binarù  (+¬-,*,/,%,^,>>,>>>,<<© 
operators.
.paŠ     Foò unarù operators¬ twï ruleó apply¬ dependinç oî thå  typå 
oæ thå singlå operand.
  i©  Iæ  thå  operanä  ió á byte¬ á short¬  oò  á  char¬  iô  ió 
converteä tï aî int.
  ii©  Elså  iæ  thå  operanä ió oæ anù otheò  type¬  iô  ió  noô 
converted.

     Foò binarù operators¬ therå arå fouò rules¬ dependinç oî thå 
typeó oæ thå twï operand.
     i©  Iæ onå oæ thå operandó ió double¬ thå otheò  operanä  ió 
converteä tï á double.
     ii© Elså iæ onå oæ thå operandó ió float¬ thå otheò  operanä 
ió converteä tï á float.
     iii©  Elså  iæ  onå oæ thå operandó ió  á  long¬  thå  otheò 
operanä ió converteä tï á long.
     iv© Elså botè operandó arå converteä tï ints.

     Witè  theså ruleó iî mind¬ iô ió possiblå tï determinå  whaô 
reallù happenó iî thå codå examplå given:
1® Thå shorô ó ió promoteä tï aî inô anä theî incremented.
2®  Thå  resulô oæ steð ± (aî int© ió multiplieä bù  thå  inô  i® 
Sincå  botè  operandó  arå oæ samå type¬ anä  thaô  typå  ió  noô 
narroweò  thaî aî int¬ nï conversioî ió necessary® Thå resulô  oæ 
thå multiplicatioî ió aî int.
3® Beforå dividinç floaô æ bù doublå d¬ æ ió wideneä tï á double® 
Thå conversioî generateó á double-precisioî result.
4® Thå resulô oæ steð ² ¨ aó int© ió tï bå compareä tï thå resulô 
oæ  steð ³ ¨ á double)® Thå iî ió converteä tï á double¬ anä  thå 
twï  arå compared® Thå resulô oä á comparisoî ió alwayó  oæ  typå 
boolean.

[5Ý Primitiveó anä Casting:
---------------------------
     Javá ió perfectlù willinç tï perforí wideninç conversionó oî 
primitives®  Castinç  meanó  explicitlù tellinç Javá  tï  makå  á 
conversion®  Á  castinç  conversioî  maù  wideî  oò  narro÷   itó 
argument®  Tï cast¬ jusô precedå á valuå witè  thå  parenthesizeä 
namå oæ thå desireä type.
     Foò example:
1® shorô ó ½ 259;
2® bytå â ½ (byte© s;
3® System.out.println("â ½ ¢ « b);
     
     Thå abovå codå printó ouô thå valuå 3.
Thå ruleó oæ casting:
     i©  Yoõ  caî  casô anù noî-booleaî typå tï  anù  otheò  noî-
booleaî type.
     ii© Yoõ cannoô casô á booleaî tï anù otheò type» yoõ  cannoô 
casô anù otheò typå tï á boolean.

Exº Wilì thå followinç codå compile?
1® bytå â ½ 2;
2® shorô b± ½ 3;
3® â ½ â ª b1;
