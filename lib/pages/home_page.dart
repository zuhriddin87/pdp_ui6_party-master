import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdpui6/animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/im_party.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.4),
              Colors.black.withOpacity(.1),
            ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              FadeAnimation(
                  1,
                  Text(
                    "Find the best parties near you.",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 50,
                        height: 1.1),
                  )),
              SizedBox(
                height: 30,
              ),
              FadeAnimation(
                  1.2,
                  Text(
                    "Let us find you a party for your interest",
                    style: TextStyle(
                        color: Colors.teal[300],
                        fontSize: 33,
                        ),
                  )),
              SizedBox(
                height: 600,
              ),

              _isLogin?

              Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow[900]
                ),
                child: Center(
                    child: Text(
                      "Start",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ):


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
                height: 55,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red
                ),
                child: Center(
                    child: Text(
                      "Google+",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
              Container(
                height: 55,
                width: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue
                ),
                child: Center(
                    child: Text(
                      "Facebook",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
              ],)

            ],


          ),
        ),
      ),
    );
  }
}
