//@dart=2.9
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void main()
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(home: FirstPage());
  }


}

class FirstPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(appBar: AppBar(title: Text("Tops Technologies"),),
      body: Center
        (
          // 1. Write Some Code Text
          //child:
          //child: Text("Welcome to tops"),
          child: Column(

            children:
            [

              Image.network("https://vyasprakruti.000webhostapp.com/FlutterImages/tops.jpg",width: 250,height: 250),


            SizedBox(width: 100,height: 100),

            Image.asset("assets/a.jpg",width: 100,height: 100),

              SizedBox(width: 100,height: 100),

            ElevatedButton(
                      child: Text("Tops Technologies"),
                      onPressed: ()
                      {

                          websitelaunch();

                      },
                      ),
              SizedBox(width: 50,height: 50),

              ElevatedButton(onPressed: (){

                callnum();

              }, child: Text("Call Me")),



                  ],
                ),
              )
        );








  }

  void websitelaunch()
  {
    var url = Uri.parse("https://www.tops-int.com");
    launchUrl(url);
  }

  void callnum()
  {

    var url = Uri.parse("tel:9999999999");
    launchUrl(url);
  }

}
