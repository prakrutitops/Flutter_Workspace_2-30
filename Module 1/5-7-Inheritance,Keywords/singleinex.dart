class A
{
     a()
    {
      print("a called");
    }
}
class B extends A  //extends classname
{
   b()
  {
    print("b called");
  }
}
void main()
{

   var b1 = B();

   b1.a();
   b1.b();
}