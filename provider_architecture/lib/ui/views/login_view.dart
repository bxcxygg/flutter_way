import 'package:flutter/material.dart';

import '../../core/enums/viewstates.dart';
import '../../core/viewmodels/login_model.dart';
import '../shared/app_colors.dart';
import '../widgets/login_header.dart';
import 'base_view.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginModel>(
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginHeader(
              validationMessage: model.errorMessage,
              controller: _controller,
            ),
            model.state == ViewState.Busy
                ? CircularProgressIndicator()
                : TextButton(
                    onPressed: () async {
                      var loginSuccess = await model.login(_controller.text);
                      if (loginSuccess) {
                        Navigator.pushNamed(context, "/");
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.white),
                  )
          ],
        ),
      ),
    );
  }
}
