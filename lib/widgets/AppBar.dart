import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
    @required this.greenColor,
  }) : super(key: key);

  final Color greenColor;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      //color: greenColor,
      width: double.infinity,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: BorderRadius.zero
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'MedRem',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w800,
                  fontSize: deviceWidth * .085,
                  letterSpacing: 2
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(width: 10,),
              Icon(
                Icons.notifications,
                size: deviceWidth * .085,
                color: Colors.white,
                ),
            ],
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
