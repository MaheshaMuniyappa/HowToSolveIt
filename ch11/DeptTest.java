interface Dept
{
  void teach();
  void certify();
}

class PhyDept implements Dept
{
  public void teach()
  {
    System.out.println("Teaching Physics");
  }
  public void certify()
  {
    System.out.println("Certifying in Physics");
  }
}

class ChemDept implements Dept
{
  public void teach()
  {
    System.out.println("Teaching Chemistry");
  }
  public void certify()
  {
    System.out.println("Certifying in Chemistry");
  }
}

class DeptTest
{
  public static void main(String[] args)
  {
    Dept d;

    PhyDept pd = new PhyDept();
    ChemDept cd = new ChemDept();

    d = pd;
    d.teach();
    d.certify();
    d = cd;
    d.teach();
    d.certify();
  }
}