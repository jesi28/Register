import 'package:flutter/material.dart';
import 'package:registration/login.dart';
import 'package:registration/register.dart';

class OnBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: -248,
            right: -300,
            child: Container(
              width: 634,
              height: 634,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(130, 113, 235, 196),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 332,
                    width: 332,
                    child: Image.asset(
                      'assets/stripy man.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(right: 225),
                    child: Text(
                      'Get started!',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF169C89)),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(right: 150),
                    child: Text(
                      'Everything starts from here!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF999999),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Color(0xFF169C89),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text('Register'),
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      side: BorderSide(color: Color(0xFF169C89)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Or connect via',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      socialButton("assets/goog.png"),
                      const SizedBox(width: 12),
                      socialButton("assets/facebook.png"),
                      const SizedBox(width: 12),
                      socialButton("assets/apple.png"),
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

Widget socialButton(String assetPath) {
  return Container(
    width: 100,
    height: 50,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200, width: 2)),
    child: Image.asset(
      assetPath,
      fit: BoxFit.contain,
      height: 24,
      width: 24,
    ),
  );
}
