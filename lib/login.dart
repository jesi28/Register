import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              top: -156,
              right: -141,
              child: Container(
                width: 412,
                height: 412,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(130, 113, 235, 196),
                ),
              ),
            ),
            Center(
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 11,
                  ),
                  child: SingleChildScrollView(
                    child: FormBuilder(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 200),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/strip.png',
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(height: 10),
                              const Padding(
                                padding: EdgeInsets.only(right: 195),
                                child: Text(
                                  'Welcome back!',
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF169C89)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 130),
                                child: Text(
                                  'Enter your credentials to continue!',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF999999),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 40),
                              FormBuilderTextField(
                                decoration: InputDecoration(
                                    hintText: 'Email Address',
                                    hintStyle: const TextStyle(
                                        color: Color(0xFFC7C7C7)),
                                    prefixIcon: const Icon(
                                      Icons.email,
                                      color: Color(0xFFB1B1B1),
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                            color: Color(0xFFF8F8F8))),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFDDDDDD)))),
                                name: 'mail',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FormBuilderTextField(
                                decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: const TextStyle(
                                        color: Color(0xFFC7C7C7)),
                                    prefixIcon: const Icon(
                                      Icons.lock_outline,
                                      color: Color(0xFFB1B1B1),
                                    ),
                                    suffixIcon: const Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                            color: Color(0xFFF8F8F8))),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFDDDDDD)))),
                                name: 'password',
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Forgot your password?',
                                  style: TextStyle(
                                      color: Color(0xFF169C89),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Log in',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(500, 55),
                                  backgroundColor: Color(0xFF169C89),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 70,
                              ),
                              const Text(
                                'By logging, you are agreeing with our',
                                style: TextStyle(fontSize: 16),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 60),
                                child: Row(
                                  children: [
                                    Text(
                                      'Terms of service',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration
                                            .underline, 
                                        color: Color(0xFF169C89), 
                                      ),
                                    ),
                                    Text(
                                      ' and ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      'Privacy Policy',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration
                                            .underline, 
                                        color: Color(0xFF169C89), 
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 100),
                                child: BottomAppBar(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 60, bottom: 30),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Dont have an account?",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 16),
                                        ),
                                        Text(
                                          " Register",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            decoration: TextDecoration
                                                .underline, 
                                            color:
                                                Color(0xFF169C89),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ]),
                      ),
                    ),
                  )),
            )
          ],
        ));
  }
}
