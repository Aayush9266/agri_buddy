import 'package:agri_buddy/pages/farmer_home_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class FarmerMessageBox extends StatelessWidget {
  const FarmerMessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatPage(),
    );
  }
}

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<String> _messages = []; // List to hold messages
  final TextEditingController _controller =
  TextEditingController(); // Controller for the text field

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _messages.add(text); // Add the new message to the list
        _controller.clear(); // Clear the text field
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade400 ,
        elevation: 0,
        toolbarHeight: 70,
        title: Row(
          children: [
            BackButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const FarmerHomePage(initialPageIndex: 1),
                    ),
                        (Route<dynamic> route) => false,
                  );
                }

            ),
            // IconButton(
            //   icon: Icon(Icons.arrow_back_ios),
            //   onPressed: () {
            //     Navigator.of(context).pushReplacement(CupertinoPageRoute(
            //         builder: (context) => const HomePage()));
            //   },
            // ),
            CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/pfp.png")
            ),
            SizedBox(width: 10),
            Text(
              "Customer's Name",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return Align(
                  alignment:
                  Alignment.centerRight, // Align all messages to the right
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.green.shade700, // Color for all messages
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      message,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}