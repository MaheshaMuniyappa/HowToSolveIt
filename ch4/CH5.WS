         ALGORITH͠COMPUTER� �   Dat� types� Variable� � Operators
         -------------------     Topi� � 5

[1� Data Types:
    -----------
Java defines eight simple data types.

* byte		* short
* int		* long
* char		* float
* double	* boolean

These can be put in four groups.

[1.1] Integers� Thi� grou� include� byte,short� in� an� �lon� �whic� �
ar� fo� whol�value� signe� numbers.

------------------------------------------------------------------	
Name	Width   Range
	(bits)
------------------------------------------------------------------
long	64	-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807	

int     32	-2,147,483,648 to 2,147,483,647

short   16	-32,768 to 32,767		

byte    8	-128 to 127	
-----------------------------------------------------------------
[1.1a� Example for Long Data type: Light.java
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
�[1.2]�Floatin�-poin� numbers� Thi� grou� include� floa� an� �double� �
   whic�   represen� number� wit� fractiona� precision.

double	6� bits	    1.7e-308 to 1.7e+308

float	3� bit�     3.4e-038 to 3.4e+038

[1.3] Characters� Thi� grou� include� char� whic� represent� �symbol� �
  i� �   characte� set� lik� letter� an� numbers.

[1.4] Boolean� Thi� grou� include� boolean� whic� i� � specia� �typ�  �
  fo� representin� true/fals� values.


[1.5� Literals:
      ---------
	� �constan� valu� i� Jav� i� create� b� usin� �� �litera� �
representatio� o� it� Fo� example

	100  		 -	 Integer Literal
	98.6 		 - 	 Floating-point Literal
	'X'  		 - 	 Character constant
	"This is a test" -	 String Literal

[1.6� Character Escape Sequences:
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


[2� VARIABLES:
    ----------
	Th� �variabl� �i� �th� basi� uni� o� storag� �i� �� �jav� �
program� �� �variabl� �i� �define� �b� �th� �combinatio� �o� ��a� �
identifier� � type� an� a� optiona� initializer.

Note: In java, all variables must be declared before they can be used. 
The basic form of a variable is

	type identifier[=value][,identifier [=value]...];

     Th� �'type� �i� on� o� Java'� atomi� types� o� nam� �o� �th� �
clas� o� interface� The 'identifier' is the name of the variable.
�Ex:
	int a,b,c;
	int d=5,e,f=5;
	byte z=22;
	double pi=3.14159;
	char x='x';

[3� OPERATORS:
    ----------
[3.1� Arithmetic operators:
      ---------------------
Arithmeti� operator� ar� use� i� mathematica� expression� i� �th� �
sam� wa� tha� ar� use� i� algebra.

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

Th� �operand� �o� th� arithmeti� operator� mus� b� o� �� �numeri� �
type� Yo� canno� us� the� o� boolea� types� bu� yo� ca� us� �the� �
o� �cha� �types� sinc� th� cha� typ� i� Jav� is� �essentially� �� �
subse� o� int.

[3.2� Bitwise Operators:
      -----------------
Jav� �define� severa� bitwis� operator� whic� ca� b� �applie� �t� �
th� �intege� �typpes� �long� int� short� char� �an� �byte� �Thes� �
operator� ac� upo� th� individua� bit� o� thei� operands.

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
	<<=			Shift left assignment�
	Th� �bitwis� �logica� operator� ar� &� |� ^� an� �~� �Th� �
followin� tabl� show� th� outcom� o� eac� operation.

A	B	A | B		A & B		A ^ B		~A
-------------------------------------------------------------------
0	0	0		0		0		1
1	0	1		0		1		0
0	1	1		0		1		1
1	1	1		1		0		0


[3.3� Relational Operators:
      ---------------------
Th� �ralationa� �operator� determin� th� relationshi� � tha� �on� �
operan� ha� t� th� other� Specifically� the� defin� equalit� �an� �
ordering� 

	Operator			Result
	--------			------
	==				Equal to
	!=				Not equal to
	>				Greater than
	<				Less than
	>=				Greater than or equal to
	<=				Less than or equal to

[3.4� Boolean Logical Operators:
      --------------------------						
Th� Boolea� logica� operator� show� her� operat� onl� o� �boolea� �
operands� �Al� th� binar� logica� operator� combin� �tw� �boolea� �
value� t� for� � resultan� boolea� value.
	
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

Th� logica� operators� &� |� an� ^� operat� o� boolea� value� �i� �
th� �sam� wa� tha� the� operat� o� th� bit�  o� a� �integer� �Th� �
logica� � invert� th� Boolea�	 state� !tru� =� fals� an� !fals� �
=� �true� �Th� followin� tabl� show� th� effec� o� �eac� �logica� �
operation:

�A	B	A | B		A & B		A ^ B		!A
-------------------------------------------------------------------
F	F	F		F		F		T
T	F	T		F		T		F
F	T	T		F		T		T
T	T	T		T		F		F

[3.4a� Exampl� fo� Boolea� Logic� BoolLogic.java
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

[4� Primitive� an� Conversion:
------------------------------
[4.a� Assignment:
-----------------
Assignmen� �conversio� �happen� �whe� yo� assig� �� �valu� �t� �� �
variabl� �o� �� �differen� �typ� fro� �th� �origina� �value� �Fo� �
example:
1� in� i;
2� doubl� d;
3� � � 10;
4� � � i;

I� th� abov� code� � get� converte� t� th� doubl� precisio� valu� �
10.000000000� (remainin� zeroe� ar� omitte� fo� brevity).
     Th� cod� abov� i� perfectl� legal� Som� assignments� o� �th� �
othe� hand� ar� illegal� Fo� example� th� followin� cod� wil� no� �
compile.
1� doubl� d;
2� shor� s;
3� � � 1.2345;
4� � � d�   /� assig� � doubl� valu� t� � shor� variable.�Th� �genera� �rule� fo� primitiv� assignmen� �conversio� �ca� �b� �
state� a� folows:
i� � boolea� ma� no� b� converte� t� an� type.
ii� �� no�-boolea� ma� b� converte� t� anothe� no�-boolea� �type� �
provovide� th� conversio� i� � widenin� conversion.
iii� �� no�-boolea� ma� no� b� converte� t� �anothe� �no�-boolea� �
type� i� th� conversio� woul� b� narrowin� conversion.

Widenin� conversions:
        cha� \
               \
                 ---� in� ---� lon� ---� floa� ---� double
                /
byt� --� short / 

[4.b� Metho� Call:
------------------
     � �metho�-cal� conversio� happen� whe� yo� pas� � �valu� �o� �
on� typ� a� a� argumen� t� � metho� tha� expect� � diferen� type� �
Fo� example� th� cos(� metho� o� th� Mat� clas� expect� � �singl� �
argumen� o� typ� double� Conside� th� followin� code:
1� floa� frads;
2� doubl� d;
3� frad� � 2.34567f;
4� �� �� Math.cos(frads)�  /� pas� floa� t� metho� �tha� �expect� �
                           /� double
     Th� �floa� �valu� i� frad� i� automaticall� converte� �t� �� �
doubl� valu� befor� i� hande� t� th� cos(� method.
     Th� �cod� �belo� �generate� � compile� �erro� �because� �th� �
metho� elementAt(� i� expectin� a� intege� argument.
1� doubl� � � 12.0;
2� Objec� o� � myVector.elementAt(d)�  /� myVecto� i� � Vector.

[4.c� Arithmeti� Promotion:
---------------------------
Arithmeti� ��promotio� �conversion� �happe� ��withi� ��arithmeti� �
statements� �whil� �th� compile� i� tryin� t� mak� sens� �ou� �o� �
man� differen� possibl� kind� o� operand.
     Conside� th� followin� fragment:
1� shor� � � 9;
2� in� � � 10;
3� floa� � � 11.1f;
4� doubl� � � 12.2;
5� if(++� � � >� f/d)
6�    System.out.println(">>>");
7� else
8�    System.out.println("<<<");

     Th� �rule� �tha� �gover� �arithmeti� �promotio� �distinguis� �
betwee� �unary(+�-,++��-,~� �an� �binar� �(+�-,*,/,%,^,>>,>>>,<<� �
operators.
.pa�     Fo� unar� operators� tw� rule� apply� dependin� o� th� �typ� �
o� th� singl� operand.
  i� �I� �th� �operan� �i� � byte� � short� �o� �� �char� �i� �i� �
converte� t� a� int.
  ii� �Els� �i� �th� �operan� i� o� an� othe� �type� �i� �i� �no� �
converted.

     Fo� binar� operators� ther� ar� fou� rules� dependin� o� th� �
type� o� th� tw� operand.
     i� �I� on� o� th� operand� i� double� th� othe� �operan� �i� �
converte� t� � double.
     ii� Els� i� on� o� th� operand� i� float� th� othe� �operan� �
i� converte� t� � float.
     iii� �Els� �i� �on� o� th� operand� i� �� �long� �th� �othe� �
operan� i� converte� t� � long.
     iv� Els� bot� operand� ar� converte� t� ints.

     Wit� �thes� rule� i� mind� i� i� possibl� t� determin� �wha� �
reall� happen� i� th� cod� exampl� given:
1� Th� shor� � i� promote� t� a� in� an� the� incremented.
2� �Th� �resul� o� ste� � (a� int� i� multiplie� b� �th� �in� �i� �
Sinc� �bot� �operand� �ar� o� sam� type� an� �tha� �typ� �i� �no� �
narrowe� �tha� a� int� n� conversio� i� necessary� Th� resul� �o� �
th� multiplicatio� i� a� int.
3� Befor� dividin� floa� � b� doubl� d� � i� widene� t� � double� �
Th� conversio� generate� � double-precisio� result.
4� Th� resul� o� ste� � � a� int� i� t� b� compare� t� th� resul� �
o� �ste� � � � double)� Th� i� i� converte� t� � double� an� �th� �
tw� �ar� compared� Th� resul� o� � compariso� i� alway� �o� �typ� �
boolean.

[5� Primitive� an� Casting:
---------------------------
     Jav� i� perfectl� willin� t� perfor� widenin� conversion� o� �
primitives� �Castin� �mean� �explicitl� tellin� Jav� �t� �mak� �� �
conversion� �� �castin� �conversio� �ma� �wide� �o� �narro� ��it� �
argument� �T� cast� jus� preced� � valu� wit� �th� �parenthesize� �
nam� o� th� desire� type.
     Fo� example:
1� shor� � � 259;
2� byt� � � (byte� s;
3� System.out.println("� � � � b);
     
     Th� abov� cod� print� ou� th� valu� 3.
Th� rule� o� casting:
     i� �Yo� �ca� �cas� an� no�-boolea� typ� t� �an� �othe� �no�-�
boolea� type.
     ii� Yo� canno� cas� � boolea� t� an� othe� type� yo� �canno� �
cas� an� othe� typ� t� � boolean.

Ex� Wil� th� followin� cod� compile?
1� byt� � � 2;
2� shor� b� � 3;
3� � � � � b1;
