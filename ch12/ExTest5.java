class ExTest5
{
  public static void main(String[] args)
  {
    int n1, n2, ans;

    try
    {
      n1 = Integer.valueOf(args[0]);
      n2 = Integer.valueOf(args[1]);
      if(n1 > 10000) throw new Exception();
      ans = n1/n2;
      System.out.println("ANS = " + ans);
    }
    catch(ArrayIndexOutOfBoundsException e)
    {
      System.out.println("INDEX CROOSED the BOUNDS");
    }
    catch(ArithmeticException e)
    {
      System.out.println("DIV BY ZERO");
      System.out.println(e.toString());
    }
    catch(Exception e)
    {
      System.out.println("TOO BIG NUMERATOR");
    }
    finally
    {
      System.out.println("Doing necessary steps...");
    }
    System.out.println("Program is continuing ...");
  }
}