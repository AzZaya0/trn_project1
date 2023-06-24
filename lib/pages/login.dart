import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:trn_project1/Elements/FrameGrad.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
      builder: (context, Constraints) => Column(children: [
        //<=---------------passing the patameters 2 double and 1 widget -------------=>
        Mygraient(
          myheight: Constraints.maxHeight,
          mywidth: Constraints.maxWidth,
          wedg: Center(
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 6,
                        blurRadius: 7,
                        offset: Offset(7, 13))
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(31.0)),
              height: Constraints.maxHeight * 0.65,
              width: Constraints.maxWidth * 0.8,
              child: Column(
                // this is inside the shadowed box
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(40.0)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 53,
                          width: 154,
                          decoration: BoxDecoration(
                              color: Color(0xffFEEEEE),
                              borderRadius: BorderRadius.circular(40.0)),
                          child: Text(
                            'Login',
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
