import 'dart:io';

void main()
{
  int i,j,space;

  for(i=1;i<=5;i++)
  {
    for(space=0;space !=(5-i);space++)
    {
      //print(" ");
      stdout.write(" ");
    }

    for (j=5 ;j>space;j--)
    {
      //print("*");
      stdout.write(j);
    }
    stdout.writeln("");

  }
}