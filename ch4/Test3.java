class Test3
{
  public static void main(String[] args)
  {
    float ans = 0.0f, v1 , v2;
    
    v1 = Float.valueOf(args[1]).floatValue();
    v2 = Float.valueOf(args[2]).floatValue();

    if(args[0].equals("ADD")) ans = v1 + v2; 
    else if(args[0].equals("SUB")) ans = v1 - v2;
    else if(args[0].equals("MUL")) ans = v1 * v2;
    else if(args[0].equals("DIV")) ans = v1 / v2;

    System.out.println("ANS = " + ans);
  }
}