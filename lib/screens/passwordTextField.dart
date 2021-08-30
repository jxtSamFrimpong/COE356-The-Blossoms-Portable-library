import 'package:flutter/material.dart';

Widget passwordIcon = Icon(Icons.lock);

class PasswordFieldState extends StatefulWidget {
  final TextEditingController _passwordController;
  final String passwordHint;
  final String passwordLabel;
  final Widget passwordFieldStateIcon;

  PasswordFieldState(this._passwordController, this.passwordLabel,
      this.passwordHint, this.passwordFieldStateIcon);

  @override
  State<StatefulWidget> createState() {
    return PasswordField(_passwordController, passwordLabel, passwordHint,
        passwordFieldStateIcon);
  }
}

class PasswordField extends State<PasswordFieldState> {
  bool _obscurity = true;

  Widget passwordSufixIcon() {
    if (_obscurity == true) {
      return Icon(Icons.visibility_off);
    } else {
      return Icon(Icons.visibility);
    }
  }

  void _togglePasswordView() {
    setState(() {
      _obscurity = !_obscurity;
    });
  }

  Widget passwordFieldIcon;
  TextEditingController controler;
  String label, hint;

  PasswordField(this.controler, this.label, this.hint, this.passwordFieldIcon);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        child: TextField(
            autofocus: true,
            controller: controler,
            obscureText: _obscurity,
            decoration: InputDecoration(
              prefixIcon: passwordFieldIcon,
              suffix: InkWell(
                  onTap: _togglePasswordView, child: passwordSufixIcon()),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              labelText: label,
              hintText: hint,
            )),
      ),
    ]);
  }
}
