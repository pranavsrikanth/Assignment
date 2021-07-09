import 'package:flutter/material.dart';

class HeaderContainer1 extends StatelessWidget {
  var text = "";

  HeaderContainer1(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      color: Colors.lightBlueAccent,
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
              padding: const EdgeInsets.all(15),
            ),
          ),
          Center(
            child: Image.asset("assets/logo.png"),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(35),
            ),
          ),
          Center(
            child: Text(
              "Welcome!",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              "Please fill in the following details and",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              "help us start serving you.",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(50),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                  ),
                  const VerticalDivider(
                    color: Colors.white54,
                    thickness: 5,
                    indent: 20,
                    endIndent: 0,
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
