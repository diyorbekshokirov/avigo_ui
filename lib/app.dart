import 'package:avigo_ui/pages/create_account_page.dart';
import 'package:avigo_ui/pages/login_Page.dart';
import 'package:avigo_ui/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const WelcomePage(),
      routes: {
        WelcomePage.id : (context) => const WelcomePage(),
        CreateAccount.id : (context) => const CreateAccount(),
        Login.id : (context) => const Login(),
      },
    );
  }
}
