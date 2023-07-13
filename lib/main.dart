import 'package:chat_gpt/constants/constants.dart';
import 'package:chat_gpt/screens/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         scaffoldBackgroundColor: scaffoldBackGround,
         appBarTheme: AppBarTheme(
           color: cardColor,
           elevation: 2,
      )
      ),
      home: const ChatScreen(),
    );
  }
}
