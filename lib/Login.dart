import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:splash/Navigation.dart';
import 'package:splash/forgetPass.dart';

class LogIn extends StatelessWidget {
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
                  'Welcome!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Log in to continue Burger road',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
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
                      hintText: 'Email Address',
                      icon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.fromLTRB(25, 460, 40, 0),
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
                      hintText: 'Password',
                      icon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(30, 540, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(children: [
                    Icon(
                      Icons.radio_button_unchecked,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text('Remeber me', style: TextStyle(color: Colors.white))
                  ]),
                  Container(
                      child: Text.rich(TextSpan(
                          text: 'forget password?',
                          style: TextStyle(color: Colors.white),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPass()));
                            }))),
                ],
              )),
          Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.fromLTRB(30, 0, 35, 170),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                    //side: BorderSide(color: Colors.red)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BottomNavigationBarController()));
                  },
                  color: Colors.yellow[600],
                  textColor: Colors.white,
                  child: Text('Log in'),
                ),
              )),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 80),
            child: Text(
              'New user? Sign Up',
              style: TextStyle(color: Colors.yellow[400]),
            ),
          ),
          Container(
              //alignment: Alignment.bottomCenter,
              margin: EdgeInsets.fromLTRB(20, 750, 20, 10),
              child: Column(
                children: <Widget>[
                  Text(
                    'By signing up you indecate that you have read and ',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'agreed to the terms of srvice.',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ))
        ],
      ),
    ));
  }
}
