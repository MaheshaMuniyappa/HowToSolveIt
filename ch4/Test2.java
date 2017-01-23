class Test2
{
  public static void main(String[] args)
  {
    float sum = 0.0f;
    for(int i = 0; i < args.length; i++) 
        sum += Float.valueOf(args[i]).floatValue();
    System.out.println("SUM = " + sum);
  }
}