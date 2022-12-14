import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';
import 'package:productivity_app/Values/values.dart';
import 'package:productivity_app/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:productivity_app/widgets/Forms/form_input_with%20_label.dart';
import 'package:productivity_app/widgets/Navigation/back.dart';
import 'package:productivity_app/widgets/Shapes/background_hexagon.dart';

import 'signup.dart';

class EmailAddressScreen extends StatefulWidget {
  @override
  _EmailAddressScreenState createState() => _EmailAddressScreenState();
}

class _EmailAddressScreenState extends State<EmailAddressScreen> {
  TextEditingController _emailController = new TextEditingController();
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor.fromHex("#D1D5FA"),
        body: Stack(children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: SafeArea(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    SizedBox(height: 40),
                    Text("What's your\nemail\naddress?",
                        style: GoogleFonts.lato(
                            color: HexColor.fromHex("#5C6898"),
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    AppSpaces.verticalSpace20,
                    LabelledFormInput(
                        placeholder: "Email",
                        keyboardType: "text",
                        controller: _emailController,
                        obscureText: obscureText,
                        label: "Your Email"),
                    SizedBox(height: 40),
                    Container(
                      //width: 180,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => SignUp(email: _emailController.text));
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  HexColor.fromHex("5C6898")),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(
                                          color: HexColor.fromHex("5C6898"))))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.email, color: Colors.white),
                              Text('   Continue with Email',
                                  style: GoogleFonts.lato(
                                      fontSize: 20, color: Colors.white)),
                            ],
                          )),
                    )
                  ])),
            ),
          )
        ]));
  }
}
