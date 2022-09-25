import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
//import OneSignal
import 'package:onesignal_flutter/onesignal_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    initPlatform();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NodeJs - OneSignal"),
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
      body: const Center(child: Text("Push Notification")),
    );
  }

  Future<void> initPlatform() async {
    await OneSignal.shared.setAppId("3e32f353-ec1a-472e-b0d7-5a3502dceb1f");
    await OneSignal.shared
        .getDeviceState()
        .then((value) => {print(value?.userId)});
  }
}
