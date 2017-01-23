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
		
	