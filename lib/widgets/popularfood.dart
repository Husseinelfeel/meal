import 'package:flutter/material.dart';

import 'package:meal/screens/food details page.dart';
class popularfood extends StatelessWidget {
  const popularfood({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> detailsfood  ()));


        },
        child: Container(
          width: 200,

          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0,top: 18.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                              'images/food1.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'pasta with Ham',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.grey),
                          ),

                      Row(
                        children: <Widget>[
                          Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '4.2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.indigo,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.indigo,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.indigo,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.indigo,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                                Text(
                                  '(12+)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, color: Colors.grey),

                                ),
                                SizedBox(
                                  width: 25,
                                )
                              ]),
                        ],
                      ), Row(
                        children: <Widget>[
                          Text(
                            '25\$',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.grey),
                          ),
                        ],
                      ),

                    ],
                  ),


                ],
              )
              ],
            ),
          ),
        ),
    ),
      ),
    );
  }
}