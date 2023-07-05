class MyDetail
{
  int id;
  String name;

  MyDetail(int id,String name)
  {
    this.id=id;//this is a refrence keyword
    this.name=name;

  }
  void display()
  {
    print("$id and $name");
  }
}
void main()
{
   var m1 = MyDetail(101,"abcd");
   m1.display();
}
