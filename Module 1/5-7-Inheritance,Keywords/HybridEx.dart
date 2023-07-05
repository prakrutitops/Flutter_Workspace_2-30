class G
{
  g()
  {
    print("g called");
  }
}
class H extends G
{
  h()
  {
    print("h called");
  }
}
abstract class K
{
  k();

}
abstract class W
{
  w();

}
class L extends H implements K,W
{
  l()
  {
    print("L called");
  }

  @override
  k()
  {
    print("K Called");
  }

  @override
  w()
  {
    print("W Called");
  }
}
void main()
{
  var l1 = L();
  l1.k();
  l1.l();
  l1.w();
  l1.h();
  l1.g();
}