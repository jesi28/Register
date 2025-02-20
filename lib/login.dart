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
                  color: Theme.of(context).colorScheme.primaryContainer,
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
                      child: Column(
                          spacing: 12,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/strip.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              'Welcome back!',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 26),
                            ),
                            Text(
                              'Enter your credentials to continue',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.outline,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            FormBuilderTextField(
                              decoration: InputDecoration(
                                  hintText: 'Email Address',
                                  filled: true,
                                  fillColor: Theme.of(context)
                                      .colorScheme
                                      .surfaceContainerLow,
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .outlineVariant),
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .outlineVariant,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(
                                          color: Color(0xFFF8F8F8))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceDim,
                                  ))),
                              name: 'mail',
                            ),
                            FormBuilderTextField(
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  filled: true,
                                  fillColor: Theme.of(context)
                                      .colorScheme
                                      .surfaceContainerLow,
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .outlineVariant),
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .outlineVariant,
                                  ),
                                  suffixIcon: Icon(
                                    Icons.remove_red_eye_outlined,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .outlineVariant,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surfaceDim,
                                      )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceDim,
                                  ))),
                              name: 'password',
                            ),
                            Text(
                              'Forgot password?',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              height: MediaQuery.sizeOf(context).height * 0.06,
                              child: FilledButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
                                  );
                                },
                                child: const Text(
                                  'Log in',
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            const Center(
                              child: Text(
                                'By logging, you are agreeing with our',
                                style: TextStyle(fontSize: 16),
                              ),
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
                                      decoration: TextDecoration.underline,
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
                                      decoration: TextDecoration.underline,
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
                                          decoration: TextDecoration.underline,
                                          color: Color(0xFF169C89),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ]),
                    ),
                  )),
            )
          ],
        ));
  }
}
