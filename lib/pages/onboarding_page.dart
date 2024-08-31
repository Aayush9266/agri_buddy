import 'package:agri_buddy/pages/farmer_login_page.dart';
import 'package:agri_buddy/pages/login_page.dart';
import 'package:agri_buddy/pages/registration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 380),
                child: Image.asset('assets/onboarding1.png'),
              ),
              const Spacer(),
              Text('Welcome to AgriBuddy ',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold)),
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  "Bridging the Gap: Connecting Farmers Directly to Consumers for Fair Prices and Fresh Produce.",
                  textAlign: TextAlign.center,
                ),
              ),
              /**/
              FilledButton.tonalIcon(
                onPressed: () {
                  Navigator.of(context).pushReplacement(CupertinoPageRoute(
                      builder: (context) => const LoginPage()));
                },
                icon: const Icon(IconlyLight.login),
                label: const Text("Buyer Login"),
              ),
              SizedBox(
                height: 20,
              ),
              FilledButton.tonalIcon(
                onPressed: () {
                  Navigator.of(context).pushReplacement(CupertinoPageRoute(
                      builder: (context) => const FarmerLoginPage()));
                },
                icon: const Icon(IconlyLight.login),
                label: const Text("Farmer Login"),
              ),
              SizedBox(
                height: 15,
              ),
              Text("If you are a new user click below"),
              FilledButton.tonalIcon(
                onPressed: () {
                  Navigator.of(context).pushReplacement(CupertinoPageRoute(
                      builder: (context) => const RegistrationPage()));
                },
                icon: const Icon(IconlyLight.login),
                label: const Text("Sign Up"),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
