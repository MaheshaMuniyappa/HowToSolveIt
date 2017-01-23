class Ch12Test4
{
  public static void main(String args[])
  {
    int a, b, c;
  
    try
    {
      a = Integer.parseInt(args[0]);
      b = Integer.parseInt(args[1]);
      c = a/b;
      System.out.println("quotient = " + c);
    }
    catch(ArithmeticException e)
    {
      System.out.println(e.toString());
    }
    catch(ArrayIndexOutOfBoundsException e)
    {
      System.out.println(e.toString());
    }
    finally
    {
      System.out.println("This is always printed.");
    }
    System.out.println("The program continues...");
  }
}
