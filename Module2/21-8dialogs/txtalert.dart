import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class txtalert extends StatefulWidget
{
  @override
  txtState createState() => txtState();

}

class txtState extends State<txtalert>
{

  TextEditingController _textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Center(

      child: ElevatedButton(
        child: Text('Show Alert', style: TextStyle(fontSize: 20.0),),
        onPressed: () => _displayDialog(context),
      ),

    );



  }

  _displayDialog(BuildContext context)async
  {

          return showDialog(context: context,
              builder: (context)
              {
                return AlertDialog
                  (
                  title: Text('TextField AlertDemo'),
                  content:TextField(

                    controller: _textFieldController,
                    decoration: InputDecoration(hintText: "TextField in Dialog"),

                  ) ,
                  actions: <Widget>[
                    new ElevatedButton(
                      child: new Text('SUBMIT'),
                      onPressed: ()
                      {
                        Navigator.of(context).pop();
                      },
                    )
                  ],


                );
                    });



        }

}