import 'package:flutter/material.dart';

import '../Constant/constant.dart';
import '../Screens/createTaskScreen.dart';


class CustomAppBar extends StatelessWidget {
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  final Title;
  final bool isFirst;
  // ignore: non_constant_identifier_names
  const CustomAppBar({Key? key, required this.Title, this.isFirst = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("$Title"),
      leading: isFirst
          ? null
          : IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
              onPressed: () {
                NavigatePop(context: context);
              },
            ),
      actions: [
        isFirst
            ? IconButton(
                onPressed: () {},
                icon: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    NavigateTo(
                      context: context,
                      router: CreateTaskScreen(),
                    );
                  },
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
