import 'package:flutter/material.dart';
import 'package:mem_store_app/Dshboard_Layout.dart/dashboard_Layout_screen.dart';
import 'package:mem_store_app/modules/Register_Module/SignUp_Screen.dart';
import '../../../re_usable/custom_elevated_button.dart';
import '../../../re_usable/primary_InputField.dart';
import '../../../utilties/theme.dart';

class LoginLeftSide extends StatefulWidget {
  @override
  State<LoginLeftSide> createState() => _LoginLeftSideState();
}

class _LoginLeftSideState extends State<LoginLeftSide> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _togglePasswordVisibilty = false;
  bool _underlineToggle = false;
  bool _registerToggle = false;

  void navigateToRegisterScreen(BuildContext context) {
    Navigator.of(context)
        .pushReplacementNamed(SignUpScreen.registerScreenRoute);
  }

  void navigateToMainScreen(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(DashBoardScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 5),
              Text(
                'MEMPCE',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(),
          margin: EdgeInsets.only(top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 170),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back , shall we continue!',
                      style: lightTheme.textTheme.titleLarge!.copyWith(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'pls enter your credentials',
                      style: lightTheme.textTheme.titleLarge!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 170),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    primaryInputField(
                      context: context,
                      controller: _emailController,
                      hintText: 'Enter your email',
                      cursorHeight: 20,
                      fillColor: Colors.grey.shade200,
                      keyBoardType: TextInputType.emailAddress,
                      autoFocusKeyboard: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                      ),
                      focusBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ),
                    SizedBox(height: 17),
                    Column(
                      children: [
                        primaryInputField(
                          context: context,
                          controller: _passwordController,
                          obscureText: _togglePasswordVisibilty ? false : true,
                          maxLines: 1,
                          hintText: 'Enter your password',
                          cursorHeight: 20,
                          fillColor: Colors.grey.shade200,
                          keyBoardType: TextInputType.emailAddress,
                          autoFocusKeyboard: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade200,
                            ),
                          ),
                          focusBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade200,
                            ),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _togglePasswordVisibilty =
                                    !_togglePasswordVisibilty;
                              });
                            },
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            color: Colors.black,
                            icon: Icon(
                              _togglePasswordVisibilty
                                  ? Icons.visibility_sharp
                                  : Icons.visibility_off,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              onHover: (value) {
                                setState(() {
                                  _underlineToggle = value;
                                });
                              },
                              child: Text(
                                'Forgot password ?',
                                style: TextStyle(
                                  color: _underlineToggle
                                      ? Colors.blue.shade400
                                      : Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w300,
                                  decoration: _underlineToggle
                                      ? TextDecoration.underline
                                      : null,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 50),
                    Column(
                      children: [
                        customElevatedButton(
                          onPressed: () {
                            navigateToMainScreen(context);
                          },
                          title: 'Login',
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Dont have an account ?',
                              style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w300,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(width: 2),
                            TextButton(
                              onPressed: () {
                                navigateToRegisterScreen(context);
                              },
                              onHover: (value) {
                                setState(() {
                                  _registerToggle = value;
                                });
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: _registerToggle
                                      ? Colors.blue.shade400
                                      : Colors.black,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w300,
                                  decoration: _registerToggle
                                      ? TextDecoration.underline
                                      : null,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
