import 'package:flutter/material.dart';

class WeatherAppHome extends StatelessWidget {

//  static final myColor = const Color(0x343434);
  final _cityData = new Container(
    child: new Column(
      children: <Widget>[
        Text("Newyork",
          style: TextStyle(
            fontWeight: FontWeight.w100,
            letterSpacing: 0.5,
            fontSize: 50.0
          ) ,
        ),
        SizedBox(height: 10.0,),
        Text("Today",
          style: TextStyle(
            fontFamily: 'Montserrat_Thin',
            fontWeight: FontWeight.w700,
            fontSize: 30.0
          ),
        ),
        SizedBox(height: 6.0,),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Noon",
                style: TextStyle(
                  fontFamily: 'Montserrat_Thin',
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0
                ),
              ),
              Icon(Icons.keyboard_arrow_down,
                color: Colors.black87,
                size: 12.0,
              )
            ],
          ),
        )
      ],
    ),
  );

  final _tempData = new Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(IconData(0xe142, fontFamily: 'typicons'),
          color: Colors.black,
          size: 120.0,
        ),
        SizedBox(width: 20.0,),
        Column(
          children: <Widget>[
            Text("84°C",
              style: TextStyle(
                fontSize: 55.0,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text("Mostly Sunny",
              style: TextStyle(
                fontSize: 18.0
              ),
            ),
          ],
        )
      ]
    ),
  );

  static getItem(IconData iconData, int value, String measure){
    return new Column(
      children: <Widget>[
        Icon(iconData, color: Colors.black87, size: 28.0,),
        SizedBox(height: 4.0,),
        Text('$value', style: TextStyle(
            fontSize: 20.0,
            color: Colors.black87,
            fontWeight: FontWeight.w300
        ),
        ),
        Text('$measure',
          style: TextStyle(
              fontSize: 12.0,
              color: Colors.black87,
              fontWeight: FontWeight.w300
          ),
        )
      ],
    );
  }

  final _additionalData = new Container(
    child: new Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        getItem(IconData(0xe144, fontFamily: 'typicons'), 5, "km/hr"),
        getItem(IconData(0xe13c, fontFamily: 'typicons'), 3, "%"),
        getItem(IconData(0xe13f, fontFamily: 'typicons'), 20, "%"),
      ],
    ),
  );

  _weatherBody() {
    return new Center(
      child: new Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _cityData,
          _tempData,
          _additionalData
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: _weatherBody(),
      drawer: Drawer(),
    );
  }

}


