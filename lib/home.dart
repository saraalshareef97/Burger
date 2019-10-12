import 'package:flutter/material.dart';
import 'package:splash/Login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.darken),
              fit: BoxFit.cover,
              image: ExactAssetImage('images/background-image.png')),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 50),
        alignment: Alignment.topCenter,
        child: Image.asset('images/Component 7 – 1.png'),
      ),
      Container(
          margin: EdgeInsets.fromLTRB(30, 450, 0, 0),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "World's ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Greates ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Burgers. ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 35,
              ),
            ],
          )),
      Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.fromLTRB(35, 0, 35, 100),
          child: SizedBox(
            width: double.infinity,
            height: 60,
            child: RaisedButton(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5.0),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => LogIn()));
              },
              color: Colors.yellow[600],
              textColor: Colors.white,
              child: Text('Get Start here'),
            ),
          )),
    ])));
  }
}
