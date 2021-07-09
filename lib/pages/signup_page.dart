import 'package:flutter/material.dart';
import 'package:flutterlogindesign/widgets/btn_widget.dart';
import 'package:flutterlogindesign/widgets/Headdersignup.dart';

class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer1("Sign Up"),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(hint: "Email", icon: Icons.person),
                    _textInput(hint: "Password", icon: Icons.lock),
                    _textInput(
                        hint: "Phone Number",
                        icon: Icons.phone_android_outlined),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          btnText: "SIGN UP",
                          onClick: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(color: Colors.black45)),
                        TextSpan(
                            text: "Sign In",
                            style: TextStyle(
                              color: Colors.black54,
                              decoration: TextDecoration.underline,
                            )),
                      ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: new UnderlineInputBorder(
            borderSide: new BorderSide(),
          ),
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
