import 'package:algorizatodo/Bloc/cubit.dart';
import 'package:algorizatodo/shared/Component/showtask.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../Bloc/states.dart';
import '../../Widgets/myDivider.dart';
import 'addDataBar.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppStates>(
      listener: (BuildContext context, AppStates state) {},
      builder: (BuildContext context, AppStates state) {
        AppBloc cubit = AppBloc.get(context);
        return Column(
          children: [
            const AddDataBar(),
            const MyDivider(),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 25, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppBloc.get(context).scheduleDate != null
                        ? DateFormat.EEEE().format(cubit.scheduleDate!)
                        : 'Today',
                  ),
                  Text(
                    AppBloc.get(context).scheduleDate != null
                        ? DateFormat.yMMMd().format(cubit.scheduleDate!)
                        : 'Today',
                  )
                ],
              ),
            ),
            const ShowTask(),
          ],
        );
      },
    );
  }
}
