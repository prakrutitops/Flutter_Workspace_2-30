//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class DynamicListView extends StatefulWidget
{
  @override
  DynamicState createState() => DynamicState();


}

class DynamicState extends State<DynamicListView> {


  @override
  Widget build(BuildContext context) {
    List<Model>mobilelist = List();

    mobilelist.add(Model(
        "https://vyasprakruti.000webhostapp.com/images/mob1.png", "Mobile 1",
        "Good Camera Phone"));
    mobilelist.add(Model(
        "https://vyasprakruti.000webhostapp.com/images/mob1.png", "Mobile 2",
        "Good Music Phone"));
    mobilelist.add(Model(
        "https://vyasprakruti.000webhostapp.com/images/mob1.png", "Mobile 3",
        "Good Game Phone"));
    mobilelist.add(Model(
        "https://vyasprakruti.000webhostapp.com/images/mob1.png", "Mobile 1",
        "Good Camera Phone"));
    mobilelist.add(Model(
        "https://vyasprakruti.000webhostapp.com/images/mob1.png", "Mobile 2",
        "Good Music Phone"));
    mobilelist.add(Model(
        "https://vyasprakruti.000webhostapp.com/images/mob1.png", "Mobile 3",
        "Good Game Phone"));

    mobilelist.add(Model(
        "https://vyasprakruti.000webhostapp.com/images/mob1.png", "Mobile 1",
        "Good Camera Phone"));
    mobilelist.add(Model(
        "https://vyasprakruti.000webhostapp.com/images/mob1.png", "Mobile 2",
        "Good Music Phone"));
    mobilelist.add(Model(
        "https://vyasprakruti.000webhostapp.com/images/mob1.png", "Mobile 3",
        "Good Game Phone"));
    mobilelist.add(Model(
        "https://vyasprakruti.000webhostapp.com/images/mob1.png", "Mobile 1",
        "Good Camera Phone"));
    mobilelist.add(Model(
        "https://vyasprakruti.000webhostapp.com/images/mob1.png", "Mobile 2",
        "Good Music Phone"));
    mobilelist.add(Model(
        "https://vyasprakruti.000webhostapp.com/images/mob1.png", "Mobile 3",
        "Good Game Phone"));

    return Scaffold(

        appBar: AppBar(title: Text("Custom List"),),
        body: ListView.builder(

         itemCount: mobilelist == null ? 0 : mobilelist.length,
        itemBuilder: (ctx, i) {
          return ListTile
            (

              leading: Image.network(mobilelist[i].image,width: 100,height: 250),
              title: Text(mobilelist[i].name),
              subtitle: Text(mobilelist[i].des));
        }
      )


    );

    return ListView.builder(

        itemCount: mobilelist == null ? 0 : mobilelist.length,
        itemBuilder: (ctx, i) {
          return ListTile
            (

              leading: Image.network(mobilelist[i].image),
              title: Text(mobilelist[i].name),
              subtitle: Text(mobilelist[i].des));
        }
    );
  }
}

         // onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Details(list:list,index:i)
         // )));



   /* ListView listView = ListView.separated(
            itemCount: mobilelist.length,
            itemBuilder: (BuildContext context, int index)
            {
              return Container(

                  height: 300,
                  child: Row(


                    mainAxisSize: MainAxisSize.max,
                    children: [
                            Flexible(child: Column(

                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:
                              [
                                Container
                                (
                                  child: Image.network(mobilelist[index].image,width: 250,height: 250),


                                ),
                              // SizedBox(width: 50,height: 50),
                               Container
                                 (
                                    child: Text(mobilelist[index].name)
                                 ),




                               *//* Container(

                                    child: Image.network(mobilelist[index].image,width: 100,height: 100),
                                  // decoration: BoxDecoration(),
                                  margin: EdgeInsets.only(right: 300),


                                ),
                               Container(

                                 child(
                                 Text(mobilelist[index].name, style:
                                 TextStyle
                                   (
                                     fontSize: 50,
                                     color: Colors.blue,
                                     fontWeight: FontWeight.bold
                                 ),
                                 ),
            ),
                                 child(
                                 Text(mobilelist[index].des, style:
                                 TextStyle
                                   (
                                     fontSize: 20,
                                     color: Colors.blueAccent,
                                     fontWeight: FontWeight.bold
                                 ),
                                 ),
                               )

*//*


                              ],




                            ))





                    ],
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,



                  )




              );
            } ,
            separatorBuilder: (BuildContext context, int index) =>  Divider(),


            );
    Container listViewContainer = new Container(
      height: double.infinity,
      child: listView,
    );

    return SizedBox(
        child: Column(
          children: <Widget>[

            Flexible(
              child: listViewContainer,
              flex: 1,
            ),
          ],
        ));

*/

