import "package:flutter/material.dart";
import "package:software_engineering_project/screens/main.dart";
import "package:software_engineering_project/screens/logo.dart";
import "package:software_engineering_project/screens/login.dart";
import "package:software_engineering_project/screens/textfield.dart";
<<<<<<< Updated upstream
=======
import "package:software_engineering_project/screens/backgroundoverlay.dart";
>>>>>>> Stashed changes

class ForgotPasswordState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForgotPassword();
  }
}

class ForgotPassword extends State<ForgotPasswordState> {
  TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< Updated upstream
      appBar: AppBar(
        title: Text("Forgot password"),
        centerTitle: true,
        backgroundColor: appBarColor,
      ),
      body: ListView(children: [
        LogoImage("./assets/images/forgotpassword.png"),
        Center(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Center(child: Text("Enter your email below")),
          ),
        ),
        TextFieldState(_email, "E-mail", "Enter your e-mail", emailIcon),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text("Submit"),
                onPressed: () {
                  Navigator.pushNamed(
                      context, "/forgotPassword/codeConfirmation");
                },
                color: ButtonColor),
          ],
        )
      ]),
    );
=======
        appBar: AppBar(
          title: Text("Forgot password"),
          centerTitle: true,
          backgroundColor: appBarColor,
        ),
        body: Stack(
          children: [
            BackgroundOverlayState("./assets/images/forgotpassword.jpg"),
            ListView(children: [
              LogoImage("./assets/images/forgotpassword.png"),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Center(child: Text("Enter your email below")),
                ),
              ),
              TextFieldState(_email, "E-mail", "Enter your e-mail", emailIcon),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                      child: Text("Submit"),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, "/forgotPassword/codeConfirmation");
                      },
                      color: ButtonColor),
                ],
              )
            ]),
          ],
        ));
>>>>>>> Stashed changes
  }
}
