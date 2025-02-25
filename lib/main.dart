import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:registration/common/constants.dart';
import 'package:registration/common/ui_helper.dart';
import 'package:registration/get_started_page.dart';
import 'package:registration/grid/pluto_grid.dart';
import 'package:registration/home_page.dart';
import 'package:registration/login/views/login_page.dart';
import 'package:registration/register.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GoRouter _router = GoRouter(
    initialLocation: '/grid',
    routes: [
      GoRoute(
        path: '/onboard',
        builder: (context, state) => const OnBoardPage(),
      ),
      GoRoute(
        path: '/grid',
        builder: (context, state) => const PlutoGridExamplePage(),
      ),
      GoRoute(
        path: '/homepage',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/Register',
        builder: (context, state) => const RegisterPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
   UiHelper uiHelper = UiHelper();
    return MaterialApp.router(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 375, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      routerConfig: _router,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: uiHelper.themeData(Constants.themeConfig.LIGHT),
    );
  }
}
