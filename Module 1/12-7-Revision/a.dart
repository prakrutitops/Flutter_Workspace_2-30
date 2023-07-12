/*
int getLength(String str)
{
  int count = 0;

  for (int i = 0; i <str.length; i++)
  {
    count++;
  }
  return count;
}

void main()
{
  String myString = 'tops';
  int length = getLength(myString);
  print('Length of the string: $length');
}*/

void main()
{
  String str = "Hello";
  int length = 0;

  /*for (var char in str.runes)
  {
    length++;
  }*/

  for(var a in str.runes)
  {
    length++;
  }

  print(length);
}
 // Output: 13