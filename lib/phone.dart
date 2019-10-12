import 'package:flutter/material.dart';

class Phone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.darken),
              image: ExactAssetImage('images/bg.png'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            alignment: Alignment.topCenter,
            child: Image.asset('images/Component 7 – 1.png'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 265, 0, 0),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Text(
                  'Forget Password',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Text(
                    'A text message with a 4-digit verification code was just sent to *** *** **78',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.fromLTRB(25, 380, 40, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Mobile number',
                      icon: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(30, 200, 30, 0),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                    //side: BorderSide(color: Colors.red)),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Phone()));
                  },
                  color: Colors.yellow[600],
                  textColor: Colors.white,
                  child: Text('Proceed'),
                ),
              )),
        ],
      ),
    ));
  }
}
