import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal/widgets/cardwidgets.dart';
import 'package:meal/widgets/popularfood.dart';
import 'package:meal/widgets/search.dart';
import 'package:meal/widgets/text.dart';
import 'package:meal/widgets/topoffercard.dart';
import 'package:meal/screens/food details page.dart';
class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}

List icons = [
  Icons.fastfood,
  Icons.image,
  Icons.access_alarm,
  Icons.zoom_out_map,
  Icons.web_asset,
];
List text = ['elfeel', 'hussein', 'pasta', 'pizza', 'food'];

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f5f9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                textwidgets(fontsize: 30, title: 'Explore'),
                searchbar(),
                Container(
                     height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: text.length,
                        itemBuilder: (context, index) {
                          return cards(
                            icon: icons[index],
                            title: text[index],
                          );
                        })),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                  child: textwidgets(fontsize: 20, title: 'poular food'),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return popularfood();
                            })),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, bottom: 10.0),
                      child: textwidgets(fontsize: 20, title: ' Top offers'),
                    ),
                    Container(
                      height: 200,

                      child: ListView.builder(itemCount: 20,
                          itemBuilder: (context,index){
                            return topoffercard();

                      }),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
}
