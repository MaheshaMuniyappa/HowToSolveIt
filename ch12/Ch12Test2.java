class Ch12Test2
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
    catch(Exception e)
    {
      System.out.println(e.toString());
    }
    System.out.println("The program continues...");
  }
}
