class Ch12Test5
{
  public static void main(String args[]) throws MyException
  {
    int a, b, c, d;
  
    try
    {
      a = Integer.parseInt(args[0]);
      b = Integer.parseInt(args[1]);
      c = a/b;
      System.out.println("quotient = " + c);
      d = Integer.parseInt(args[2]);
      compute(d);
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

  public static void compute(int a) throws MyException
  {
    if(a > 10) throw new MyException();
    else System.out.println("value = " + a);
  }
}

class MyException extends Exception
{
  public String toStrint()
  {
    return "User defined Exception"; 
  }
}