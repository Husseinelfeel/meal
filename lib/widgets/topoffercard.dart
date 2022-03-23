
import 'package:flutter/material.dart';

class topoffercard extends StatelessWidget {
  const topoffercard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,

      child: Column(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image:  AssetImage(
                          'images/food2.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'pasta with Ham',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Text(
                      'it\'s an italian food',
                      style: TextStyle(
                          color: Colors.grey),
                    ),
                    Text(
                      '25\$',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.indigo),
                    ),

                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(),
          ),
        ],
      ),
    );



  }
}


