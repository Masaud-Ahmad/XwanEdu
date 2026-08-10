import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xwanedu/constant/text_constant.dart';
import 'package:xwanedu/feature/authentication/splashscreen/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: TextConstant.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Splashscreen(),
    );
  }
}
