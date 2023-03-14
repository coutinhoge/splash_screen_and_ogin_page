import 'package:flutter/material.dart';
import 'package:splash_screen_and_ogin_page/components/login/custom_login_button_component.dart';
import 'package:splash_screen_and_ogin_page/widgets/custom_text_field_widget.dart';

import '../controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: MediaQuery.of(context).size.height * 0.3,
            ),
            CustomTextFieldWidget(
              onChanged: _controller.setLogin,
              label: 'login',
            ),
            CustomTextFieldWidget(
              onChanged: _controller.setPass,
              label: 'senha',
              obscureText: true,
            ),
            SizedBox(height: 15),
            CustomLoginButtonComponent(
              loginController: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
