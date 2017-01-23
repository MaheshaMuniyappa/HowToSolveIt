class ExTest2
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
    System.out.println("Program is continuing ...");
  }
}