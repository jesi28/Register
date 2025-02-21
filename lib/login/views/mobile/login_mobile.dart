import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/web.dart';
import 'package:registration/login/bloc/login_bloc.dart';

class LoginMobile extends StatefulWidget {
  const LoginMobile({super.key});

  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

final _formKey = GlobalKey<FormBuilderState>();
final log = Logger();

class _LoginMobileState extends State<LoginMobile> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) {
        if (state.status == LoginStatus.success) {
          context.go("/homepage");
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('User Created')),
          );
        }
        if (state.status == LoginStatus.failure) {
          log.e("LoginMobile::LoginStatus:Error: ${state.message}");
        }
      },
      builder: (context, state) {
        return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.close_rounded)),
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
                          onChanged: () {
                            _formKey.currentState?.save();
                            context.read<LoginBloc>().add(OnChangeFormValue(
                                _formKey.currentState!.value));
                          },
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
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 26),
                                ),
                                Text(
                                  'Enter your credentials to continue',
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
                                const SizedBox(
                                  height: 5,
                                ),
                                FormBuilderTextField(
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) =>
                                      value == null || value.isEmpty
                                          ? "Enter email"
                                          : null,
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
                                  name: 'email',
                                ),
                                FormBuilderTextField(
                                  validator: (value) => value == null ||
                                          value.length < 6
                                      ? "Password must be at least 6 characters"
                                      : null,
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
                                Text(
                                  'Forgot password?',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall
                                      ?.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                SizedBox(
                                  width: double.maxFinite,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.06,
                                  child: FilledButton(
                                    onPressed: () {
                                      if (_formKey.currentState?.validate() ==
                                          true) {
                                        context
                                            .read<LoginBloc>()
                                            .add(SubmitLogin());
                                      }
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
                                                color: Colors.grey,
                                                fontSize: 16),
                                          ),
                                          Text(
                                            " Register",
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
                      )),
                )
              ],
            ));
      },
    );
  }
}
