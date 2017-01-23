class MyException extends Exception
{
  String msg;

  public MyException()
  {
    msg = "UNKNOWN";
  }
  public MyException(String s)
  {
    msg = s;
  }
  public String toString()
  {
    return msg;
  }
}

class Trial
{
  public static void main(String[] args)
  {
    int a, b, c;

    try
    {
      a = Integer.parseInt(args[0]);
      b = Integer.parseInt(args[1]); 
      c = a/b;
      if(c < 0) throw new IllegalArgumentException();
       
      display(c);
    }
    catch(ArithmeticException e)
    {
      System.out.println("ERROR : " + e.toString());
    }
    catch(ArrayIndexOutOfBoundsException e)
    {
      System.out.println("ERROR : " + e.toString());
    }
    catch(IllegalArgumentException e)
    {
      System.out.println("ERROR : " + e.toString());
    }
    catch(MyException e)
    {
      System.out.println("ERROR : " + e.toString());
    }
    finally
    {
      System.out.println("This finally block is always executed...");
    }
    System.out.println("The program is continuing ...");
  }
  public static void display(int v) throws MyException
  {
    if(v > 1000) throw new MyException("TOO BIG AN ANSWER");
    System.out.println("ANS = " + v);
  }
}