interface Share
{
  int YES = 1;
  int NO = 0;
}
class Ask implements Share
{
  public static int question()
  {
    int r = (int)(Math.random() * 100);
    if(r < 50) return YES;
    return NO;
  }
}
class Reply implements Share
{
  public static void answer(int q)
  {
    if(q == YES) System.out.println("Answer is YES ...");
    else if(q == NO) System.out.println("Answer is NO ...");
  }
}
public class ShareTest
{
  public static void main(String[] args)
  {
    Reply.answer(Ask.question());
    Reply.answer(Ask.question());
    Reply.answer(Ask.question());
    Reply.answer(Ask.question());
  }
}
