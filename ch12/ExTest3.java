class ExTest3
{
  public static void main(String[] args)
  {
    int n1, n2, ans;

    try
    {
      n1 = Integer.valueOf(args[0]);
      n2 = Integer.valueOf(args[1]);
      ans = n1/n2;
      System.out.println("ANS = " + ans);
    }
    catch(ArithmeticException e)
    {
      System.out.println(e.toString());
    }
    finally
    {
      System.out.println("Doing necessary steps...");
    }
    System.out.println("Program is continuing ...");
  }
}