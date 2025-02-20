import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:registration/get_started_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isChecked = false;
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OnBoardPage()),
                    );
                  },
                  icon: const Icon(Icons.close_rounded)),
            ),
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
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 200),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/strip3.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Create account!',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 26),
                              ),
                              Text(
                                'sign up to get started',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18),
                              ),
                              const SizedBox(height: 40),
                              FormBuilderTextField(
                                decoration: InputDecoration(
                                    hintText: 'Name',
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
                                      Icons.person_2_outlined,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .outlineVariant,
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
                              const SizedBox(
                                height: 10,
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
                              const SizedBox(
                                height: 10,
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
                              const SizedBox(
                                height: 15,
                              ),
                              FormBuilderTextField(
                                decoration: InputDecoration(
                                    hintText: 'Confirm Password',
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: _isChecked,
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                        _isChecked = newValue!;
                                      });
                                    },
                                    activeColor: Colors.blue,
                                    checkColor: Colors.white,
                                  ),
                                  const Text(
                                    'By registering, you are agreeing with our ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 60),
                                child: Row(
                                  children: [
                                    Text(
                                      'Terms of use',
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
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.06,
                                child: FilledButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Register',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: BottomAppBar(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 60, bottom: 35),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Already have an account? ",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 16),
                                        ),
                                        Text(
                                          " Login",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            decoration:
                                                TextDecoration.underline,
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
                    ),
                  )),
            )
          ],
        ));
  }
}
