import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:productivity_app/Screens/Auth/new_workspace.dart';
import 'package:productivity_app/Values/values.dart';
import 'package:productivity_app/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:productivity_app/widgets/Forms/form_input_with%20_label.dart';
import 'package:productivity_app/widgets/Navigation/back.dart';

class Login extends StatefulWidget {
  final String email;

  const Login({Key? key, required this.email}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _passController = new TextEditingController();
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
              Text('Login', style: GoogleFonts.lato(color: HexColor.fromHex("#5C6898"), fontSize: 40, fontWeight: FontWeight.bold)),
              AppSpaces.verticalSpace20,
              RichText(
                text: TextSpan(
                  text: 'Using ',
                  style: GoogleFonts.lato(color: HexColor.fromHex("676979")),
                  children: <TextSpan>[
                    TextSpan(text: widget.email, style: TextStyle(color: HexColor.fromHex("#5C6898"), fontWeight: FontWeight.bold)),
                    TextSpan(text: " to login.", style: GoogleFonts.lato(color: HexColor.fromHex("676979"))),
                  ],
                ),
              ),
              SizedBox(height: 30),
              LabelledFormInput(
                  placeholder: "Password",
                  keyboardType: "text",
                  controller: _passController,
                  obscureText: obscureText,
                  label: "Your Password"),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => NewWorkSpace());
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
                    child: Text('Sign In', style: GoogleFonts.lato(fontSize: 20, color: Colors.white))),
              )
            ],
          )),
        ),
      )
    ]));
  }
}
