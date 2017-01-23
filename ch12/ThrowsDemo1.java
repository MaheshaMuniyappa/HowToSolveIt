// This program ducks an Exception.
// The Exception is pass to call stack

class ThrowsDemo1
{
	static void throwOne() throws IllegalAccessException
	{
		System.out.println("Inside throwOne.");
		throw new IllegalAccessException("demo");
	}
	public static void main(String args[]) throws IllegalAccessException
	{
		throwOne();
                System.out.println("End of main");
	}
}
