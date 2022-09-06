import 'package:cblaze/screens/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Obx(() {
        return Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  _controller.name.value,
                  style: const TextStyle(fontSize: 16.0),
                )
              ],
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              _controller.dob.value,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              _controller.phone.value,
              style: const TextStyle(fontSize: 16.0),
            )
          ],
        ));
      }),
    );
  }
}
