import 'package:flutter/material.dart';
import 'package:agri_buddy/utils/routes.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<RegistrationPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();
  moveToNext(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        changeButton = true;
      });

      await Navigator.pushNamed(context, MyRoutes.loginRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: SingleChildScrollView(
            child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/registration_img.png",
                fit: BoxFit.cover,
                height: 300,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "username can not be empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password can not be empty";
                        } else if (value.length < 6) {
                          return "Password must contain at least 6 variables";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Confirm Password"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password can not be empty";
                        } else if (value.length < 6) {
                          return "Password must contain at least 6 variables";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Buyer Or Seller",
                          labelText: "Are you a buyer or a seller:"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "It can't be empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Material(
                      color: const Color.fromARGB(255, 3, 126, 32),
                      borderRadius:
                          BorderRadius.circular(changeButton ? 20 : 8),
                      child: InkWell(
                        onTap: () => moveToNext(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 100 : 130,
                          height: 40,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
