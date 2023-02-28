import 'package:flutter/material.dart';
import 'package:mem_store_app/modules/Login_Module/screens/LoginScreen.dart';

import '../../../re_usable/custom_elevated_button.dart';
import '../../../re_usable/primary_InputField.dart';
import '../../../utilties/theme.dart';

class SignUpLeftSide extends StatefulWidget {
  const SignUpLeftSide({super.key});

  @override
  State<SignUpLeftSide> createState() => _SignUpLeftSideState();
}

class _SignUpLeftSideState extends State<SignUpLeftSide> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _userNameController = TextEditingController();
  final _userJobPositionController = TextEditingController();
  bool _togglePasswordVisibilty = false;
  bool _loginToggle = false;
  void navigate(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(LoginScreen.loginScreenRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
                        'Create a new account',
                        style: lightTheme.textTheme.titleLarge!.copyWith(
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Let`s get you started',
                        style: lightTheme.textTheme.titleLarge!.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w600),
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
                        controller: _userNameController,
                        hintText: 'Enter your Name',
                        cursorHeight: 20,
                        fillColor: Colors.grey.shade200,
                        keyBoardType: TextInputType.text,
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
                      primaryInputField(
                        context: context,
                        controller: _userJobPositionController,
                        hintText: 'Job position',
                        cursorHeight: 20,
                        fillColor: Colors.grey.shade200,
                        keyBoardType: TextInputType.text,
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
                            obscureText:
                                _togglePasswordVisibilty ? false : true,
                            maxLines: 1,
                            hintText: 'choose a password',
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
                        ],
                      ),
                      SizedBox(height: 50),
                      Column(
                        children: [
                          customElevatedButton(
                            onPressed: () {},
                            title: 'SignUp',
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account?',
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
                                  navigate(context);
                                },
                                onHover: (value) {
                                  setState(() {
                                    _loginToggle = value;
                                  });
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: _loginToggle
                                        ? Colors.blue.shade400
                                        : Colors.black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w300,
                                    decoration: _loginToggle
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
      ),
    );
  }
}
