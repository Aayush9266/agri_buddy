import 'dart:ui';

import 'package:agri_buddy/data/services.dart';
import 'package:agri_buddy/pages/message_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
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
                          builder: (context) => const MessagePage()));
                    },
                    child: Text("Farmer 1",
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
                          builder: (context) => const MessagePage()));
                    },
                    child: Text("Farmer 2",
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
                          builder: (context) => const MessagePage()));
                    },
                    child: Text("Farmer 3",
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
          SizedBox(height: 400,),
          Container(

            //alignment: AlignmentDirectional(100, 100),
            child: Row(
              children: [
                Expanded(
                  flex : 3,
                  child: SizedBox(width: 100
                    ,),
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: (){

                    },
                    child: CircleAvatar(
                    
                       radius: 35,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Icon(Icons.message ,
                              size: 40,),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("New Chat",
                              style: TextStyle(
                                fontSize: 8,
                              ),),
                            )
                          ],
                        ),
                    
                      foregroundColor: Colors.green,
                    
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
