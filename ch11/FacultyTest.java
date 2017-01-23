class FacultyTest
{
  public static void main(String args[])
  {
    Staff s1 = new Staff();
    s1.punchIn();
    s1.work();
    s1.teach();

    NonStaff s2 = new NonStaff();
    s2.punchIn();
    s2.work();

    IFaculty if1;


    if1 = s1;
    if1.punchIn();
    if1.work();

    if1 = s2;
    if1.punchIn();
    if1.work();
    
  }
}

class Staff
  implements IFaculty
{
  public void punchIn()
  {
    System.out.println("I the staff am punching in");
  }

  public void work()
  {
    System.out.println("I the staff am working");
  }

  public void teach()
  {
    System.out.println("I the Staff am teaching");
  }
}

class NonStaff
  implements IFaculty
{
  public void punchIn()
  {
    System.out.println("I the Non Staff am punching in");
  }

  public void work()
  {
    System.out.println("I the Non Staff am working");
  }

}