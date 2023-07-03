/*
Return_type fun_name(parameters)
{

  value return
}

*/


// 1. with para with return type
int addition(int a,int b)
{
    return a+b;
}

// 2. with para without return type
 addition2(int a,int b)
{
  var c =a+b;
  print(c);
}
//3. with return type and without para
addition3()
{
  var a = 6;
  var b = 5;
  var c =a+b;


  return c;
}
//4. without para without return type

addition4()
{
  var a = 6;
  var b = 5;
  var c =a+b;
  print(c);
}
void main()
{
  print("------------1------------");
    //1.
    print(addition(6, 5));
    print(addition(5, 5));
    print(addition(4, 5));
    print(addition(6, 4));
    print(addition(8, 2));

    print("------------2------------");
    //2.
    addition2(6, 5);
    addition2(5, 5);
    addition2(4, 5);
    addition2(6, 4);
    addition2(8, 2);

  print("------------3------------");

  //3.
  print(addition3());

  print("------------4------------");

  addition4();

}