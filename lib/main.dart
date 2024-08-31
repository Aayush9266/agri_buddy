import 'package:agri_buddy/pages/farmer_home_page.dart';
import 'package:agri_buddy/pages/farmer_login_page.dart';
import 'package:agri_buddy/pages/home_page.dart';
import 'package:agri_buddy/pages/login_page.dart';
import 'package:agri_buddy/pages/registration.dart';
import 'package:agri_buddy/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:agri_buddy/pages/onboarding_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        textTheme: GoogleFonts.nunitoTextTheme(),
      ),
      home: const OnboardingPage(),
      routes: {
        // "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.farmerHome: (context) => FarmerLoginPage(),
        MyRoutes.registrationRoute: (context) => RegistrationPage(),
        MyRoutes.farmerhomePage: (context) => FarmerHomePage(),
      },
    );
  }
}
