// This program ducks an Exception.
// The Exception is pass to call stack

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
      System.out.println("End of main");
	}
}
