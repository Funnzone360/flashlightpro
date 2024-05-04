import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class TorchLightPage extends StatefulWidget {
  const TorchLightPage({super.key});

  @override
  State<TorchLightPage> createState() => _TorchLightPageState();
}

class _TorchLightPageState extends State<TorchLightPage> {
  final controller = TorchController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Torch Light"),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: controller.isTorchActive,
            builder: (_, snapshot) {
              final snapshotData = snapshot.data ?? false;
              if (snapshot.connectionState == ConnectionState.done) {
                return Text("Is Torch On?:${snapshotData ? "yes" : "no"}");
              }
              return Container();
            },
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.amber,
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      controller.toggle(intensity: 1);
                    });
                  },
                  child: Center(child: Text("Toggle")),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
