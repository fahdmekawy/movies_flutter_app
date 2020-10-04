import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_flutter_app/widgets/text_field.dart';
import 'package:movies_flutter_app/style/theme.dart' as Style;

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        title: Text(
          "BACK",
        ),
        elevation: 0,
        backgroundColor: Style.Colors.mainColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 110),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                    height: 150,
                    width: 150,
                    child: SvgPicture.asset("assets/icons/popcorn.svg")),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "FORGOT PASSWORD?",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Enter the email address you used to \ncreate your account and we will email \nyou a link to reset your password",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
              SizedBox(
                height: 60,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "EMAIL",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField_Wiget(
                hint_text: "email here",
                textInputType: TextInputType.emailAddress,
                pass_or_not: false,
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: FlatButton(
                  child: Text(
                    "SEND EMAIL",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Style.Colors.secondColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
