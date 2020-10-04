import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_flutter_app/screens/register_screen.dart';
import 'package:movies_flutter_app/widgets/background_with_logo.dart';
import 'package:movies_flutter_app/widgets/text_field.dart';
import '../size_config.dart';
import 'forgot_password_screen.dart';
import 'home_screen.dart';
import 'package:movies_flutter_app/style/theme.dart' as Style;

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        // resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
      child: Column(
        children: [
          background_with_logo(),
          Container(
            color: Style.Colors.mainColor,
            // decoration: BoxDecoration(
            //   boxShadow: [
            //     BoxShadow(
            //       color: Colors.black,
            //       spreadRadius: 5,
            //       blurRadius: 10,
            //       offset: Offset(0, -10), // changes position of shadow
            //     ),
            //   ],
            // ),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenHeight(50),
                vertical: getProportionateScreenHeight(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "EMAIL",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(10),
                  ),
                  TextField_Wiget(
                    hint_text: "Email here",
                    textInputType: TextInputType.emailAddress,
                    pass_or_not: false,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Text(
                    "PASSWORD",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(10),
                  ),
                  Stack(
                    children: [
                      TextField_Wiget(
                        hint_text: "Password here",
                        pass_or_not: true,
                      ),
                      Positioned(
                        top: 7,
                        right: 10,
                        child: FlatButton(
                          child: Text(
                            "FORGOT?",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 12),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotPasswordScreen(),
                                ));
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: getProportionateScreenWidth(60),
                    child: FlatButton(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: Style.Colors.secondColor,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(50),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: getProportionateScreenWidth(80),
                        height: 1,
                        color: Colors.grey,
                      ),
                      Text(
                        "Social Logins",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        width: getProportionateScreenWidth(80),
                        height: 1,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/Facebook button.svg",
                        color: Style.Colors.secondColor,
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      SvgPicture.asset(
                        "assets/icons/Google button.svg",
                        color: Style.Colors.secondColor,
                      )
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Center(
                    child: Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Center(
                    child: FlatButton(
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
