import 'package:flutter/material.dart';
import 'package:mem_store_app/Dshboard_Layout.dart/dashboard_Layout_screen.dart';
import 'package:mem_store_app/modules/Register_Module/SignUp_Screen.dart';
import 'package:mem_store_app/utilties/theme.dart';

import 'modules/Login_Module/screens/LoginScreen.dart';

void main() => runApp(const AppRoot());

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warehouse',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: LoginScreen(),
      routes: {
        SignUpScreen.registerScreenRoute: (context) => SignUpScreen(),
        LoginScreen.loginScreenRoute :(context) => LoginScreen(),
        DashBoardScreen.routeName :(context) => DashBoardScreen() ,
      },
    );
  }
}
