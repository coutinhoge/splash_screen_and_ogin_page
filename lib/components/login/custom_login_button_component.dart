import 'package:flutter/material.dart';
import 'package:splash_screen_and_ogin_page/controllers/login_controller.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtonComponent({super.key, required this.loginController});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inloader, __) => inloader
          ? CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                loginController.auth().then((result) {
                  if (result) {
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Falha ao logar'),
                        duration: const Duration(
                          seconds: 5,
                        ),
                      ),
                    );
                  }
                });
              },
              child: Text('Login'),
            ),
    );
  }
}
