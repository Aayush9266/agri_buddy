import 'dart:ui';


import 'package:agri_buddy/pages/farmer_message_box.dart';
import 'package:agri_buddy/pages/message_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class FarmerChatBox extends StatefulWidget {
  const FarmerChatBox({super.key});

  @override
  State<FarmerChatBox> createState() => _FarmerChatBoxState();
}

class _FarmerChatBoxState extends State<FarmerChatBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 70,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: CircleAvatar(
                      foregroundImage: AssetImage("assets/pfp.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(CupertinoPageRoute(
                            builder: (context) => const FarmerMessageBox()));
                      },
                      child: Text("Customer 1",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                    ),
                  )

                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 70,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: CircleAvatar(
                      foregroundImage: AssetImage("assets/pfp.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(CupertinoPageRoute(
                            builder: (context) => const FarmerMessageBox()));
                      },
                      child: Text("Cusomer 2",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                    ),
                  )

                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              height: 70,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: CircleAvatar(
                      foregroundImage: AssetImage("assets/pfp.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextButton(
                      onPressed: (){
                        Navigator.of(context).pushReplacement(CupertinoPageRoute(
                            builder: (context) => const FarmerMessageBox()));
                      },
                      child: Text("Customer 3",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),),
                    ),
                  )

                ],
              ),
            ),


          ],
        )
    );
  }
}
