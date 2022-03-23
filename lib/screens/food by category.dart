import 'package:flutter/material.dart';
import 'package:meal/widgets/text.dart';
import 'package:meal/widgets/topoffercard.dart';
class foodcategeory extends StatefulWidget {
  @override
  final String title;
  foodcategeory(@required this.title);



  _foodcategeoryState createState() => _foodcategeoryState();
}

class _foodcategeoryState extends State<foodcategeory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            textwidgets(fontsize: 20, title: widget.title+ ' foods'),
            SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height*0.79,
                child: ListView.builder(itemCount: 5,
                    itemBuilder: (context,index ){

                 return topoffercard();

                }),
              ),
            )
          ],
        ),
      ),

    );
  }
}
