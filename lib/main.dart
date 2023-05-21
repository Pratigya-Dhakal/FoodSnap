import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/signup_page.dart';
import 'pages/home_page.dart';
import 'pages/welcome.dart';
import 'pages/splash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: "assets/images/foodsnaplogo1.png",
        duration: 2000,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),

        // ignore: prefer_const_constructors
        nextScreen: WelcomePage(
          title: 'WelcomePage',
        ),
      ),
      routes: {
        '/splash': (context) => const Splash(),
        '/welcome': (context) => const WelcomePage(
              title: 'Welcomepage',
            ),
        '/login_page': (context) => LoginPage(),
        '/signup_page': (context) => SignUpPage(),
        '/home_page': (context) => const MyHomepage(),
      },
    );
  }
}
