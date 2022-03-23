
import 'package:flutter/material.dart';
import 'package:meal/screens/food%20by%20category.dart';

class cards extends StatelessWidget {
  const cards({
    Key key,
    @required this.icon,
    @required this. title,





  }) : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>foodcategeory(title)));

      },

      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0,left: 8.0),
            child: Container(height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(icon,color: Colors.indigo,size: 30,),
            ),
          ),
          Text(title),
        ],
      ),
    );
  }
}