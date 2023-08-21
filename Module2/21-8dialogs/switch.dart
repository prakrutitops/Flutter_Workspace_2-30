import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchEx extends StatefulWidget
{
  @override
  SwitchState createState() => SwitchState();


}

class SwitchState extends State<SwitchEx>
{
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value)
  {
      if(isSwitched == false)
      {
        setState(() {
          isSwitched = true;
          textValue = 'Switch Button is ON';




        });
        print('Switch Button is ON');
      }
      else
      {
        setState(() {
          isSwitched = false;
          textValue = 'Switch Button is OFF';




        });
        print('Switch Button is OFF');
      }
  }




    @override
  Widget build(BuildContext context)
  {

      return Scaffold(

        appBar: AppBar(title: Text("Switch Ex"),),
        body: Center(

            child: Column(

                children: [

                  Transform.scale(

                    scale: 2,
                    child: Switch(
                      value: isSwitched,
                      onChanged: (bool value)
                      {

                         toggleSwitch(value);
                      },
                      activeColor: Colors.blue,
                      activeTrackColor: Colors.yellow,
                      inactiveThumbColor: Colors.redAccent,
                      inactiveTrackColor: Colors.orange,
                    ),
                  ),
                  Text('$textValue', style: TextStyle(fontSize: 20),)



                ],

            ),

        ),

      );

  }

}