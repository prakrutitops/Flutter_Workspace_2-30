void main()
{

  var l1 = List();//list 1

  l1.add(73);    // Insert Operation
  l1.add(64);
  l1.add(21);
  l1.add(12);
  l1.add(64);
  l1.add(21);
  l1.add(12);

  List<String> countries = ["USA", "INDIA", "CHINA","USA","INDIA","CHINA"];


  for (int i = 0; i <l1.length; i++)
  {              // Using Index
    print(l1[i]);
  }


 /* for (int i = 0; i < numbersList.length; i++)
  {              // Using Index
    print(numbersList[i]);
  }*/


}