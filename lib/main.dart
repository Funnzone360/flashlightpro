import 'package:flutter/material.dart';
import 'package:onlight/torchlight.dart';
import 'package:torch_controller/torch_controller.dart';

void main(List<String> args) {
  TorchController().initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Torch_Controller 2.0.1",
      home: TorchLightPage(),
    );
  }
}
