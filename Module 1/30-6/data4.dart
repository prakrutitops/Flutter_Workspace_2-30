class Tops
{
  int id;
  String name,surname,email,mobile;

  //parameterized
  //optinal parameter constructor
  Tops(int i,String n,[String s,String e,String m])
  {
      id = i;
      name=n;
      surname=s;
      email=e;
      mobile=m;
  }

  void show()
  {
    print("$id and $name and $surname and $email and $mobile");
  }


}

void main()
{

    var t1 = Tops(101,"a","a","a@gmail.com","1");
    var t2 = Tops(102,"b","b","b@gmail.com","2");
    var t3 = Tops(103,"c");

    t1.show();
    t2.show();
    t3.show();
}