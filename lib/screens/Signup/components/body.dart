import 'package:flutter/material.dart';
import 'package:happypaw_app/screens/Login/login_screen.dart';
import 'package:happypaw_app/screens/Signup/components/background.dart';
import 'package:happypaw_app/screens/Signup/components/or_divider.dart';
import 'package:happypaw_app/screens/Signup/components/social_icon.dart';
import 'package:happypaw_app/components/already_have_an_account_acheck.dart';
import 'package:happypaw_app/components/rounded_button.dart';
import 'package:happypaw_app/components/rounded_input_field.dart';
import 'package:happypaw_app/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "REGÍSTRATE",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup_icon.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Tu correo",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "REGÍSTRATE",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
