import 'package:flutter/material.dart';
import 'package:registration/login.dart';
import 'package:registration/register.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          Positioned(
            top: -248,
            right: -300,
            child: Container(
              width: 634,
              height: 634,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(130, 113, 235, 196),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                spacing: 20.0,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.40,
                      width: MediaQuery.sizeOf(context).width * 0.90,
                      child: Image.asset(
                        'assets/stripy man.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    'Get started!',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Text(
                    'Everything starts from here!',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: MediaQuery.sizeOf(context).height * 0.05,
                    child: FilledButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: const Text(
                        'Log in',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: MediaQuery.sizeOf(context).height * 0.05,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterPage()),
                        );
                      },
                      child: Text(
                        'Register',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  Text(
                    'Or connect via',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      socialButton(context, "assets/goog.png"),
                      const SizedBox(width: 12),
                      socialButton(context, "assets/facebook.png"),
                      const SizedBox(width: 12),
                      socialButton(context, "assets/apple.png"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget socialButton(BuildContext context, String assetPath) {
  return Container(
    width: 100,
    height: 50,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.surface,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Theme.of(context).colorScheme.surfaceContainer, width: 2),
    ),
    child: Image.asset(
      assetPath,
      fit: BoxFit.contain,
      height: 24,
      width: 24,
    ),
  );
}
