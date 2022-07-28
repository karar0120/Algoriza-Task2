import 'package:flutter/material.dart';

import '../Constant/constant.dart';
import '../Widgets/customIconButton.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key, required this.payload}) : super(key: key);
  final String payload;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Add Task'),
          leading: CustomIconButton(
            onTap: () {
              NavigatePop(context: context);
            },
            Widgeticon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          )),
      body: Center(
        child: Text(
          payload.toString().split('|')[0],
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
