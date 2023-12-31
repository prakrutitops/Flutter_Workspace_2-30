//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MenuEx extends StatefulWidget
{
  @override
  MenuState  createState() => MenuState();
}

class MenuState extends State<MenuEx>
{
  bool one=false;
  bool two=false;
  bool three=false;
  var total=0;
  var amount=0;
  var data="";

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Menu"),),
      body: Center(

        child: Column(

          children:
          [
            SizedBox
              (
              width: 10,
            ),

            Text('Menu',style: TextStyle(fontSize: 20.0), ),

            CheckboxListTile(
              title: Text('Pizza'),
              subtitle: Text('Rs. 100'),
              value: this.one,
              onChanged: (bool value)
              {
                  setState(() {


                    this.one = value;
                    amount+=100;
                    data+="\n Pizza @ rs.100";
                  });

              },




            ),
            CheckboxListTile(
                title: Text('Burger'),
                subtitle: Text('Rs. 70'),
                value: this.two,
              onChanged: (bool value)
              {
                setState(() {


                  this.two = value;
                  amount+=70;
                  data+="\n Burger @ rs.70";
                });

              },
            ),

            CheckboxListTile(
                title: Text('Coffee'),
                subtitle: Text('Rs. 120'),
                 value: this.three,
                onChanged: (bool value)
                {
                setState(() {


                  this.three = value;
                  amount+=120;
                  data+="\n Coffee @ rs.120";
                });

              },
            ),

            ElevatedButton(onPressed: (){

             // print("\n Bill \n $data \n Total: $amount");
              toastmsg();

            }, child: Text("Order")),

          ],
        ),
      ),

    );
  }

  void toastmsg()
  {
    Fluttertoast.showToast
      (
          msg: "\n Bill \n $data \n Total: $amount",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.yellow
      );
  }

}