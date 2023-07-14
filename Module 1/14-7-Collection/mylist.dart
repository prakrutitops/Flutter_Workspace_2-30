void main()
{
  List<int> numbersList = List(5);
  try
  {
    numbersList[0]=10;
    numbersList[1]=20;
    numbersList[3]=40;
    numbersList[4]=50;

    numbersList[0]=80;
    numbersList.remove(40);
  }
  catch(e2)
  {
    print(e2);
  }

  finally
  {
    print(numbersList);
    print(numbersList[3]);

    print("-------------------");

    //for in
    /*for (int element in numbersList)
    {
      print(element);
    }*/

    //for each
   // numbersList.forEach((element) => print(element));

    //normal for loop

    for (int i = 0; i < numbersList.length; i++)
    {              // Using Index
      print(numbersList[i]);
    }

  }


}