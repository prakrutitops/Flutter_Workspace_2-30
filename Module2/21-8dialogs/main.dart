//@dart=2.9
import 'package:alertex/selectionex.dart';
import 'package:alertex/switch.dart';
import 'package:alertex/txtalert.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(

      home:MyApp4()
    );
  }

}
enum GenderSelect {Male,Female}

class MyApp2 extends StatefulWidget
{
  @override
  MyApp2State createState() => MyApp2State();
}

class MyApp2State extends State<MyApp2>
{

  GenderSelect _gender = GenderSelect.Male;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

        appBar: AppBar(title: Text("RadioButton"),),
        body: Column(

          children: [

              ListTile(

                  title: const Text('Male'),
                  leading: Radio(value: GenderSelect.Male, groupValue: _gender,
                    onChanged: (GenderSelect value) {

                      setState(() {
                        _gender = value;

                      });

                  },

                  ),

              ),
            ListTile(

            title: const Text('Female'),
            leading: Radio(value: GenderSelect.Female, groupValue: _gender,
              onChanged: (GenderSelect value) {

                setState(() {
                  _gender = value;

                });
            },

            ),

          )



          ],

        ),

    );
  }

}