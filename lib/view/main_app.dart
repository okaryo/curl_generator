import 'package:curl_generator/view/curl_generator.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CurlGenerator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('CurlGenerator'), centerTitle: false),
        body: CurlGenerator(),
      ),
    );
  }
}
