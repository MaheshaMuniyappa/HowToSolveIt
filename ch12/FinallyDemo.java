class FinallyDemo
{
	static void procA()
	{

		try
		{
			System.out.println("Inside procA");
         throw new RuntimeException("demo");
         //throw new IllegalAccessException("demo");
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
		
		
		
