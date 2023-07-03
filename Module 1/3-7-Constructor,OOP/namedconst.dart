class T1
{
  int id = 1;
  String name;

  //default
   /*T1()
   {

   }*/
  //Parameterized
/*  T1(int a,int b)
  {

  }*/
 //named
 T1.prakruti(this.id,this.name);
}
void main()
{

  var o1 = T1.prakruti(101, "a");
  print("${o1.id} and ${o1.name}");


}