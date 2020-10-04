import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_flutter_app/widgets/text_field.dart';
import 'package:movies_flutter_app/style/theme.dart' as Style;

class RegisterScreen extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: CircleAvatar(
                    backgroundColor: Style.Colors.titleColor,
                    child: SvgPicture.asset(
                      "assets/icons/user-2.svg",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ),
              Center(
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Add profile picture",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "FIRST NAME",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField_Wiget(
                hint_text: "first name here",
                textInputType: TextInputType.emailAddress,
                pass_or_not: false,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "LAST NAME",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField_Wiget(
                hint_text: "last name here",
                textInputType: TextInputType.emailAddress,
                pass_or_not: false,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "EMAIL",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
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
              SizedBox(
                height: 10,
              ),
              Text(
                "PASSWORD",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField_Wiget(
                hint_text: "password here",
                textInputType: TextInputType.emailAddress,
                pass_or_not: true,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "CONFIRM PASSWORD",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField_Wiget(
                hint_text: "confirm password here",
                textInputType: TextInputType.emailAddress,
                pass_or_not: true,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: FlatButton(
                  child: Text(
                    "REGISTER",
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
