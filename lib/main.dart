import 'package:flutter/material.dart';
// import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// import 'const_gemini.dart';
// import 'package:dash_chat_2/dash_chat_2.dart';
import 'chat_interface.dart';

void main() async {
  await dotenv.load(fileName: ".env"); // Load .env

  // Gemini.init(apiKey: GEMINI_API_KEY);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: ChatInterface()));
  }
}
