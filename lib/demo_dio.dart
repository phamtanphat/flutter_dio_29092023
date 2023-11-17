import 'package:flutter/material.dart';
import 'package:flutter_dio_29092023/demo_factory.dart';
import 'package:flutter_dio_29092023/dio_client.dart';

class DemoDio extends StatefulWidget {
  const DemoDio({super.key});

  @override
  State<DemoDio> createState() => _DemoDioState();
}

class _DemoDioState extends State<DemoDio> {

  @override
  void didUpdateWidget(covariant DemoDio oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo dio"),
      ),
      body: Container(),
    );
  }
}
