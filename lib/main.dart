import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/pages/ProductPage.dart';
import 'package:login_page/pages/home.dart';


void main(){
  return runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'EncodeSansExpanded',
      accentColor: Colors.red,
      primaryColor: Colors.white
    ),
      home: login_page()));
}

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: ListView(

            //crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                height: 200,
                width: 200,
                child: Image.asset('images/food_app_logo.png'),
              ),
              
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text('HI', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),  ),
              ),Container(
                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                child:  Text('THERE', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),  )
              ),

              Container(
                padding: EdgeInsets.fromLTRB(35, 20, 35, 0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.grey)
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(35, 20, 35, 0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey)
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(100, 20, 100, 0),

                child: RaisedButton(
                  child: Text('Log in', style: TextStyle(fontSize: 18, color: Colors.white),),
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),

                  ),
                  color: Color(0xFFD2202F),
                  onPressed: (){
                    setState(() {
                      print('Button pressed');
                      Route route = MaterialPageRoute(builder: (context) => home_page());
                      Navigator.push(context, route);
                    });


                  },

                ),
              )

            ],
          ),
    );
  }
}

