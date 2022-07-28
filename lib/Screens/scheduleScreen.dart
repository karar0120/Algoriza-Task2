import 'package:flutter/material.dart';

import '../Constant/constant.dart';
import '../Widgets/customIconButton.dart';
import '../shared/Component/scheduleWidget.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule'),
        leading: CustomIconButton(
          onTap: () {
            NavigatePop(context: context);
          },
          Widgeticon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: const ScheduleWidget(),
    );
  }
}
